import subprocess
def read_xresources(prefix):
    props = {}
    x = subprocess.run(['xrdb', '-query'], capture_output=True, check=True, text=True)
    lines = x.stdout.split('\n')
    for line in filter(lambda l : l.startswith(prefix), lines):
        prop, _, value = line.partition(':\t')
        props[prop] = value
    return props

xresources = read_xresources("*")

c.colors.statusbar.normal.bg = "#00000000"
c.colors.statusbar.command.bg = "#00000000"
# c.colors.statusbar.normal.bg = xresources["*.background"]
# c.colors.statusbar.command.bg = xresources["*.background"]
c.colors.statusbar.command.fg = xresources["*.foreground"]
c.colors.statusbar.normal.fg = xresources["*color14"]
c.colors.statusbar.passthrough.fg = xresources["*color14"]
c.colors.statusbar.url.fg = xresources["*color13"]
c.colors.statusbar.url.success.https.fg = xresources["*color13"]
c.colors.statusbar.url.hover.fg = xresources["*color12"]
# c.statusbar.show = "always"
c.colors.tabs.even.bg = "#00000000" # transparent tabs!!
c.colors.tabs.odd.bg = "#00000000"
c.colors.tabs.bar.bg = "#00000000"
# c.colors.tabs.even.bg = xresources["*.background"]
# c.colors.tabs.odd.bg = xresources["*.background"]
c.colors.tabs.even.fg = xresources["*.color0"]
c.colors.tabs.odd.fg = xresources["*.color0"]
c.colors.tabs.selected.even.bg = xresources["*.foreground"]
c.colors.tabs.selected.odd.bg = xresources["*.foreground"]
c.colors.tabs.selected.even.fg = xresources["*.background"]
c.colors.tabs.selected.odd.fg = xresources["*.background"]
c.colors.hints.bg = xresources["*.background"]
c.colors.hints.fg = xresources["*.foreground"]
c.tabs.show = "multiple"

c.colors.completion.item.selected.match.fg = xresources["*color6"]
c.colors.completion.match.fg = xresources["*color6"]

c.colors.tabs.indicator.start = xresources["*color10"]
c.colors.tabs.indicator.stop = xresources["*color8"]
c.colors.completion.odd.bg = xresources["*.background"]
c.colors.completion.even.bg = xresources["*.background"]
c.colors.completion.fg = xresources["*.foreground"]
c.colors.completion.category.bg = xresources["*.background"]
c.colors.completion.category.fg = xresources["*.foreground"]
c.colors.completion.item.selected.bg = xresources["*.background"]
c.colors.completion.item.selected.fg = xresources["*.foreground"]

c.colors.messages.info.bg = xresources["*.background"]
c.colors.messages.info.fg = xresources["*.foreground"]
c.colors.messages.error.bg = xresources["*.background"]
c.colors.messages.error.fg = xresources["*.foreground"]
c.colors.downloads.error.bg = xresources["*.background"]
c.colors.downloads.error.fg = xresources["*.foreground"]

c.colors.downloads.bar.bg = xresources["*.background"]
c.colors.downloads.start.bg = xresources["*.color10"]
c.colors.downloads.start.fg = xresources["*.foreground"]
c.colors.downloads.stop.bg = xresources["*.color8"]
c.colors.downloads.stop.fg = xresources["*.foreground"]

c.colors.tooltip.bg = xresources["*.background"]
c.colors.webpage.bg = xresources["*.background"]
c.hints.border = xresources["*.foreground"]

c.content.blocking.enabled = True
