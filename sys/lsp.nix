{

    pkgs,
    ...

}:
{
    environment.systemPackages = with pkgs; [
        luau-lsp
        stylua
        lua-language-server
        typescript-language-server
        nodejs
        typescript
        marksman
        nixpkgs-fmt
        vscode-langservers-extracted
        rust-analyzer
    ];
}
