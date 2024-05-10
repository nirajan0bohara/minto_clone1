import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class OTPService {
  final String baseUrl = 'https://secondly.cashkr.com/sendotp/';

  Future sendOTP(String phoneNumber) async {
    try {
      Map<String, String> headers = {
        'Authorization': '${dotenv.env["AUTH_TOKEN"]}',
        'Content-Type': 'application/json', // Example header
      };
      final response = await http.get(
        Uri.parse('$baseUrl$phoneNumber'),
        headers: headers,
      );
      // print(Uri.parse('$baseUrl$phoneNumber'));
      // print(response.body);
      String responseData = response.body;
      dynamic json = jsonDecode(responseData);
      if (response.statusCode == 200) {
        // Assume OTP is sent successfully
        // print('opt send successfully');
        return json;
      }
      return false;
    } catch (e) {
      // Handle any errors here
      // print(e);
      return false;
    }
  }
}
