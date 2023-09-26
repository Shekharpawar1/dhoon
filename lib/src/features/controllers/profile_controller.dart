import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../api_model/login_api_model.dart';
import '../../api_model/profile_model_api.dart';
import '../../constants/Api.dart';

class ProfileController extends GetxController{

  ProfileApiModel? profileApiModel;
  static ProfileController get find =>Get.find();
  var isLoading = false.obs;
  final mobileController = TextEditingController().obs;

  void profileApi() async{
    print("================profile api=============");
    try{
      isLoading(true);
      final prefs = await SharedPreferences.getInstance();
   var user_id=   await prefs.getString('user_id');
      final response= await get(Uri.parse(Api.getprofile+"?user_id=1"),);


      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);

      if(response.statusCode == 200){

        // print("============result==========${result}");
        // openseaModel = OpenseaModel.fromJson(result);
        //
        // ProfileApiModel model = ProfileApiModel.fromJson(data);
        profileApiModel=ProfileApiModel.fromJson(data);

        if(data.status == 'true'){

          print(prefs.get('user_id'));
          // Get.snackbar('Your otp is',result!.data!.otp.toString());
          // Get.toNamed('/otp',arguments: mobileController.value.text.toString());
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
      isLoading(false);
    }
  }

}

