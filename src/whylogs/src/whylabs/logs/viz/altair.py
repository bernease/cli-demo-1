import altair as _alt
import pandas as pd

from whylabs.logs.viz.visualizer import ProfileVisualizer


class AltairProfileVisualizer(ProfileVisualizer):
    def __init__(self, framework):
        super().__init__(framework)
        self.renderer = 'html'

    def enable_renderer(self, renderer):
        self.renderer = renderer
        _alt.renderers.enable(renderer)

    def plot_null_series(self, variable):
        if not super()._confirm_multiple_entries():
            print("Unable to locate multiple entries for", variable,
                  "variable.",
                  "Downgrading to single version of basic plot.")
            self.plot_null(variable)

        filtered_data = []
        for prof in self.profiles:
            df_flat = prof.flat_summary()['summary']
            if len(df_flat) <= 0: continue
            df_flat.loc[:, 'date'] = prof.data_timestamp
            prof_data = df_flat[df_flat['column'] == variable]
            if len(prof_data) <= 0: continue
            filtered_data.append(prof_data)

        data = pd.concat(filtered_data)
        data.loc[:, 'chart_label'] = "null percentage"

        chart = _alt.Chart(data[['date', 'chart_label', 'count',
                                 'type_null_count']]).mark_line().encode(
                x=_alt.X('monthdate(date):T', title="date",
                         axis=_alt.Axis(format="%m-%y")),
                y=_alt.Y('y:Q', scale=_alt.Scale(zero=True), title="null %"),
                color=_alt.Color('chart_label:N', title=""),
                tooltip=_alt.Tooltip(['monthdate(date):T', 'y:Q'])
        ).transform_calculate(
                y='datum.type_null_count / datum.count * 100'
        ).properties(height=350, width=800)

        return chart

    def plot_uniqueness_series(self, variable):
        if not super()._confirm_multiple_entries():
            print("Unable to locate multiple entries for", variable,
                  "variable.",
                  "Downgrading to single version of uniqueness plot.")
            self.plot_uniqueness(variable)

        filtered_data = []
        for prof in self.profiles:
            df_flat = prof.flat_summary()['summary']
            if len(df_flat) <= 0: continue
            df_flat.loc[:, 'date'] = prof.data_timestamp
            prof_data = df_flat[df_flat['column'] == variable]
            if len(prof_data) <= 0: continue
            filtered_data.append(prof_data)

        data = pd.concat(filtered_data)
        data.loc[:, "chart_label_area"] = "estimated error"  # \u00B1
        data.loc[:, "chart_label_line"] = "estimated value"

        line = _alt.Chart(data[['date', 'chart_label_line', 'mean', 'stddev']]
                          ).mark_line(strokeWidth=2).encode(
                _alt.X('monthdate(date):T', title="date"),
                _alt.Y('mean:Q',
                       scale=_alt.Scale(zero=False), title="values"),
                _alt.Color('chart_label_line:N',
                           legend=_alt.Legend(symbolType='stroke'))
        )

        error_bars = _alt.Chart(
                data[['date', 'chart_label_area', 'mean', 'stddev']]
        ).mark_area(opacity=0.5).encode(
                x=_alt.X('monthdate(date):T', title="date",
                         axis=_alt.Axis(format="%m-%d")),
                y=_alt.Y('y:Q'),
                y2=_alt.Y2('y2:Q'),
                color=_alt.Color('chart_label_area:N',
                                 legend=_alt.Legend(symbolType='stroke')),
                tooltip=_alt.Tooltip(['monthdate(date)', 'mean', 'stddev'])
        ).transform_calculate(
                y='max(0, datum.mean + datum.stddev)',
                y2='max(0, datum.mean - datum.stddev)'
        ).properties(height=350, width=800)

        chart = _alt.layer(error_bars, line)
        return chart

    def plot_schema_series(self, variable):
        if not super()._confirm_multiple_entries():
            print("Unable to locate multiple entries for", variable,
                  "variable.",
                  "Downgrading to single version of schema plot.")
            self.plot_schema(variable)

        filtered_data = []
        for prof in self.profiles:
            df_flat = prof.flat_summary()['summary']
            if len(df_flat) <= 0: continue
            df_flat.loc[:, 'date'] = prof.data_timestamp
            prof_data = df_flat[df_flat['column'] == variable]
            if len(prof_data) <= 0: continue
            filtered_data.append(prof_data)

        data = pd.concat(filtered_data)
        data['null'] = data['type_null_count']
        data['string'] = data['type_string_count']
        data['fractional'] = data['type_fractional_count']
        data['integral'] = data['type_integral_count']
        data['boolean'] = data['type_boolean_count']
        # moving because empty categories ruin colors
        # 'type_fractional_count', 'type_integral_count', 'type_boolean_count'
        data = data[
            ['date', 'null', 'string', 'fractional', 'integral', 'boolean']]

        chart = _alt.Chart(data).mark_area().transform_fold(
                ['null', 'string', 'fractional', 'integral', 'boolean']).encode(
                x=_alt.X('monthdate(date):T', title="date",
                         axis=_alt.Axis(format="%m-%d")),
                y=_alt.Y('value:Q', title="type ratio"),
                color=_alt.Color('key:N')
        ).properties(height=350, width=800)

        return chart

    def plot_distribution_series(self, variable, type='discrete'):
        if type == 'discrete':
            if variable in self.profiles[0].flat_summary()['frequent_strings']:
                location = 'frequent_strings'
            elif variable in self.profiles[0].flat_summary()[
                'frequent_numbers']:
                print(
                    "Discrete visualizations for numeric frequencies not yet supported")
                return

            all_freq = []
            for prof in self.profiles:
                df = pd.DataFrame.from_dict(
                        prof.flat_summary()[location][variable],
                        orient='index', columns=['count'])
                df['value'] = df.index
                df = df.reset_index(drop=True)
                df['date'] = prof.data_timestamp
                all_freq.append(df)

            df_freq = pd.concat(all_freq)

            top_five_labels = list(
                    df_freq[df_freq['date'] == df_freq['date'].max()]
                    .sort_values('count', ascending=False).head(5)['value'])
            df_freq = df_freq[df_freq['value'].isin(top_five_labels)]

            chart = _alt.Chart(df_freq[['date', 'value', 'count']]).mark_bar(
                    size=15).encode(
                    x=_alt.X('monthdate(date):O', title="date",
                             axis=_alt.Axis(format="%m-%d"), bin=False),
                    y=_alt.Y('count', type='quantitative', title="count"),
                    color=_alt.Color('value:N')
            ).properties(height=350, width=800)
            return chart

        elif type == 'continuous':
            all_hists = []
            for prof in self.profiles:
                hist = prof.flat_summary()['hist'][variable]
                hist['bin_edges'] = hist['bin_edges'][:-1]
                prof_df = pd.DataFrame(hist)
                prof_df['date'] = prof.data_timestamp
                all_hists.append(prof_df)

            df_hist = pd.concat(all_hists)

            date1 = df_hist["date"].min()
            date2 = df_hist["date"].max()
            df_hist = df_hist[df_hist['date'].isin([date1, date2])]

            chart = _alt.Chart(df_hist).mark_area(
                    opacity=0.5,
                    interpolate='step-after'
            ).encode(
                    _alt.X('bin_edges:Q', bin=_alt.Bin(maxbins=80),
                           title="date"),
                    _alt.Y('sum(counts):Q', stack=False, title="count"),
                    _alt.Color('date:N')
            ).properties(height=350, width=800)

            return chart

    def plot_null(self, variable, entry='latest'):
        pass

    def plot_uniqueness(self, variable, entry='latest'):
        pass

    def plot_schema(self, variable, entry='latest'):
        pass

    def plot_distribution(self, variable, entry='latest'):
        pass
