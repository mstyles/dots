function ColorMyPencils()
    vim.g.tokyonight_transparent_sidebar = true
    vim.g.tokyonight_transparent = true
    vim.opt.background = "dark"

    vim.cmd("colorscheme tokyonight-night")

    local hl = function(thing, opts)
        vim.api.nvim_set_hl(0, thing, opts)
    end

    -- Usage extend_hl('Comment', { italic = true })
    function extend_hl(name, def)
        local current_def = vim.api.nvim_get_hl_by_name(name, true)
        local new_def = vim.tbl_extend('force', {}, current_def, def)

        vim.api.nvim_set_hl(0, name, new_def)
    end

    hl("SignColumn", {
        bg = "none",
    })

    hl("ColorColumn", {
        ctermbg = 0,
        bg = "#2B79A0",
    })

    hl("CursorLineNR", {
        bg = "None"
    })

    hl("Normal", {
        bg = "none"
    })

    hl("LineNr", {
        fg = "#5eacd3"
    })

    hl("netrwDir", {
        fg = "#5eacd3"
    })

end
ColorMyPencils()
