import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class VerifyService {
  final String baseUrl = 'https://secondly.cashkr.com/verifyotp/';

  Future<bool> verifyOTP(
      String phoneNumber, String otp, String sessionid) async {
    try {
      Map<String, String> headers = {
        'Authorization': '${dotenv.env["AUTH_TOKEN"]}',
        'Content-Type': 'application/json',
      };
      final response = await http.post(
        Uri.parse('$baseUrl$phoneNumber'),
        headers: headers,
        body: {
          'phonenumber': phoneNumber,
          'otp': otp,
          'sessionid': sessionid,
        },
      );
      print(sessionid);
      print("done");
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);

        //for storing value using shared preference
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', body['token']);
        await prefs.setString('phonenumber', body['phonenumber']);

        // Assume OTP verification is successful
        print('verified done');
        return true;
      }
      return false;
    } catch (e) {
      // Handle any errors here
      return false;
    }
  }
}
