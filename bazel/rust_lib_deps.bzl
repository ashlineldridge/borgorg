"""Provides Rust crate dependency loading function."""

load("@rules_rust//crate_universe:defs.bzl", "crates_repository")

def state_rust_lib_dependencies():
    """Declare Rust library dependencies."""

    crates_repository(
        name = "crate_index",
        cargo_lockfile = "//:Cargo.lock",
        lockfile = "//:Cargo.bazel.lock",
        manifests = [
            "//:Cargo.toml",
            "//src/services/goodbye:Cargo.toml",
        ],
    )