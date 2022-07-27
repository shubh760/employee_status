import 'package:employee_demo/screens/add_employee.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/employee_controller.dart';

class CardMain extends StatelessWidget {
  const CardMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final EmployeeController controller = Get.put(EmployeeController());
    final size = MediaQuery.of(context).size;
    return Obx(
      () => Stack(
        children: [
          SizedBox(
            height: 200,
            width: size.width - 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: const Image(
                image: AssetImage('assets/Vapor Silk.gif'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          /* FittedBox(
            fit: BoxFit.contain,
            child: Image.asset(
              'assets/chip.png',
              height: 70,
              width: 90,
            ),
          ), */
          Positioned(
              left: 20,
              top: 20,
              child: Text(
                'total employee: ${controller.totaluserList.length}',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              left: 20,
              top: 70,
              child: Text(
                'Experienced employee: ${controller.userList.length}',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              left: size.width - 150,
              top: 140,
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: const LinearGradient(
                        colors: [Colors.deepPurpleAccent, Colors.blue])),
                child: GestureDetector(
                  onTap: () {
                    Get.to(AddEmployee());
                  },
                  child: const Center(
                    child: Text(
                      'Add More',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
