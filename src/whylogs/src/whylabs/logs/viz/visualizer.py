class ProfileVisualizer(object):
    def __init__(self, framework='altair'):
        self.framework = framework
        self.profiles = []

    def _confirm_multiple_entries(self):
        # collect entry variable from config file or otherwise
        # check profile for multiple unique values on entry variable
        # return whether there are multiple entries (>1 -> true, else false)
        return len(self.profiles) > 1

    def _subclass_framework(self, framework='altair'):
        if framework=='altair':
            #try:
            from whylabs.logs.viz.altair import \
                        AltairProfileVisualizer
            return AltairProfileVisualizer('altair')
            #except ImportError:
            #    print("Failed to import altair package for "
            #          "AltairProfileVisualizer. Install altair to use "
            #          "whylabs.logs.viz.")

        return None

    def enable_framework(self, framework='altair'):
        return self._subclass_framework(framework)

    def set_profile(self, profile):
        self.profiles = [profile]

    def set_profiles(self, profiles):
        self.profiles = profiles


if __name__=='__main__':
    viz = ProfileVisualizer()
    viz = viz.enable_framework('altair')
    print(viz)
    print(type(viz))
    #viz.enable_renderer("mimetype")
    #viz.plot_null_series()