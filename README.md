# FaceRecognition

This project demonstrates a simple Face Recognition feature using the Local Authentication framework in iOS. It allows users to authenticate themselves using facial recognition (or other biometric methods available on the device) to proceed within the app.

## Getting Started

To get started with this project, clone this repo to your local machine. You will need Xcode installed on a macOS system to run and build the project.

### Prerequisites

- macOS system with the latest version of Xcode and iOS SDK.
- An iOS device with biometric capabilities (Face ID or Touch ID) or an iOS Simulator that supports biometric authentication.
- Basic knowledge of Swift and iOS development.

### Setup

1. Open `FaceRecognition.xcodeproj` in Xcode.
2. Ensure your iOS device is selected as the target device in the top toolbar.
3. Press the Run button or `Cmd + R` to build and run the project on your device or simulator.

## Implementation

The main functionality is contained within `ViewController.swift`. Here's a brief overview of its components:

- **IBOutlet**: Two outlets are connected to the UI elements in the storyboard: `signButton` (a UIButton) and `resultLabel` (a UILabel).
  
- **viewDidLoad**: This method sets up the initial state of the UI elements when the view loads. For example, it modifies the `signButton` appearance to have rounded corners.

- **signButtonTapped**: This action is triggered when the user taps the Sign In button. It initiates the authentication process using `LAContext` from the Local Authentication framework. If authentication is successful (i.e., the user is recognized), it navigates to the next view controller. Otherwise, it displays an error message in `resultLabel`.

### Local Authentication Flow

1. `LAContext` is used to create a context for evaluating authentication policies.
2. `canEvaluatePolicy` checks if the device supports biometric authentication and if biometrics are enrolled.
3. `evaluatePolicy` attempts the authentication, presenting a system dialog to the user asking for biometric verification.
4. Upon success, the app navigates to the next screen. Upon failure, an error message is shown.

## Notes

- Ensure your device has biometric authentication set up (Face ID or Touch ID) to test this feature.
- Handle errors and fallbacks gracefully in a production app to improve the user experience.

## License

This project is open-sourced under the MIT license. See the LICENSE file for more details.
