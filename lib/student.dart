import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Student extends GetxController
{
  var student_name=[];
  var student_age=[];

  void getData({var name,var age})
  {
    student_name.add(name);
    student_age.add(age);

    update();
    print(student_age[0]);

  }

}