{
  environment.variables = {
    EDITOR = "nvim";
    GTK_THEME = "Breeze-dark";

    RUSTFLAGS = "-C link-arg=-fuse-ld=mold";
    CARGO_TARGET_X86_64_UNKNOWN_LINUX_GNU_LINKER = "clang";
  };
}
