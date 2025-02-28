import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/core/ui/widgets/custom_button.dart';
import 'package:flutter_starter/core/ui/widgets/image_component.dart';
import 'package:flutter_starter/core/utils/app_colors.dart';
import 'package:flutter_starter/core/utils/app_dimensions.dart';
import 'package:flutter_starter/core/utils/app_images.dart';
import 'controllers/onboarding_controller.dart';
import 'package:get/get.dart';

class OnboardingScreen extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return MixinBuilder<OnboardingController>(
      initState: (_) {},
      builder: (_) {
        Widget buildDot(int index, BuildContext context) {
          return Container(
            height: 10,
            width: _.currentPage == index ? 18 : 10,
            margin: const EdgeInsets.symmetric(
              horizontal: 4,
            ),
            decoration: BoxDecoration(
              borderRadius:
              BorderRadius.circular(AppDimensions.radiusExtraLarge),
              color:
              _.currentPage.value == index ? Colors.white : Colors.white60,
            ),
          );
        }

        return Scaffold(
          backgroundColor: Get.theme.primaryColor,
          floatingActionButton: _.currentPage == 2
              ? null
              : FloatingActionButton(
            shape: const CircleBorder(),
            elevation: 0,
            backgroundColor: Colors.black,
            onPressed: () {
              if (_.currentPage < 2) {
                _.pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              } else {
                // Naviguer vers l'écran principal
              }
            },
            child: Icon(
              FluentIcons.arrow_right_32_regular,
              color: _.currentPage == 2 ? Colors.black : Colors.white,
            ),
          ),
          body: Stack(
            children: [
              PageView(
                controller: _.pageController,
                onPageChanged: _.onPageChange,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10, top: MediaQuery.of(context).padding.top),
                            child: Text(
                              " Welcome",
                              style:
                              TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 150,),
                        const SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageComponent(
                                assetPath: AppImages.saly,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 50,),
                        SizedBox(
                          child: Container(
                            //color: Colors.red,
                            // Vous pouvez utiliser un `SizedBox` pour contrôler la taille si nécessaire
                            child: const Text(
                              "This is the first onboarding page, customize it to your liking.",
                              textAlign: TextAlign.center,
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white),
                            ),
                          ),

                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height*0.3,),

                        const SizedBox(

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageComponent(
                                assetPath: AppImages.saly,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 50,),
                        SizedBox(
                          child: Container(
                            //color: Colors.red,
                            // Vous pouvez utiliser un `SizedBox` pour contrôler la taille si nécessaire
                            child: const Text(
                              "This is the second onboarding page, customize it to your liking",
                              textAlign: TextAlign.center,
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                  fontSize: 24, color: Colors.white),
                            ),
                          ),

                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height*0.3,),

                        const SizedBox(

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageComponent(
                                assetPath: AppImages.saly,
                              )

                            ],
                          ),
                        ),
                        Text(
                          "Onboading Start Page, customized on",
                          textAlign: TextAlign.center,
                          softWrap: true,
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                              fontSize: 24, color: Colors.white),
                        ),
                        Spacer(),
                        CustomButton(text: 'Start',
                            color: AppColors.black,
                            strech: false,
                            width: MediaQuery.of(context).size.width*0.98,
                            onPressed:(){
                                controller.goHome();
                            } ),
                        SizedBox(height: 20,)
                      ],


                    ),
                  ),
                ],
              ),
              Positioned(
                top: MediaQuery.of(context).padding.top+10,
                right: MediaQuery.of(context).padding.right+10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:
                  List.generate(3, (index) => buildDot(index, context)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}