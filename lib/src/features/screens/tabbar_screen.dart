import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';
import '../../constants/images.dart';
import '../../constants/text.dart';
import 'bottomNavigation.dart';
import 'home_screen.dart';

class TabbarScreen extends StatefulWidget {
  const TabbarScreen({Key? key}) : super(key: key);

  @override
  State<TabbarScreen> createState() => _TabbarScreenState();
}

class _TabbarScreenState extends State<TabbarScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar:AppBar(
            backgroundColor: AppColors.primaryColor,
            toolbarHeight: 80,
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Image.asset(Images.logo,height: 200,),
            ),
            centerTitle: true,
            elevation: 0,
            title: Text(TextScreen.Home, style: GoogleFonts.roboto(
            textStyle: TextStyle(
            color:
               Colors.white,
                fontSize: 18,
                fontWeight:
                FontWeight.w500),
          )),
            actions: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Image.asset(Images.search,),
              ),
            ],
          ) ,
          body: SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: DefaultTabController(
                  length: 4,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: TabBar(
                                  automaticIndicatorColorAdjustment: true,
                                  isScrollable: false,
                                  labelStyle: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      )),
                                  unselectedLabelColor: AppColors.greycolor,
                                  labelColor: Colors.grey,
                                  controller: _tabController,
                                  indicatorSize: TabBarIndicatorSize.tab,
                                  indicatorWeight: 2,
                                  indicatorColor: AppColors.textcolor,
                                  tabs: [
                                    Tab(
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            _tabController.index = 0;
                                          });
                                        },
                                        child: Center(
                                            child: _tabController.index == 0
                                                ? Container(
                                              // padding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(
                                                    20),
                                              ),
                                              child: MaterialButton(
                                                  padding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 0,
                                                      vertical: 0),
                                                  // textColor: Colors.white,
                                                  child: Text(TextScreen.Hostel,
                                                      style: GoogleFonts
                                                          .roboto(
                                                        textStyle: TextStyle(
                                                            color: AppColors
                                                                .textcolor,
                                                            fontSize: 16,
                                                            fontWeight:
                                                            FontWeight
                                                                .w500),
                                                      )),
                                                  onPressed: () {}),
                                            )
                                                : Text(TextScreen.Hostel,
                                                style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(
                                                      color:
                                                      AppColors.greycolor,
                                                      fontSize: 16,
                                                      fontWeight:
                                                      FontWeight.w500),
                                                ))),
                                      ),
                                    ),
                                    Tab(
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            _tabController.index = 1;
                                          });
                                        },
                                        child: Center(
                                            child: _tabController.index == 01
                                                ? Container(
                                              // padding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(
                                                    20),
                                              ),
                                              child: MaterialButton(
                                                  padding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 0,
                                                      vertical: 0),
                                                  // textColor: Colors.white,
                                                  child: Text(TextScreen.Rent,
                                                      style: GoogleFonts
                                                          .roboto(
                                                        textStyle: TextStyle(
                                                            color:AppColors.textcolor,
                                                            fontSize: 16,
                                                            fontWeight:
                                                            FontWeight
                                                                .w500),
                                                      )),
                                                  onPressed: () {}),
                                            )
                                                : Text(TextScreen.Rent,
                                                style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(
                                                      color:
                                                     AppColors.greycolor,
                                                      fontSize: 16,
                                                      fontWeight:
                                                      FontWeight.w500),
                                                ))),
                                      ),
                                    ),
                                    Tab(
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            _tabController.index = 2;
                                          });
                                        },
                                        child: Center(
                                            child: _tabController.index == 02
                                                ? Container(
                                              // padding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(
                                                    20),
                                              ),
                                              child: MaterialButton(
                                                  padding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 0,
                                                      vertical: 0),
                                                  // textColor: Colors.white,
                                                  child: Text(TextScreen.one_bhk,
                                                      style: GoogleFonts
                                                          .roboto(
                                                        textStyle: TextStyle(
                                                            color:AppColors.textcolor,
                                                            fontSize: 16,
                                                            fontWeight:
                                                            FontWeight
                                                                .w500),
                                                      )),
                                                  onPressed: () {}),
                                            )
                                                : Text(TextScreen.one_bhk,
                                                style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(
                                                      color:
                                                    AppColors.greycolor,
                                                      fontSize: 16,
                                                      fontWeight:
                                                      FontWeight.w500),
                                                ))),
                                      ),
                                    ),
                                    Tab(
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            _tabController.index = 3;
                                          });
                                        },
                                        child: Center(
                                            child: _tabController.index == 03
                                                ? Container(
                                              // padding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(
                                                    20),
                                              ),
                                              child: MaterialButton(
                                                  padding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 0,
                                                      vertical: 0),
                                                  // textColor: Colors.white,
                                                  child: Text(TextScreen.two_bhk,
                                                      style: GoogleFonts
                                                          .roboto(
                                                        textStyle: TextStyle(
                                                            color: AppColors.textcolor,
                                                            fontSize: 16,
                                                            fontWeight:
                                                            FontWeight
                                                                .w500),
                                                      )),
                                                  onPressed: () {}),
                                            )
                                                : Text(TextScreen.two_bhk,
                                                style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(
                                                      color:
                                                     AppColors.greycolor,
                                                      fontSize: 16,
                                                      fontWeight:
                                                      FontWeight.w500),
                                                ))),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Image.asset(ProjectImage.search,height: 40,),
                              // SizedBox(width: 10,),
                              // Image.asset(ProjectImage.home,height: 40,)                      ],
                            ]),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          physics: NeverScrollableScrollPhysics(),
                          children: [

                            HomeScreen(),
                            HomeScreen(),
                            HomeScreen(),
                            HomeScreen(),


                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          )),
    );
  }
}
