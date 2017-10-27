# Sequence

Add the following to mix.exs

```
mod: {Sequence.Application, []}
```

Add the following to your “application” e.g Sequence.Application

```
  def start(_type, _args) do
    children = [ { Sequence.Server, 100 } ]
    opts = [strategy: :one_for_one, name: Sequence.Supervisor]
    Supervisor.start_link(children, opts)
  end
```

Add the following init() to your GenServer

```
def init(state) do
  {:ok, state}
end
```




## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `sequence` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:sequence, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/sequence](https://hexdocs.pm/sequence).

