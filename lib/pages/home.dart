import 'dart:math';

import 'package:famlaika1/constants/ImageConstant.dart';
import 'package:famlaika1/constants/appDecoration.dart';
import 'package:famlaika1/constants/colors.dart';
import 'package:famlaika1/widgets/custom_image_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_OutlinedButton.dart';
import '../widgets/custom_icon_button.dart';
import 'addmember_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          title: Align(
            alignment: Alignment.center,
              child: Image.asset("assets/images/img_logo.png",height: 35,width: 95,)),
        ),

        backgroundColor: AppColors.primaryColor,
        body: Container(
          width: double.maxFinite,

          child: Padding(padding: EdgeInsets.only(bottom: 5),
          child: Column(
            children: [
              // _buildColumnSpacer(context),
              // SizedBox(height: 25,),
              // _buildRowYourFamily(context),
              SizedBox(height: 26,),
              SizedBox(
                height: 482,
                width: 280,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      // imagePath: ,
                      height: 68,
                      width: 68,
                      radius: BorderRadius.only(
                        topLeft: Radius.circular(34),
                        bottomLeft: Radius.circular(34),
                        bottomRight: Radius.circular(34),
                      ),
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(right: 16),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgheart,
                      height: 24,
                      width: 24,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 32),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgunionyellow,
                      height: 66,
                      width: 116,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(bottom: 105),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgframerectangle,
                      height: 68,
                      width: 68,
                      radius: BorderRadius.only(
                        topLeft: Radius.circular(34),
                        bottomLeft: Radius.circular(34)
                      ),
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(bottom: 144,
                      right: 16),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: EdgeInsets.only(
                          right: 180,
                          bottom: 114
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 37,
                          vertical: 6
                        ),
                        decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 4,),
                            Text("Me",style: theme.textTheme.bodyLarge,)
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 68,
                        width: 68,
                        margin: EdgeInsets.only(
                          left: 16,
                          bottom: 144,
                        ),
                        decoration: AppDecoration.outlineYellow.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL34,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgframerectangle,
                          height: 66,
                          width: 66,
                          color: Colors.red,
                          radius: BorderRadius.only(
                            topLeft: Radius.circular(33),
                            bottomLeft: Radius.circular(33),
                            bottomRight: Radius.circular(33),
                          ),
                          alignment: Alignment.center,

                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 68,
                        width: 68,
                        margin: EdgeInsets.only(
                          left: 16,
                        ),
                        decoration: AppDecoration.outlineYellow.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL34,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgframerectangle,
                          height: 66,
                          width: 66,
                          radius: BorderRadius.only(
                            topLeft: Radius.circular(33),
                            bottomLeft: Radius.circular(33),
                            bottomRight: Radius.circular(33),
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(
                      top: 58,
                      right: 180,
                    ),
                    child:_buildColumnVictoria(
                      context,
                      userName:"Tom Hanks",
                      motherName:"Father",
                    ) ,),
                    Padding(padding: EdgeInsets.only(
                      left: 180,
                      top: 58,
                    ),
                    child: _buildColumnVictoria(
                      context,
                      userName:"Victoria ",
                      motherName:"Mother",

                    ),
                    ),
                    Padding(padding: EdgeInsets.only(
                      left: 180,
                      top: 105,
                    ),
                     child: _buildColumnVictoria(
                       context,
                       userName:"charles ja",
                       motherName:"Spouse",
                     ),

                    ),
                    Padding(padding: EdgeInsets.only(
                      left: 87,
                      right: 93,
                    ),
                    child: _buildColumnVictoria(
                      context,
                      userName:"Zera",
                      motherName:"child",
                    ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 141,
                        width: 205,
                        margin: EdgeInsets.only(
                          top: 118,
                          right: 20,
                        ),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(padding: EdgeInsets.only(
                                left: 49),
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
                                right: 94,),
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
                                right: 74,),
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
                                right: 54,),
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
                                right: 34),
                              child: SizedBox(
                                height: 35,
                                child: VerticalDivider(
                                  width: 1,
                                  thickness: 1,
                                  color: appTheme.yellow700,
                                ),
                              ),),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgframerectangle,
                              height: 29,
                              width: 29,
                              radius: BorderRadius.only(
                                topLeft: Radius.circular(14),
                                bottomLeft: Radius.circular(14),
                                bottomRight: Radius.circular(14),
                              ),
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(
                                top: 34,
                                right: 81,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgframe,
                              height: 29,
                              width: 29,
                              radius: BorderRadius.only(
                                topLeft: Radius.circular(14),
                                bottomLeft: Radius.circular(14),
                                bottomRight: Radius.circular(14),
                              ),
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(
                                top: 34,
                                right: 61,
                              ),
                            ),
                            //
                          ],
                        ),
                      ),
                    )

                    






                  ],
                ),
              )


            ],
          ),
          ),
        ),
      ),
    );
  }

Widget _buildColumnVictoria(
    BuildContext context,{
      required String userName,
      required String motherName,
  }
    ){
    return Container(
      padding: EdgeInsets.all(4),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3,),
          Text(userName,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: appTheme.yellow700,
          ),),
          SizedBox(height: 1,),
          Text(motherName,style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.yellow700

          ),)
        ],
      ),
    );
}


}
