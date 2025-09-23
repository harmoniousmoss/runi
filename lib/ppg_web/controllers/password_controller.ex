# 📦 Defines the controller module responsible for handling password generation API requests
defmodule PpgWeb.PasswordController do
  use PpgWeb, :controller

  # 🔐 Maximum password length allowed (for security and UI limits)
  @max_length 24

  # 🔤 Character sets used to generate a secure password
  # Special characters
  @symbols ~c"!@#$%^&*()_+-=[]{}|;:,.<>?/~"
  # Lowercase letters
  @lowercase ~c"abcdefghijklmnopqrstuvwxyz"
  # Uppercase letters
  @uppercase ~c"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  # Numeric digits
  @numbers ~c"0123456789"

  # 🔧 Action: Handles GET /api/generate with configurable character sets
  def generate(conn, params) do
    length_str = params["length"] || "12"
    include_uppercase = params["uppercase"] == "true"
    include_lowercase = params["lowercase"] == "true"
    include_numbers = params["numbers"] == "true"
    include_symbols = params["symbols"] == "true"

    # ✅ Validates the length parameter:
    # - Converts string to integer
    # - Checks if length is within the allowed range (1–24)
    with {length, _} <- Integer.parse(length_str),
         true <- length > 0 and length <= @max_length do

      # 🎲 Build charset based on selected options
      charset = build_charset(include_uppercase, include_lowercase, include_numbers, include_symbols)

      case charset do
        [] ->
          json(conn, %{error: "At least one character type must be selected"})
        _ ->
          # 🔐 Generate password by picking `length` random characters from charset
          password = for _ <- 1..length, into: "", do: <<Enum.random(charset)>>

          # 🟢 Respond with the generated password as JSON
          json(conn, %{password: password})
      end
    else
      # 🔴 If invalid input (non-integer or out-of-bounds), return an error JSON
      _ ->
        json(conn, %{error: "Invalid length (1-24)"})
    end
  end

  # Helper function to build character set based on options
  defp build_charset(include_uppercase, include_lowercase, include_numbers, include_symbols) do
    charset = []

    charset = if include_uppercase, do: charset ++ @uppercase, else: charset
    charset = if include_lowercase, do: charset ++ @lowercase, else: charset
    charset = if include_numbers, do: charset ++ @numbers, else: charset
    charset = if include_symbols, do: charset ++ @symbols, else: charset

    charset
  end
end
