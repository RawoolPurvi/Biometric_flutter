A simple Flutter application demonstrating biometric authentication using fingerprint or face recognition with the local_auth package.

This project showcases secure login implementation using device-level biometric authentication and route-based navigation.

<!-- Features -->
- Navigator.pushReplacementNamed is used to prevent back navigation
- local_auth package is used
- App triggers biometric authentication using LocalAuthentication.



🔹 auth_page.dart

UI for biometric login
Calls AuthService().authenticateLocally()

🔹 auth_service.dart

Handles biometric authentication logic
Uses local_auth package


🔒 Security Note
This implementation uses device-level biometric authentication.
No biometric data is stored within the app.
Authentication is handled securely by the OS.