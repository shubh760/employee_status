import 'package:employee_demo/widgets/main_card.dart';
import 'package:flutter/material.dart';

import '../widgets/above_5.dart';
import '../widgets/total_employee.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/demo.png',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Hi, RUE',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        Text('Los Anegeles, CA',
                            style: TextStyle(
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: CardMain(),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 20,top: 20),
                    child: SizedBox(
                      width: size.width - 70,
                      child: const Text(
                        'Above 5 Years',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: size.width,
                    child: ExperiencedTiles(),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 20,top: 20),
                    child: SizedBox(
                      width: size.width - 70,
                      child: const Text(
                        'Total Employee',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: size.width,
                    child: TotalEmployeeTiles(),
                  ),
                  
                ],
              ),
            ),
          ),
        
      ),
    );
  }
}