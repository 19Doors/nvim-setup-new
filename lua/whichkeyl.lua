local wk = require("which-key")
wk.setup{}

wk.register({

    f = {
	name = "Files",
	f = {"<cmd>Telescope find_files<cr>", "Find Files"}
    }

},
{
    prefix = "<Leader>"
})
