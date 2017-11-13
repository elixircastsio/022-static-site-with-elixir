defmodule Teacher do
  use Application

  def start(_type, _args) do
  	children = [
      Plug.Adapters.Cowboy.child_spec(:http, Web.Router, [], [port: 4001])
  	]
  	Supervisor.start_link(children, strategy: :one_for_one)
  end
end
