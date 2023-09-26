import 'package:cached_network_image/cached_network_image.dart';
import 'package:dhoondle/src/features/screens/service_detail/widgets/service_detail_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_native/flutter_rating_native.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';
import '../../constants/images.dart';
import '../controllers/service_detail_controller.dart';

class PlumberScreen extends StatefulWidget {
  const PlumberScreen({super.key});

  @override
  State<PlumberScreen> createState() => _PlumberScreenState();
}

class _PlumberScreenState extends State<PlumberScreen> {
  final servicedetailController = Get.put(ServiceDetailsController());
  var service = Get.arguments;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(service);
    servicedetailController.servicedetailApi(service);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        toolbarHeight: 80,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Image.asset(
            Images.logo,
            height: 200,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        title: Text('Plumbers',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            )),
      ),
      body: SafeArea(
        child: ServiceDetailDesign(),
      ),
    );
  }

  showAlertDailog() {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(),
            content: Container(
              height: 230,
              width: 200,
              //width: MediaQuery.of(context).size.width,
              // decoration: BoxDecoration(
              //    color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: new BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(Images.delete),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Off for sometime ?",
                      style: GoogleFonts.poppins(
                          color: Color(0xff4C4C4C),
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.PopButtonColor),
                          child: Center(
                              child: Text(
                            "Yes",
                            style: GoogleFonts.poppins(
                                color: AppColors.ButtonTextColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),

                            // TextStyle(color: Color(0xffFFFFFF)),
                          )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.PopButtonColor,
                          ),
                          child: Center(
                              child: Text(
                            "No",
                            style: GoogleFonts.poppins(
                                color: AppColors.ButtonTextColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),

                            //TextStyle(color: Color(0xffFFFFFF)),
                          )),
                          height: 40,
                          width: 110,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
