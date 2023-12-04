require("neorg").setup {
    load = {
        ["core.defaults"] = {},  -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.dirman"] = {      -- Manages Neorg workspaces
            config = {
                workspaces = {
                    notes = "~/notes",

                },
                default_workspace = "notes",
            },
        },
        ["core.qol.toc"] = {
            config = {
                close_after_use = true
            }
        },
        ["core.summary"] = {},
        ["core.ui.calendar"] = {},
    },
}
