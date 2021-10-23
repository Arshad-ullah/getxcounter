import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_counter/student.dart';

class Show extends StatelessWidget {

  var student=Get.put(Student());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Show data'),
      ),
      body: Row(
        children: [

          GetBuilder<Student>(
            builder: (value)
            {
              return Expanded(
                child: ListView.builder(
                  itemCount: value.student_name.length,

                  itemBuilder: (context,index)
                  {
                    return ListTile(
                      leading: CircleAvatar(),

                      trailing: Text('${value.student_name[index]}'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),

                    );

                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
