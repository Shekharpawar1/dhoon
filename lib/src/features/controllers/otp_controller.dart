import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/Api.dart';

class OtpController extends GetxController{
  static OtpController get find =>Get.find();
  final otpController = TextEditingController().obs;
  final mobileController = TextEditingController().obs;



  void otpApi(String number) async{
    print("================otp api=============");
    try{
      final response= await post(Uri.parse(Api.verifyOtp),
          body: {
            'number':number,
            'otp':otpController.value.text.toString(),
            'device_token':"13446"
          });
      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);
      if(response.statusCode == 200){
        // Get.snackbar('Your otp is', otpController.value.text.toString());

        if(data['status']== 'true'){
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString('user_id', data['data']['user_id'].toString());
          print(prefs.get('user_id'));
          Get.toNamed('/bottom');
        }
        else{
          Get.snackbar('Something went wrong', data['message']);
        }
      }
      else{
        Get.snackbar('Exception', 'something went wrong');
      }
    }
    catch(e){
      Get.snackbar('Exception', e.toString());
    }
  }

}