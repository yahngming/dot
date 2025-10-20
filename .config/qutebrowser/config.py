import json
import os

try:
	with open(os.path.expanduser('~/.cache/wal/colors.json'), 'r') as f:
		data = json.load(f)
	colors = data['colors']
	for i in range(16):
		globals()[f'c{i}'] = colors[f'color{i}']
except (FileNotFoundError, Exception):
	pass

c.auto_save.session = True
c.colors.completion.even.bg = c0
c.colors.completion.fg = c3
c.colors.completion.item.selected.bg = c3
c.colors.completion.item.selected.fg = c7
c.colors.completion.odd.bg = c0
c.colors.downloads.bar.bg = c0
c.colors.downloads.start.bg = c0
c.colors.downloads.stop.bg = c3
c.colors.hints.bg = c0
c.colors.hints.fg = c7
c.colors.hints.match.fg = c1
c.colors.tabs.bar.bg = c0
c.colors.tabs.even.bg = c0
c.colors.tabs.even.fg = c8
c.colors.tabs.odd.bg = c0
c.colors.tabs.odd.fg = c8
c.colors.tabs.selected.even.bg = c3
c.colors.tabs.selected.even.fg = c7
c.colors.tabs.selected.odd.bg = c3
c.colors.tabs.selected.odd.fg = c7
c.content.blocking.adblock.lists = [
	'https://easylist.to/easylist/easylist.txt',
	'https://easylist.to/easylist/easyprivacy.txt',
	'https://github.com/AdguardTeam/AdguardFilters/raw/master/ChineseFilter/sections/adservers.txt',
	'https://github.com/AdguardTeam/AdguardFilters/raw/master/ChineseFilter/sections/adservers_firstparty.txt',
	'https://github.com/AdguardTeam/AdguardFilters/raw/master/ChineseFilter/sections/allowlist.txt',
	'https://github.com/AdguardTeam/AdguardFilters/raw/master/ChineseFilter/sections/antiadblock.txt',
	'https://github.com/AdguardTeam/AdguardFilters/raw/master/ChineseFilter/sections/general_elemhide.txt',
	'https://github.com/AdguardTeam/AdguardFilters/raw/master/ChineseFilter/sections/general_extensions.txt',
	'https://github.com/AdguardTeam/AdguardFilters/raw/master/ChineseFilter/sections/general_url.txt',
	'https://github.com/AdguardTeam/AdguardFilters/raw/master/ChineseFilter/sections/replace.txt',
	'https://github.com/AdguardTeam/AdguardFilters/raw/master/ChineseFilter/sections/specific.txt',
	'https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances-cookies.txt',
	'https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances-others.txt',
	'https://github.com/uBlockOrigin/uAssets/raw/master/filters/badware.txt',
	'https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters.txt',
	'https://github.com/uBlockOrigin/uAssets/raw/master/filters/lan-block.txt',
	'https://github.com/uBlockOrigin/uAssets/raw/master/filters/privacy.txt',
	'https://github.com/uBlockOrigin/uAssets/raw/master/filters/quick-fixes.txt',
	'https://github.com/uBlockOrigin/uAssets/raw/master/filters/resource-abuse.txt',
	'https://github.com/uBlockOrigin/uAssets/raw/master/filters/ubo-link-shorteners.txt',
	'https://github.com/uBlockOrigin/uAssets/raw/master/filters/ubol-filters.txt',
	'https://github.com/uBlockOrigin/uAssets/raw/master/filters/unbreak.txt'
]
c.downloads.position = 'bottom'
c.downloads.remove_finished = 3
c.editor.command = ['editor', '{file}']
c.fileselect.handler = "external"
c.fileselect.multiple_files.command = ['explorer', '-selection-path={}']
c.fileselect.single_file.command = ['explorer', '-selection-path={}']
c.fonts.default_family = 'monospace'
c.input.insert_mode.auto_load = True
c.qt.args = [
	'enable-features=AcceleratedVideoDecodeLinuxGL,AcceleratedVideoEncoder,TouchpadOverscrollHistoryNavigation,VaapiVideoDecoder',
	'enable-gpu-rasterization',
	'enable-zero-copy',
	'ignore-gpu-blocklist',
]
c.url.searchengines = {
	'DEFAULT': 'https://duckduckgo.com/?q={}',
	'g': 'https://google.com/search?hl=en&q={}',
	'r': 'https://www.reddit.com/search?q={}',
	'w': 'https://en.wikipedia.org/wiki/{}',
	'x': 'https://twitter.com/search?q={}',
	'y': 'https://www.youtube.com/results?search_query={}',
}
c.statusbar.show = 'in-mode'
c.tabs.indicator.width = 0
c.tabs.padding = {'top': 5, 'right': 9, 'bottom': 5, 'left': 9}
c.tabs.position = 'left'
c.tabs.width = '15%'
c.window.transparent = True
config.load_autoconfig(False)
config.bind('<Alt-Left>', 'back')
config.bind('<Alt-Right>', 'forward')
config.bind('<Ctrl-A>', 'fake-key <Ctrl-A>')
config.bind('<Ctrl-F>', 'fake-key <Ctrl-F>')
config.bind('<Ctrl-X>', 'fake-key <Ctrl-X>')
