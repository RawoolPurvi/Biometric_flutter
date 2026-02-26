import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class AuthService{

  final LocalAuthentication localAuth = LocalAuthentication();

  Future<bool> authenticateLocally() async{
    bool isAuthenticate = false;
    try{
      bool isAuthenticate = await localAuth.authenticate(localizedReason: "We need to authenticate the user");
      return isAuthenticate;
    }on LocalAuthException catch (e) {
      if (e.code == LocalAuthExceptionCode.noBiometricHardware) {
        // Add handling of no hardware here.
      } else if (e.code == LocalAuthExceptionCode.temporaryLockout ||
          e.code == LocalAuthExceptionCode.biometricLockout) {
        // ...
      } else {
        // ...
      }
    }
    catch(e){
      isAuthenticate = false;
      print('Error : ${e}');
    }
    return isAuthenticate;
  }
}