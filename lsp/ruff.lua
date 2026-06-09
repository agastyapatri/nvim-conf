return {
	cmd = { "ruff", "server" },
	filetypes = { "python" },
	root_markers = { "pyproject.toml", "ruff.toml", ".ruff.toml", ".git" },
	on_attach = function(client)
		client.server_capabilities.hoverProvider = false
		client.server_capabilities.definitionProvider = false
		client.server_capabilities.referencesProvider = false
	end,
	init_options = {
		settings = {
			-- ruff server settings (mirrors pyproject.toml [tool.ruff])
			lineLength = 88,
			fixAll = true,
			organizeImports = true,
		},
	},
}
