import 'package:flutter/material.dart';
import 'package:flutter_starter/core/ui/widgets/custom_app_bar.dart';
import 'package:flutter_starter/core/ui/widgets/custom_button.dart';
import 'package:flutter_starter/core/ui/widgets/image_component.dart';
import 'package:flutter_starter/core/utils/app_images.dart';
import 'controllers/comming_soon_controller.'
    'dart';
import 'package:get/get.dart';

class CommingSoonScreen extends GetView<CommingSoonController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '',
      ),
      body:  Center(
          child:Container(
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height*.2
            ),
            child:
            Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: ImageComponent(
                    height: 200,
                    width: 200,
                    assetPath: AppImages.error,
                  ) ,
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(' Bientôt disponible' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600),),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text('Cette fonctionnalité est en cours de développement\n et  sera   bientôt disponible.'
                        ,textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400 , ),),
                    ]),
                Spacer(),
                Container(
                  margin: EdgeInsets.all(20),
                  child: CustomButton(
                      text: 'Home',
                      color: Get.theme.primaryColor,
                      textColor: Colors.white,
                      onPressed:(){
                        Get.back();
                      }),
                ),



              ],
            ),
          )),
    );


  }

}