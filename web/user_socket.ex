defmodule HelloPhoenix.UserSocket do
    use Phoenix.Socket

    ## Transport
    transport :websocket, Phoenix.Transports.WebSocket,
      timeout: 45_000
end
