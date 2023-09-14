local ok, scrollbar = pcall(require, "scrollbar")
local ok_handler, gitsigns_handler = pcall(require, "scrollbar.handlers.gitsigns")

if not ok or not ok_handler then
	return
end

scrollbar.setup()
gitsigns_handler.setup()
