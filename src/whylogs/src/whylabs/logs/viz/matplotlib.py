import matplotlib.pyplot as _plt

from whylabs.logs.viz.visualizer import ProfileVisualizer


class MatplotlibProfileVisualizer(ProfileVisualizer):
    def __init__(self, framework):
        super().__init__(framework, false)
        self.renderer = 'html'

    def enable_renderer(self, renderer):
        self.renderer = renderer
        _alt.renderers.enable(renderer)