import 'package:get/get.dart';



// using obx methdod 🔥🔥
class MainController extends GetxController{
    var count = 0.obs;    // adding listner --> ab jese hi 0 ki value change hogi sabko pata chal jayega

    incrementValue(){
      count=count-10;
      print(count);
    }
}




//onr more method to use getx controller --> if you are using getbuilder
class MainController1 extends GetxController{
  var count = 0.obs;    // adding listner --> ab jese hi 0 ki value change hogi sabko pata chal jayega

  incrementValue(){
    count=count+10;
    refresh();   // we have to use this
    print(count);
  }
}