# 📄 Defines the controller responsible for handling browser (HTML) requests to the homepage.
defmodule PpgWeb.PageController do
  # 🚦 Inherits standard controller behavior from Phoenix
  use PpgWeb, :controller

  # 🌐 Action: GET "/"
  # Renders the homepage view using `page_html/index.html.heex`
  def index(conn, _params) do
    # 🔁 Renders `PpgWeb.PageHTML.index/1` using HEEx template
    render(conn, :index)
  end
end
