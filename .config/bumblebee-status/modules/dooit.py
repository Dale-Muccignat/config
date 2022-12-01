"""Short description in RST format

   please have a look at other modules, this will go into the
   documentation verbatim (list of modules)
"""
import os.path
import core.module
import core.widget

class Module(core.module.Module):
    def __init__(self, config, theme):
        super().__init__(config, theme, core.widget.Widget(self.output))

        self.__doc = os.path.expanduser(self.parameter("file","~/.local/share/dooit/todo.yaml"))
        self.__todos = self.count_items()
        core.input.register(
            self, button=core.input.LEFT_MOUSE, cmd="i3-scratchpad -t -d 50%x20% -p0,-32 -m b -abr kitty --hold sh -c dooit"
        )
    def count_items(self):
        try:
            i = 0
            with open(self.__doc) as f:
                for l in f.readlines():
                    if "- - x" in l.strip():
                        i += 1
            return i
        except Exception:
            return 0

    def output(self, widget):
        return str(self.__todos)

    def update(self):
        self.__todos = self.count_items()

    def state(self, widgets):
        if self.__todos == 0:
            return "empty"
        return "items"
# vim: tabstop=8 expandtab shiftwidth=4 softtabstop=4
