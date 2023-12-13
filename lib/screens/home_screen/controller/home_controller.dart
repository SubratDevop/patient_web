import 'package:get/get.dart';

class HomeController extends GetxController{
  RxInt selectedEvnetTag = 1.obs;



  void evetTap({required  tag}) {
    selectedEvnetTag.value = tag;
  }
}