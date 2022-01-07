local wk = require("which-key")
wk.setup{}

wk.register({

    f = {
	name = "Find",
	f = {"<cmd>Telescope find_files<cr>", "Find Files"}
    },

    l = {
	name = "LspSaga"
    },

    n = {
	name = "Format"
    },

    x = {
	name = "Trouble",
    }


},
{
    prefix = "<Leader>"
})
