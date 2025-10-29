return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                rust_analyzer = {
                    settings = {
                        ["rust-analyzer"] = {
                            cargo = {
                                allFeatures = true,
                                loadOutDirsFromCheck = true,
                                buildScripts = {
                                    enable = true,
                                },
                            },
                            -- Add clippy lints for Rust if using rust-analyzer
                            checkOnSave = true,
                            check = {
                                command = "clippy",
                                args = {
                                    "--frozen",
                                    "--offline",
                                    "--",
                                    "-W",
                                    "warnings"
                                }
                            },
                            -- Enable diagnostics if using rust-analyzer
                            diagnostics = {
                                enable = true,
                            },
                            procMacro = {
                                enable = true,
                                ignored = {
                                    ["async-trait"] = { "async_trait" },
                                    ["napi-derive"] = { "napi" },
                                    ["async-recursion"] = { "async_recursion" },
                                },
                            },
                            files = {
                                excludeDirs = {
                                    ".direnv",
                                    ".git",
                                    ".github",
                                    ".gitlab",
                                    "bin",
                                    "node_modules",
                                    "target",
                                    "venv",
                                    ".venv",
                                },
                            },
                        }
                    }
                }
            }
        }
    }
}
