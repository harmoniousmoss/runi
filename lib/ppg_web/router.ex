defmodule PpgWeb.Router do
  use PpgWeb, :router

  # 🧭 Pipeline for browser-based routes (HTML views)
  pipeline :browser do
    # Accept HTML responses
    plug :accepts, ["html"]
    # Enable session handling
    plug :fetch_session
    # Support Phoenix LiveFlash messages
    plug :fetch_live_flash
    # Define root layout template
    plug :put_root_layout, html: {PpgWeb.Layouts, :root}
    # CSRF protection
    plug :protect_from_forgery
    # Add security-related headers
    plug :put_secure_browser_headers
  end

  # 🔌 Pipeline for JSON API endpoints
  pipeline :api do
    # Accept only JSON responses
    plug :accepts, ["json"]
  end

  # 🔐 API scope for password generation (responds with JSON)
  scope "/api", PpgWeb do
    # Use API pipeline
    pipe_through :api
    # Route: GET /api/generate
    get "/generate", PasswordController, :generate
  end

  # 🌐 Root scope for frontend UI (HTML form + password result)
  scope "/", PpgWeb do
    # Use browser pipeline
    pipe_through :browser
    # Route: GET / (homepage)
    get "/", PageController, :index
  end

  # 🔧 Development-only tools (LiveDashboard, Mailbox preview)
  if Application.compile_env(:ppg, :dev_routes) do
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      # 📊 LiveDashboard for metrics and debugging
      live_dashboard "/dashboard", metrics: PpgWeb.Telemetry

      # 📬 Swoosh Mailbox preview (only in dev)
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
