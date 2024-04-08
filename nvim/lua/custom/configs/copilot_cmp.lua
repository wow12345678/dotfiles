local copilot = require("copilot_cmp")

copilot.setup({
  event = { "InsertEnter", "LspAttach"},
  fix_pairs = true,
})


