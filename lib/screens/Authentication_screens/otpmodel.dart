import 'package:flutter/material.dart';
import 'package:minto_clone/screens/Authentication_screens/otpservice.dart';

class OTPModel with ChangeNotifier {
  final OTPService _otpService = OTPService();
  bool _isLoading = false;
  dynamic _responseData; // Variable to store the returned decoded JSON data

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<Map<String, dynamic>> requestOTP(String phoneNumber) async {
    isLoading = true;

    // Call sendOTP and capture the returned decoded JSON data
    _responseData = await _otpService.sendOTP(phoneNumber);

    isLoading = false;

    // print('Response data type: ${_responseData.runtimeType}');
    // print('Response data: $_responseData');
    // Map<String, dynamic> list = _responseData;
    // print(_responseData['message']);
    // Now you can use _responseData as needed
    if (_responseData is Map<String, dynamic>) {
      // print('Returned data:');
      return _responseData;
    } else {
      // print('Failed to get data.');
      return _responseData;
    }
  }
}
