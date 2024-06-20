return {}

-- works but crappy output

-- return {
--   "huggingface/llm.nvim",
--   opts = {
--     model = "deepseek-coder:33b",
--
--     backend = "ollama",
--     url = "http://192.168.1.164:11434", -- llm-ls uses "/api/generate"
--
--     -- cf https://github.com/ollama/ollama/blob/main/docs/api.md#parameters
--     -- request_body = {
--     --   -- Modelfile options for the model you use
--     --   options = {
--     --     temperature = 0.2,
--     --     top_p = 0.95,
--     --   },
--     -- },
--   },
-- }
