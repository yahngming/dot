c.auto_save.session = True
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
c.content.user_stylesheets = ['~/.config/qutebrowser/styles/yt.css']
c.downloads.position = 'bottom'
c.downloads.remove_finished = 3
c.editor.command = ['editor', '{file}']
c.fileselect.handler = 'external'
c.fileselect.multiple_files.command = ['picker', '-selection-path={}']
c.fileselect.single_file.command = ['picker', '-selection-path={}']
c.fonts.default_family = 'monospace'
c.input.insert_mode.auto_load = True
c.qt.args = [
	'enable-features=AcceleratedVideoDecodeLinuxGL,AcceleratedVideoEncoder,TouchpadOverscrollHistoryNavigation,VaapiVideoDecoder',
	'enable-gpu-rasterization',
	'enable-zero-copy',
	'ignore-gpu-blocklist',
	'ozone-platform-hint=auto'
]
c.statusbar.show = 'in-mode'
c.tabs.indicator.width = 0
c.tabs.padding = {'top': 5, 'right': 9, 'bottom': 5, 'left': 9}
c.tabs.position = 'left'
c.tabs.width = '15%'
c.url.searchengines = {
	'DEFAULT': 'https://duckduckgo.com/?q={}',
	'g': 'https://google.com/search?hl=en&q={}'
}
c.window.transparent = True
config.load_autoconfig(False)
config.bind('<Alt-Left>', 'back')
config.bind('<Alt-Right>', 'forward')
config.bind('<Ctrl-A>', 'fake-key <Ctrl-A>')
config.bind('<Ctrl-F>', 'fake-key <Ctrl-F>')
config.bind('<Ctrl-X>', 'fake-key <Ctrl-X>')
config.bind(';p', 'hint links spawn xdg-open {hint-url}')
config.bind('pi', 'spawn xdg-open {url}')
config.set('input.mode_override', 'passthrough', 'rmjs.rmadvanced.com')
config.source('../../.cache/wal/colors-qutebrowser.py')
