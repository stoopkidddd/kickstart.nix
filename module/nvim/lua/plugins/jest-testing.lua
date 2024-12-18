local M = {}
local last_command

-- Function to run Jest for current file in a new toggleterm
function M.run_jest()
  local current_file = vim.fn.expand("%:p")
  last_command = string.format(
    "COVERAGE=true NODE_ENV=test npx jest -c=jest.config.ts --coverage --coverageDirectory=coverage/jest --detectOpenHandles %s",
    current_file
  )

  require("toggleterm").exec(last_command, 1, 0.4, vim.fn.getcwd())
end

return M
