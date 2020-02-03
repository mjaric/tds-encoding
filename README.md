# Tds.Encoding

String encoding/decoding NIF using rust [encoding](https://crates.io/crates/encoding) library.

## Installation

The package can be installed by adding `tds_encoding` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:tds_encoding, "~> 0.1.0"}
  ]
end
```

It requires rustc and cargo to compile. Easiest way to install required tools is 
to use excellent [rustup](https://rustup.rs/) script.
