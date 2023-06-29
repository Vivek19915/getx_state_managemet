import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_state_managemet/controller.dart';
import 'package:velocity_x/velocity_x.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var controller = Get.find<MainController>();   /// since we want to use value of previous controller that why we use find


    return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(()=> " This is your value ${controller.count.value} ".text.xl3.semiBold.make()),


                //in this way kahi se values ko get kar sakte h use kar sakte
                //and vo value jaha jaha use hogi vaha par changes reflect hoge
                //like isme jab phirse demo page par jate h values cahnge hoti h vaha par
                ElevatedButton(
                    onPressed: (){controller.count+=10;},
                    child: "increase value ".text.make(),
                )
              ],
            )
          ),
    );
  }
}
