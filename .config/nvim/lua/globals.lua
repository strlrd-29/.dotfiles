---@param v any
---@return any
P = function(v)
  print(vim.inspect(v))
  return v
end

---@param ... string
---@return any
RELOAD = function(...)
  return require("plenary.reload").reload_module(...)
end

---@param name string
---@return unknown
R = function(name)
  RELOAD(name)
  return require(name)
end
