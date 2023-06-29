import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_state_managemet/controller.dart';
import 'package:getx_state_managemet/seond_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class DEMO extends StatelessWidget {
  const DEMO({super.key});

  @override
  Widget build(BuildContext context) {

    var getController = Get.put(MainController());   /// in this way we inilialise our controller
    /// put will create new controller
    /// while if you use .find it will use already used controller
    ///
    var getController2 = Get.put(MainController1());


    return Scaffold(
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(()=>"This is the value: ${getController.count.value}".text.xl3.semiBold.make()),
          //and Obx se ye ho raha h ki sirg text widget hi change ho raha h an baki sare
          //widget sam h build nhi ho rahe h ---> ram usage kam hoga isse
          ElevatedButton(
              onPressed: (){getController.incrementValue();},
              child: "Increment the value".text.semiBold.make()
          ),

          100.heightBox,

          GetBuilder<MainController1>(builder:(getController2){   //here we are using controller 2
              return "This is the value:${getController2.count.value}".text.xl3.semiBold.make();
          }),
          ElevatedButton(
              onPressed: (){getController2.incrementValue();},
              child: "Increment the value".text.semiBold.make()
          ),


        100.heightBox,


          //🔥🔥🔥🔥🔥🔥🔥🔥🔥
          ElevatedButton(
              onPressed: (){
                // Get.toNamed("/secondpage");   --> using getpage vali method
                Get.to(()=>SecondScreen(),
                  curve: Curves.bounceInOut,    //also gives functions like animations
                  transition: Transition.zoom ,    //animation while trabsition betwwen pages
                  duration: Duration(seconds: 3),


                );
                },
              child: "Go to next screen".text.semiBold.make()
          ),


          //also help in changes the theme of ui ---->>>>>>>
          ElevatedButton(
              onPressed: (){
                Get.changeTheme(ThemeData.dark());
                },
              child: "Change theme".text.semiBold.make()
          ),





          //laso used to shoe notification ----->
          ElevatedButton(
              onPressed: (){
                Get.snackbar("Vivek's App", "Here is your message",backgroundColor: Colors.amber,colorText: Colors.white);
              },
              child: "Show notification(SnackBar)".text.semiBold.make()
          ),



          ElevatedButton(
              onPressed: (){
                Get.defaultDialog(
                  backgroundColor: Vx.purple100,
                  title: "VIVEK APP",
                  textCancel: "no",
                  textConfirm: "yes",
                );
              },
              child: "Show Dilaog".text.semiBold.make()
          ),



        ],
      ),
      ),

    );
  }
}
