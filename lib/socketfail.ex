defmodule Socketfail do
  use Application

  def start(_type, _args) do
    children = [
      %{
        id: WebSocketExample,
        start: {WebSocketExample, :start_link, []}
      }
    ]

    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
