-- ~/.config/yazi/init.lua
require("bookmarks"):setup({
	save_last_directory = false,
	persist = "none",
	desc_format = "full",
	notify = {
		enable = false,
		timeout = 1,
		message = {
			new = "New bookmark '<key>' -> '<folder>'",
			delete = "Deleted bookmark in '<key>'",
			delete_all = "Deleted all bookmarks",
		},
	},
})
