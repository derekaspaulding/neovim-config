-- Core vim configuration. Must be loaded before lazy so plugins use correct leader.
require("derekspaulding.config")

-- Remaps only for built in vim functionality. Plugin specific remaps should go
-- in their respective plugin config files
require("derekspaulding.remaps")

-- Setup plugins
require("derekspaulding.lazy")

