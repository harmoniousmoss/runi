## FlexBit - Professional Password Generator

FlexBit is a stunning, professional password generation web application built with Phoenix Framework and Elixir. Features a beautiful glassmorphism interface, configurable character sets, advanced animations, and comprehensive security options. Demonstrates modern full-stack development with Phoenix, advanced CSS techniques, and responsive design principles.

## ✨ Features

### 🎨 Beautiful Modern Interface
- **Glassmorphism Design**: Stunning backdrop-blur effects with gradient backgrounds
- **Animated Background**: Floating particles with dynamic animations
- **Professional Styling**: Clean, modern interface with hover effects and micro-interactions
- **Responsive Design**: Perfect experience across all devices and screen sizes
- **Fullscreen Experience**: Immersive interface that fills the entire viewport

### 🔐 Advanced Security Options
- **Configurable Character Sets**: Toggle uppercase, lowercase, numbers, and symbols independently
- **Flexible Password Length**: Generate passwords from 1-24 characters
- **Smart Validation**: Ensures at least one character type is always selected
- **Real-time Strength Evaluation**: Visual strength meter with detailed criteria
- **Secure Generation**: Cryptographically secure random character selection

### 🚀 User Experience
- **One-Click Copy**: Instant clipboard functionality with visual feedback
- **Live Preview**: Real-time password generation as you adjust settings
- **Smooth Animations**: Polished transitions and micro-interactions
- **Intuitive Controls**: Beautiful range slider and checkbox interfaces
- **Success Notifications**: Toast notifications for user actions

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


## 🚀 Getting Started

### Prerequisites
- Elixir 1.14+ and Erlang/OTP 25+
- Phoenix Framework 1.7+
- Node.js (for asset compilation)

### Installation
```bash
# Clone the repository
git clone https://github.com/harmoniousmoss/flexbit.git
cd flexbit

# Install dependencies
mix deps.get

# Setup assets
mix assets.setup

# Start the server
mix phx.server
```

Visit `http://localhost:4000` to see the beautiful password generator in action!

## 🎯 Usage

1. **Adjust Password Length**: Use the slider to set desired length (1-24 characters)
2. **Select Character Types**: Toggle checkboxes for uppercase, lowercase, numbers, and symbols
3. **Generate Password**: Click the "Generate Secure Password" button
4. **Copy to Clipboard**: Click the copy button to save the password
5. **Check Strength**: View the real-time strength evaluation

## 🛠️ Built With

* **Backend**: [Phoenix Framework](https://phoenixframework.org/) & [Elixir](https://elixir-lang.org/)
* **Frontend**: [Tailwind CSS](https://tailwindcss.com/) with custom glassmorphism effects
* **Styling**: Advanced CSS animations, backdrop-blur, and gradient techniques
* **Architecture**: Clean MVC pattern with stateless API design

## 🏗️ Technical Highlights

- **No Database Required**: Lightweight, stateless application
- **Glassmorphism UI**: Modern design trends with backdrop filters
- **Custom Animations**: Floating particles and smooth transitions
- **Responsive Design**: Mobile-first approach with perfect scaling
- **API-Driven**: Clean separation between frontend and backend
- **Configurable Backend**: Flexible character set selection logic
