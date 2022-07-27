import 'package:employee_demo/constant.dart';
import 'package:employee_demo/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class AddEmployee extends StatelessWidget {
  const AddEmployee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var name = TextEditingController();
    var age = TextEditingController();
    var period = TextEditingController();
    return Scaffold(
      body: Container(
        width: size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
              Color.fromARGB(198, 65, 4, 207),
              Color.fromARGB(255, 1, 2, 11),
              Color.fromARGB(255, 11, 22, 106)
            ])),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextfield(
                  controller: name,
                  hint: "Type Employee name here",
                  label: 'Name',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextfield(
                  controller: age,
                  hint: "Type Employee Age here",
                  label: 'Age',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextfield(
                  controller: period,
                  hint: "Type Working Period here",
                  label: 'Period',
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      gradient: const LinearGradient(
                          colors: [Colors.deepPurpleAccent, Colors.blue])),
                  child: GestureDetector(
                    onTap: () {
                      controller.uploadEmployee(
                          name.text,
                          int.parse(period.text),
                          int.parse(age.text));
                    },
                    child: const Center(
                      child: Text(
                        'Save',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
