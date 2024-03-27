local config = require("lvim-md-utils.config")
local utils = require("lvim-md-utils.utils")
local style = require("lvim-md-utils.style")
local to_do = require("lvim-md-utils.to_do")
local wrap = require("lvim-md-utils.wrap")
local follow_link = require("lvim-md-utils.follow-link")

local M = {}
M.setup = function(user_config)
	if user_config ~= nil then
		utils.merge(config, user_config)
	end
	style.init()
	to_do.init()
	wrap.init()
	follow_link.init()
end

return M
