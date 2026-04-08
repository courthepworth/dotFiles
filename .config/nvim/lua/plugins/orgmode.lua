return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  config = function()
    -- ChatGPT changes for dynamic directories
    local org_dir = os.getenv('ORG_DIR')

    if not org_dir then
      vim.notify('ORG_DIR not set', vim.log.levels.ERROR)
      return
    end
    -- Setup orgmode
    require('orgmode').setup({
      org_agenda_files = {
        org_dir .. '/**/*.org',
      },
      org_default_notes_file = org_dir .. '/refile.org',
    })

    -- Experimental LSP support
    vim.lsp.enable('org')
  end,
}
