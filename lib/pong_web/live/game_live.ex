defmodule PongWeb.GameLive do
  use PongWeb, :live_view

  def render(assigns) do
    ~H"""
    <.live_component module={PongWeb.Components.PlayerLive} id="player" y={@y} />
    """
  end

  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(:y, 50), layout: {PongWeb.GameHTML, :game}}
  end

  def handle_event("cursor-move", %{"mouse_y" => y}, socket) do
    {:noreply, assign(socket, :y, y)}
  end
end
