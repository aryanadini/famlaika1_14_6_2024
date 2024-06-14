import 'dart:math';

import 'package:famlaika1/pages/home3.dart';
import 'package:famlaika1/pages/post_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/ImageConstant.dart';
import '../constants/appDecoration.dart';
import '../constants/colors.dart';
import '../widgets/custom_OutlinedButton.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/custom_image_view.dart';
import 'addmember_view.dart';
import 'chat_view.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  Widget? service;
  int _selectedIndex = 0;

  @override
  void initState() {
    service = Home2();
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          service = Home2();
          break;
        case 1:
          service = Chat();
          break;
        case 2:
          service = Post();
          break;
      }
    });
    // Handle navigation to different pages based on index here
  }




  bool _isCustomButtonVisible = false;

  void _toggleCustomButtonVisibility() {
    setState(() {
      _isCustomButtonVisible = !_isCustomButtonVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        iconTheme: IconThemeData(color: Colors.amber), // Change the drawer icon color here
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),

        title: Align(
          alignment: Alignment.center,
          child: Image.asset("assets/images/img_logo.png",height: 35,),),
       actions: [
         IconButton(onPressed: (){}, icon: Icon(Icons.search,color:Colors.amber ,)),
         IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.amber,))

       ],


      ),
        drawer: Drawer(
          backgroundColor: AppColors.primaryColor,
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [

               DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black
                ), //BoxDecoration
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black),
                  accountName: Text(
                    "Name",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("abhishekm977@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 165, 255, 137),
                    child: Text(
                      "A",
                      style: TextStyle(fontSize: 30.0, color: Colors.blue),
                    ), //Text
                  ), //circleAvatar
                ), //UserAccountDrawerHeader
              ), //DrawerHeader
              ListTile(
                leading: const Icon(Icons.account_circle,color: Colors.white,),
                title: const Text(' My Profile ',style: TextStyle(color: Color(0xFFFFFFFF)),),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.request_page,color: Color(0xFFFFFFFF)),
                title: const Text(' Request ',style: TextStyle(color: Color(0xFFFFFFFF))),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo,color: Color(0xFFFFFFFF)),
                title: const Text(' Gallery Access ',style: TextStyle(color: Color(0xFFFFFFFF))),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.local_activity,color: Color(0xFFFFFFFF)),
                title: const Text(' Activity ',style: TextStyle(color: Color(0xFFFFFFFF))),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.person_add_alt_1,color: Color(0xFFFFFFFF)),
                title: const Text(' Invite Person ',style: TextStyle(color: Color(0xFFFFFFFF))),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings,color: Color(0xFFFFFFFF)),
                title: const Text('Settings',style: TextStyle(color: Color(0xFFFFFFFF))),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),

        body:Stack(
          children: [
            AnimatedSwitcher(
              switchInCurve: Curves.easeOut,
              switchOutCurve: Curves.easeIn,
              duration: Duration(milliseconds: 500),
              child: service,
            ),
            Container(

              width: double.maxFinite,
              padding: EdgeInsets.only(
                  left: 3,bottom: 10,top: 0,right: 0

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 12,),
                              Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Color(0xFF2B2B2B),
                                      child: Column(

                                        children: [

                                          IconButton(

                                            onPressed: () {},
                                            icon: Icon(Icons.person),
                                            alignment: Alignment.center,
                                            iconSize: 35,
                                            color: Colors.black,

                                          ),



                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      top: 25,
                                      right: 2,
                                      left: 45,
                                      child: Container(
                                        height: 40,
                                        width: 50,
                                        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 13,
                                        ),
                                      ),
                                    ),
                                  ]
                              ),

                              Padding(padding: EdgeInsets.only(top: 4,left: 2),
                                child: Text("Your Story",style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'Figtree',color:Color(0xFFFFFFFF),fontSize: 12),),)

                            ],

                          ),
                        )
                      ],
                    ),
                  ),





                  SizedBox(height: 33,),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 474,
                      width: 280,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [

                          //_buildMotherButton(context),


                          Padding(
                            padding:  EdgeInsets.only(
                                top: 32
                            ),
                            child: Image(image: AssetImage('assets/images/img_heart.png'),
                              height:24 ,width: 24,
                              alignment: Alignment.topCenter,

                            ),
                          ),

                          Padding(
                            padding:  EdgeInsets.only(
                                top: 79
                            ),
                            child: Image(image: AssetImage("assets/images/img.png"),
                              height: 192,
                              width: 181,
                              alignment: Alignment.topCenter,

                            ),
                          ),

                          Padding(

                            padding:  EdgeInsets.only(
                                top: 310
                            ),
                            child: Image(image: AssetImage("assets/images/img_Tunion.png"),
                              height: 66,
                              width: 116,
                              alignment: Alignment.bottomCenter,


                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(padding: EdgeInsets.only(
                                top: 119,
                                left: 93),
                              child: SizedBox(
                                height: 35,
                                child: VerticalDivider(
                                  width: 1,
                                  thickness: 1,
                                  color: appTheme.yellow700,
                                ),
                              ),),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(padding: EdgeInsets.only(
                              top: 119,
                              right: 108,),
                              child:SizedBox(
                                height: 35,
                                child: VerticalDivider(
                                  width: 1,
                                  thickness: 1,
                                  color: appTheme.yellow700,
                                ),
                              ) ,),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(padding: EdgeInsets.only(
                              top: 119,
                              right: 93,),
                              child: SizedBox(
                                height: 35,
                                child: VerticalDivider(
                                  width: 1,
                                  thickness: 1,
                                  color: appTheme.yellow700,
                                ),
                              ),),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(padding: EdgeInsets.only(
                              top: 119,
                              right: 78,),
                              child: SizedBox(
                                height: 35,
                                child: VerticalDivider(
                                  width: 1,
                                  thickness: 1,
                                  color: appTheme.yellow700,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(padding: EdgeInsets.only(
                                top: 119,
                                right: 65),
                              child: SizedBox(
                                height: 35,
                                child: VerticalDivider(
                                  width: 1,
                                  thickness: 1,
                                  color: appTheme.yellow700,
                                ),
                              ),),
                          ),

                          //_buildSiblingButton(context),



                          //_buildChildButton(context),



                          // me yellow border
                          //  Align(
                          //    alignment: Alignment.bottomLeft,
                          //    child: Container(
                          //      height: 68,
                          //      width: 68,
                          //      margin: EdgeInsets.only(
                          //        left: 16,
                          //        bottom: 136
                          //      ),
                          //      decoration:AppDecoration.outlineYellow.copyWith(
                          //        borderRadius: BorderRadiusStyle.customBorderTL34,
                          //      ) ,
                          //
                          //    ),
                          //  ),


                          //_buildSpouseButton(context),



                          _buildMotherButton(context),

                          _buildChildButton(context),
                          _buildMeButton(context),
                          _buildSpouseButton(context),
                          _buildSiblingsButton(context),

                          Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                              height: 110,
                              width: 105,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [

                                  _buidFatherButton(context)
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),




                ],

              ),

            ),

          ],
        ),




        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline),
              label: 'Post',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.amber,
          onTap: _onItemTapped,
        ),


      ),


    );
  }

  Widget _buildMotherButton(BuildContext context){
    return Stack(
        children: [

          CustomOutlinedButton(
            width: 100,
            height: 50,
            text: "Mother",
            margin: EdgeInsets.only(top: 58,),

            leftIcon: Container(
              margin: EdgeInsets.only(right: 0),


            ),
            alignment: Alignment.topRight,


          ),

          Padding(padding: EdgeInsets.only(right: 20,),
            child:Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 68,
                width: 68,
                padding: EdgeInsets.all(15),

                decoration:AppDecoration.outlineYellow.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL34,
                ) ,
              ),
            ) ,
          ),


        ]
    );
  }

  Widget _buildSiblingsButton(BuildContext context){
    return Stack(
        children: [CustomOutlinedButton(
          width: 100,
          height: 50,
          text: "Siblings",
          margin: EdgeInsets.only(bottom: 12,left: 52),
          leftIcon: Container(
            margin: EdgeInsets.only(right: 0),

          ),
          alignment: Alignment.centerLeft,

        ),


          Padding(padding: EdgeInsets.only(
            top: 139,
            left: 50,
          ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(

                height: 68,
                width: 70,
                margin: EdgeInsets.all(15),
                decoration:AppDecoration.outlineYellow.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL34,
                ) ,

              ),
            ),
          ),

    CustomOutlinedButton(
    width: 100,
    height: 50,
    text: "Siblings",
    margin: EdgeInsets.only(bottom: 75,left: 120),
    leftIcon: Container(
    margin: EdgeInsets.only(right: 0),

    ),
    alignment: Alignment.centerLeft,

    ),
          Positioned(
            top: 130,
            left: 140,
            child: Container(
              height: 28,
              width: 30,
              margin: EdgeInsets.all(23),
              decoration: AppDecoration.outlineYellow.copyWith(
                color: Colors.pinkAccent,
                borderRadius: BorderRadiusStyle.customBorderTL34,
              ),
            ),
          ),
          CustomOutlinedButton(
            width: 100,
            height: 50,
            text: "Siblings",
            margin: EdgeInsets.only(bottom: 75,left: 145),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 0),

            ),
            alignment: Alignment.centerLeft,

          ),
          Positioned(
            top: 130,
            left: 153,
            child: Container(
              height: 28,
              width: 30,
              margin: EdgeInsets.all(23),
              decoration: AppDecoration.outlineYellow.copyWith(
                color: Colors.indigo,
                borderRadius: BorderRadiusStyle.customBorderTL34,
              ),
            ),
          ),
          CustomOutlinedButton(
            width: 100,
            height: 50,
            text: "Siblings",
            margin: EdgeInsets.only(bottom: 75,left: 165),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 0),

            ),
            alignment: Alignment.centerLeft,

          ),

          Positioned(
            top: 130,
            left: 163,
            child: Container(
              height: 28,
              width: 30,
              margin: EdgeInsets.all(23),
              decoration: AppDecoration.outlineYellow.copyWith(
                color: Colors.green,
                borderRadius: BorderRadiusStyle.customBorderTL34,
              ),
            ),
          ),
          CustomOutlinedButton(
            width: 100,
            height: 50,
            text: "Siblings",
            margin: EdgeInsets.only(bottom: 75,left: 185),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 0),

            ),
            alignment: Alignment.centerLeft,

          ),

          Positioned(
            top: 130,
            left: 173,
            child: Container(
              height: 28,
              width: 30,
              margin: EdgeInsets.all(23),
              decoration: AppDecoration.outlineYellow.copyWith(
                color: Colors.white,
                borderRadius: BorderRadiusStyle.customBorderTL34,
              ),
            ),
          ),
          CustomOutlinedButton(
            width: 100,
            height: 50,
            text: "Siblings",
            margin: EdgeInsets.only(bottom: 75,left: 195),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 0),

            ),
            alignment: Alignment.centerLeft,

          ),

          Positioned(
            top: 130,
            left: 183,
            child: Container(

              height: 28,
              width: 30,
              margin: EdgeInsets.all(23),

              decoration:
              AppDecoration.outlineYellow.copyWith(
                color: Colors.amber,

                borderRadius: BorderRadiusStyle.customBorderTL34,
              ),

              child: Center(child: Text("2+",style: theme.textTheme.titleMedium,

              )

              ),

            ),
          ),


     ]
    );

  }

  Widget _buildChildButton(BuildContext context){
    return Stack(
        children: [CustomOutlinedButton(
          width: 100,
          height: 50,
          text: "Child",


            margin: EdgeInsets.only(right: 0),


          alignment: Alignment.bottomCenter,

        ),

          Padding(padding:EdgeInsets.only(bottom: 16,),

            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 68,
                width: 68,
                margin: EdgeInsets.all(15),
    decoration:AppDecoration.outlineYellow.copyWith(
    borderRadius: BorderRadiusStyle.customBorderTL34,
    ) ,



                ),
              ),
            ),


        ]
    );
  }

  Widget _buildMeButton(BuildContext context){
    return Stack(
        children: [CustomOutlinedButton(
          width: 100,
          height: 50,

          buttonTextStyle: theme.textTheme.bodyLarge!,
          text: "Me",
          margin: EdgeInsets.only(bottom: 100),
          alignment: Alignment.bottomLeft,

          // Navigate to another page here

        ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 68,
              width: 68,

              margin: EdgeInsets.only(
                  left: 16,
                  bottom: 136
              ),
              decoration:AppDecoration.outlineYellow.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL34,
              ) ,

            ),
          ),]
    );
  }

  Widget _buildSpouseButton(BuildContext context){
    return Stack(
        children: [CustomOutlinedButton(
          width: 100,
          height: 50,
          text: "Spouse",
          margin: EdgeInsets.only(bottom: 100),
          leftIcon: Container(
            margin: EdgeInsets.only(right: 0),

          ),
          alignment: Alignment.bottomRight,
          onPressed: () {
            // Navigate to another page here
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Addmember(defaultMale: Random().nextBool(), isGenderFixed: false)), // Replace AnotherPage with the page you want to navigate to
            );
          },

        ),

          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 68,
              width: 68,
              margin: EdgeInsets.only(
              right: 16,
              bottom: 136,
            ),
              decoration:AppDecoration.outlineYellow.copyWith(

                borderRadius: BorderRadiusStyle.customBorderTL34,
              ) ,


            ),
          ),

        ]
    );
  }

  Widget _buidFatherButton(BuildContext context){
    return Stack(
        children:[ CustomOutlinedButton(

          width: 100,
          height: 50,
          text: "Father",
          margin: EdgeInsets.only(top: 58),
          leftIcon: Container(
            margin: EdgeInsets.only(right: 0),

          ),
          alignment: Alignment.bottomCenter,

        ),

          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 68,
              width: 68,
              margin: EdgeInsets.all(3),
              decoration:AppDecoration.outlineYellow.copyWith(

                borderRadius: BorderRadiusStyle.customBorderTL34,
              ) ,

            ),
          ),


        ]);

  }
}
