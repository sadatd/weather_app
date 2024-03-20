# Simple Weather App

This weather application leverages the OpenWeather API to provide current weather updates for cities around the globe. It features a minimalistic user interface that includes a home screen for searching cities and a settings page to toggle temperature units.

## Getting Started

### Prerequisites

- Dart SDK
- Flutter SDK
- An API key from OpenWeather

### Environment Setup

The app uses the `envied` package for handling environment variables. It requires code generation to generate `env.g.dart`. Follow the steps below to set up your environment:


1. **Configure Environment Variables**:

   Create a `.env` file at the root level of the project and add your OpenWeather API key as follows:

   ```
   APPID=your_api_key_here
   ```

   Replace `your_api_key_here` with your actual OpenWeather API key.

2. **Generate `env.g.dart`**:

   Run the following command in your terminal:

   ```shell
   dart run build_runner build
   ```

## App Screens

### Home Screen

- **Search Functionality**: The home screen features a text input for searching the weather by city name. By default, the input is empty, and the app initially displays the weather for London.
- **Weather Information**: Displays the weather details for the chosen city.
- **Refresh Button**: A button at the bottom allows users to refresh the weather information.
- **Settings Access**: An icon on the right side of the app bar navigates to the settings page.

### Settings Page

- **Temperature Unit Display**: Shows the currently active temperature unit (Celsius or Fahrenheit).
- **Toggle Button**: Allows users to switch between Celsius and Fahrenheit temperature units.

