{ neovim, vimPlugins, tree-sitter, gcc, }:

let
  treesitter-parsers =
    (vimPlugins.nvim-treesitter.withAllGrammars);
in
neovim.override {
  vimAlias = true;
  viAlias = true;
  configure = {
    customRC = ''
      luafile ${./init.lua}
    '';
    packages.myVimPackages = with vimPlugins; {
      start = [
        LanguageClient-neovim
        awesome-vim-colorschemes
        rust-vim
        vim-nix
        telescope-nvim
        plenary-nvim
        popup-nvim
        nvim-lspconfig
        nvim-cmp
        nvim-snippy
        cmp-snippy
        cmp-nvim-lsp
        gitsigns-nvim
        which-key-nvim
        nvim-treesitter-context
        treesitter-parsers
      ];
    };
  };
}
