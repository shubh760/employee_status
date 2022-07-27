import 'package:employee_demo/controllers/employee_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExperiencedTiles extends StatelessWidget {
  const ExperiencedTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final EmployeeController controller = Get.put(EmployeeController());
    return Obx(() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: controller.userList.length,
          itemBuilder: (BuildContext context, int index) {
            final data = controller.userList[index];
            return Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Colors.deepPurpleAccent, Colors.blue]),
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Center(
                child: Column(
                  children: [
                    Spacer(),
                    RichText(
                      text: TextSpan(
                        text: 'Name : ',
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: data.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Spacer(),
                    RichText(
                      text: TextSpan(
                        text: 'Age : ',
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: '${data.age}',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Spacer(),
                    RichText(
                      text: TextSpan(
                        text: 'Working Period : ',
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: '${data.workingPeriod}',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Spacer(),

                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            width: 20,
          ),
        ),
      );
    });
  }
}
