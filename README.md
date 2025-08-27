## Runi - Phoenix Password Generator

Runi is a secure password generation web application built with Phoenix Framework and Elixir. Features configurable password length (1-24 characters), real-time strength evaluation, and copy-to-clipboard functionality. Demonstrates full-stack development with Phoenix, Tailwind CSS styling, and API design. Built without database dependencies for lightweight deployment and optimal performance.

## Features

- 🔢 Generate passwords with configurable length (1–24)
- 🔐 Secure charset includes letters, numbers, and symbols
- 🌐 Interactive UI with Tailwind CSS
- 📊 Password strength meter (Weak / Medium / Strong)
- 📋 Copy-to-clipboard button
- ⚡ No database required (Ecto-free)

## Password Strength Logic

| Criteria                    | Points |
| --------------------------- | ------ |
| Length ≥ 8                  | +1     |
| Uppercase & lowercase mix   | +1     |
| Includes numeric characters | +1     |
| Includes special characters | +1     |

* 1–2: **Weak**
* 3: **Medium**
* 4: **Strong**

## File Structure Overview

| File                                                | Purpose                                  |
| --------------------------------------------------- | ---------------------------------------- |
| `lib/ppg_web/router.ex`                             | Defines API + browser routes             |
| `lib/ppg_web/controllers/page_controller.ex`        | Renders homepage UI                      |
| `lib/ppg_web/controllers/page_html.ex`              | HEEx template embedding                  |
| `lib/ppg_web/controllers/page_html/index.html.heex` | UI form, JS logic, and strength meter    |
| `lib/ppg_web/controllers/password_controller.ex`    | Password generation logic (API response) |


## 🛠️ Built With

* [Phoenix Framework](https://phoenixframework.org/)
* [Elixir](https://elixir-lang.org/)
* [Tailwind CSS](https://tailwindcss.com/)
