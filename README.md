![FlexBit Professional Password Generator](https://icbotbz40ngrmv6r.public.blob.vercel-storage.com/FlexBit.png)

## Flexbit - Stunning, professional password generation

FlexBit generates secure passwords with a beautiful, modern interface. Customize password length and character types to create strong passwords for all your accounts.

## ✨ Features

### 🎨 Beautiful Modern Interface
- **Glassmorphism Design**: Stunning backdrop-blur effects with gradient backgrounds
- **Animated Background**: Floating particles with dynamic animations
- **Clean Professional Styling**: Minimal, distraction-free interface design
- **Responsive Layout**: Perfect experience across all devices and screen sizes
- **Fullscreen Experience**: Immersive interface that fills the entire viewport

### 🔐 Advanced Security Options
- **Configurable Character Sets**: Toggle uppercase, lowercase, numbers, and symbols independently
- **Flexible Password Length**: Generate passwords from 1-24 characters (slider control)
- **Smart Validation**: Real-time button state changes based on selections
- **Visual Strength Evaluation**: Color-coded strength meter with detailed criteria
- **Secure Generation**: Cryptographically secure random character selection

### 🚀 User Experience
- **One-Click Copy**: Instant clipboard functionality with button animations
- **Real-time Generation**: Immediate password creation with character set selections
- **Clean Visual Feedback**: Button state changes and checkbox styling without popups
- **Intuitive Controls**: Beautiful range slider and clear checkbox interfaces
- **Compact Layout**: Optimized spacing that adapts to content without scrolling

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
