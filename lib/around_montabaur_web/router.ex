defmodule AroundMontabaurWeb.Router do
  use AroundMontabaurWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", AroundMontabaurWeb do
    pipe_through :api
  end
end
