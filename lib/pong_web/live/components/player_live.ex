defmodule PongWeb.Components.PlayerLive do
  use PongWeb, :live_component

  @impl true
  def render(assigns) do
    ~H"""
    <div id="player" class="bg-white w-[16px] h-[20vh] fixed top-0 left-0" style={"left: 6.25%; top: #{@y}%"} phx-hook="TrackClientCursor"></div>
    """
  end
end
