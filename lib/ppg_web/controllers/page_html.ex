# 📄 Defines the view module responsible for rendering HTML templates for the PageController.
defmodule PpgWeb.PageHTML do
  # 🧱 Inherits Phoenix HTML functionality (HEEx rendering, helpers, etc.)
  use PpgWeb, :html

  # 📦 Embeds all .heex templates inside the "page_html/" folder.
  # This allows Phoenix to compile them into function clauses like `index/1`
  embed_templates "page_html/*"
end
