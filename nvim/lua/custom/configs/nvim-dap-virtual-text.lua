local nvim_virtual_text = require("nvim-dap-virtual-text")

nvim_virtual_text.setup({
    enable = true,
    enabled_commands = true,
    virt_text_pos = 'inline',
    show_stop_reason = true,
    commented = false,
})
