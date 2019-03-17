defmodule WebSocketExample do
  use WebSockex

  def start_link() do
    WebSockex.start_link("wss://www.bitmex.com/realtime?subscribe=orderBookL2:XBTUSD", __MODULE__, nil)
  end

  def handle_frame({type, msg}, state) do
    IO.puts "Received Message - Type: #{inspect type} -- Message: #{inspect msg}"
    {:ok, state}
  end

  def handle_cast({:send, {type, msg} = frame}, state) do
    IO.puts "Sending #{type} frame with payload: #{msg}"
    {:reply, frame, state}
  end
end
