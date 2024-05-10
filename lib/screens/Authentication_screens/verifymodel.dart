import 'package:flutter/material.dart';
import 'package:minto_clone/screens/Authentication_screens/verifyservice.dart';

class VerifyModel with ChangeNotifier {
  final VerifyService _verifyService = VerifyService();
  bool _isLoading = false;
  dynamic responseData;

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<Map<String, dynamic>?> otpVerification(
      String phoneNumber, String otp, String sessionid) async {
    responseData = await _verifyService.verifyOTP(
      phoneNumber,
      otp,
      sessionid,
    );

    isLoading = true;

    final verified =
        await _verifyService.verifyOTP(phoneNumber, otp, sessionid);
    isLoading = false;
    return responseData;
  }
}
