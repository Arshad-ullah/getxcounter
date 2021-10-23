import 'package:get/get.dart';

class Mymethod extends GetxController
{
  var a=0;


  void increment() async
  {
    await Future<int>.delayed(Duration(seconds: 4));

    this.a++;
    update();
  }
}