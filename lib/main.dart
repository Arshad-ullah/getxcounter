import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_counter/method.dart';
import 'package:get_counter/show.dart';
import 'package:get_counter/student.dart';
void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myapp(),
    )
  );
}
class Myapp extends StatelessWidget {

  TextEditingController nameController=TextEditingController();
  TextEditingController ageController=TextEditingController();

  var student=Get.put(Student());

  var mymethod=Get.put(Mymethod());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetBuilder'),
      ),
      body: Center(
        child: Column(
          children: [
          // children: [
          //   TextField(
          //     controller: nameController,
          //   ),
          //  const SizedBox(height: 5,),
          //
          //   TextField(
          //     controller: ageController,
          //     keyboardType: TextInputType.number,
          //   ),
          //  const  SizedBox(
          //     height: 5,
          //   ),
          //   RaisedButton(
          //     onPressed: ()
          //     {
          //       if(nameController.text!=null && ageController.text!=null)
          //         {
          //           student.getData(name:nameController.text,age: ageController.text);
          //         }
          //       Get.snackbar('alert', "Data is store",
          //
          //       titleText: Text('information'),
          //         messageText: Text('Data is successfully store'),
          //         snackPosition: SnackPosition.BOTTOM,
          //         duration: Duration(
          //           seconds: 3
          //         )
          //       );
          //
          //     },
          //     child: const Text('Add data'),
          //   )
           GetBuilder<Mymethod>(
             initState:(data)=>mymethod.increment(),
             builder: (mymethod)
             {
               return  Center(
                 child: Text('${mymethod.a}'),
               );
             },
           )
          ],
        ),
      ),

     floatingActionButton: FloatingActionButton(
       onPressed: ()
       {
         mymethod.increment();
       },
       child: Text('Show'),
     ),

    );
  }
}
