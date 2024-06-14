
import 'package:famlaika1/pages/otp_view.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import '../../constants/colors.dart';



class Login extends StatefulWidget {




   Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {


  GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _phoneNumberController = TextEditingController();




  FocusNode focusNode = FocusNode();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: 756,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
          width: 393.23,
          height: 680,
          top: -40,
          left: -100.69,

          child:Container(
                    width: double.maxFinite,
                    margin:EdgeInsets.only(bottom: 325),
                    padding: EdgeInsets.symmetric(vertical: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(170),gradient: LinearGradient(colors: [Color.fromARGB(29, 29, 29, 0),Color(0xFF313131)])

                    ),
                  )
              ),
              Positioned(
                  width: 214.99,
              height: 239,
              top: 35,
              left: 15,


                  child:Image.asset("assets/images/img_grp128f.png",height: 229,width: 200,alignment: Alignment.center,) ),
              Positioned(
                  width: 172,
              height: 60,
              top: 360,
              left: 16,

                  child:Text('Hello, let\'s get started!',maxLines: 2,
                    overflow: TextOverflow.ellipsis,style: TextStyle(fontFamily: 'Figtree',fontSize: 22,fontWeight: FontWeight.w600,height:1.36,
                        color: Color(0xFFFFFFFF)),
                  ), ),
              Positioned(
                  width: 263,
              height: 39,
              top: 428,
              left: 16,
                  child:Text('Bring your family \ncloser together with Famlaika.',maxLines: 2,
                    overflow: TextOverflow.ellipsis,style: TextStyle(fontFamily: 'Figtree',
                        fontWeight: FontWeight.w400,fontSize: 16,height:1.38,color: Color(0xFFFFFFFF)   ),), ),
              Positioned(
                  width: 45.5,
              height: 45.5,
              top: 75,
              left: 265,
                  child:  Container(
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),boxShadow: [BoxShadow(
                        color:Color(0xff5DB9A7) ,
                      )]

                      ),
                      child: Image.asset("assets/images/img_intersect_1.png",height: 40,width: 31,)),),
              Positioned(
                  width: 45.5,
              height: 45.5,
              top: 158,
              left: 260,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),boxShadow: [BoxShadow(
                      color: Color(0xffA69AF5)
                  )]
                  ),
                  child: Image.asset("assets/images/img_intersect_2.png")),),
              Positioned(
                  width: 45.5,
              height: 45.5,
              top: 230,
              left: 225,

                  child:Container(

                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),boxShadow: [BoxShadow(
                          color: Color(0xffE67657)
                      )]),
                      child: Image.asset("assets/images/img_intersect_3.png",)), ),
              Positioned(
                  width: 45.5,
              height: 45.5,
              top: 275,
              left: 160,


              child:  Container(

                padding: EdgeInsets.symmetric(horizontal: 4),

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),boxShadow: [BoxShadow(color: Color(0xFFF0994B))]),
                child: Image.asset("assets/images/img_intersect_4.png",
                  height: 35,
                  width: 35,
                 ),
              ),),
              Align(
                alignment: Alignment.topCenter,
                child: Container(


                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset("assets/images/img_Ellipse69.png",height: 121,width: 29,
                        ),
                        margin: EdgeInsets.only(
                          top: 199,
                          bottom: 54,
                        ),
                      ),
                      Expanded(
                          child:Padding(padding: EdgeInsets.only(
                            left: 10,
                            bottom: 54,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 266,
                                width: 286,
                                child: Stack(

                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(padding: EdgeInsets.only(
                                        left: 241,
                                        top: 53,
                                      ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [

                                            SizedBox(height: 38,),

                                          ],
                                        ),

                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,

                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),

                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: SizedBox(
                                        height: 239,
                                        width: 214,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                  right: 30,
                                                ),
                                                padding: EdgeInsets.all(20),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(92),
                                                ),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [

                                                    SizedBox(height: 3,),

                                                  ],
                                                ),
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),

                            ],
                          ),

                          ))

                    ],
                  ),
                ),
              ),


             Container(
               height: 225,
               width: 329,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [

                   Container(
                     height:40,
                     child: Text("Enter Mobile Number",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,fontFamily: 'Figtree',color: Color(0xFFFFFFFF)),

                     ),
                   ),




                   Container(

                     child: Form(

                       key: _formKey,

                        child: IntlPhoneField(
                          controller: _phoneNumberController,
                         focusNode: focusNode,

                         decoration: InputDecoration(

                           fillColor: Color(0xFF2F2F2F),
                           filled: true,

                           border: OutlineInputBorder(
                             borderSide: BorderSide(),
                           ),
                         ),
                         languageCode: "en",
                          initialCountryCode: "IN",
                         onChanged: (phone) {
                           print(phone.completeNumber);
                         },
                         onCountryChanged: (country) {
                           print('Country changed to: ' + country.name);
                         },

                       ),

                     ),
                   ),

                   Align(
                     alignment: Alignment.center,
                     child: Container(
                       height:50 ,
                       width: 328,
                       decoration:BoxDecoration(
                           gradient: LinearGradient(colors: [Color.fromARGB(243, 128, 43, 1),Color(0xFFFAE42C)])
                       ),
                       child: MaterialButton(



                         child: Text('Request OTP',style: TextStyle(fontFamily: 'Figtree',fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xFF1E1E1E)),),
                         color: Color(0xFFF3802B),


                         onPressed: () {




                           if (_phoneNumberController.text.isEmpty) {
                             // Show a dialog or snackbar indicating that the phone number field is required
                             ScaffoldMessenger.of(context).showSnackBar(
                               SnackBar(
                                 content: Text('Please enter your phone number.'),
                                 backgroundColor: Colors.red, // You can customize the color
                               ),
                             );
                             return; // Exit the function if the phone number field is empty
                           }





                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Otp(phoneNumber: 'phoneNumber',)));


                           _formKey.currentState?.validate();
                         },
                       ),
                     ),
                   ),

                 ],
               ),
             )
            ],
          ),
        ),



      )
    );
  }
}
