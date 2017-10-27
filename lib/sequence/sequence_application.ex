defmodule Sequence.Application do

  use Application

  def start(_type, _args) do

    IO.puts("This should be readable on startup")
    # import Supervisor.Spec, warn: false

    children = [
      { Sequence.Server, 100 }
    ]

    opts = [strategy: :one_for_one, name: Sequence.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
