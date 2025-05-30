# 📦 Defines the controller module responsible for handling password generation API requests
defmodule PpgWeb.PasswordController do
  use PpgWeb, :controller

  # 🔐 Maximum password length allowed (for security and UI limits)
  @max_length 24

  # 🔤 Character sets used to generate a secure password
  # Special characters
  @symbols ~c"!@#$%^&*()_+-=[]{}|;:,.<>?/~"
  # Lowercase + uppercase letters
  @letters ~c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
  # Numeric digits
  @numbers ~c"0123456789"

  # 🔧 Action: Handles GET /api/generate?length=N
  def generate(conn, %{"length" => length_str}) do
    # ✅ Validates the length parameter:
    # - Converts string to integer
    # - Checks if length is within the allowed range (1–24)
    with {length, _} <- Integer.parse(length_str),
         true <- length > 0 and length <= @max_length do
      # 🎲 Combine all characters into a full charset for random sampling
      charset = @symbols ++ @letters ++ @numbers

      # 🔐 Generate password by picking `length` random characters from charset
      password = for _ <- 1..length, into: "", do: <<Enum.random(charset)>>

      # 🟢 Respond with the generated password as JSON
      json(conn, %{password: password})
    else
      # 🔴 If invalid input (non-integer or out-of-bounds), return an error JSON
      _ ->
        json(conn, %{error: "Invalid length (1-24)"})
    end
  end
end
