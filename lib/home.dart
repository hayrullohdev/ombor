import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ombor/add_producment.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 15,
                  left: 10,
                ),
                child: Text(
                  "Mahsulotlar",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2CBB5C),
                      fontSize: 28),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 15,
                      left: 10,
                    ),
                    child: Text(
                      "Jami summa:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2CBB5C),
                          fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(
                      "100 000 so'm",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2CBB5C),
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString('asset/data/data.json'),
              builder: (context, snapshot) {
                var newData = jsonDecode(snapshot.data.toString());

                return ListView.builder(
                  itemCount: newData == null ? 0 : newData.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 10,
                          ),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 5.0,
                                    offset: Offset(0, 5),
                                    color: Color(0xFF2CBB5C)),
                              ],
                              shape: BoxShape.circle,
                              color: Color(0xFF2CBB5C),
                            ),
                            child: Center(
                              child: Text(
                                newData[index]["soni"].toString(),
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 13),
                              child: Text(
                                newData[index]["title"],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            Text(
                              newData[index]["subtitle"],
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              const Text(
                                "Narxi: ",
                                style: TextStyle(
                                    color: Color(0xFF2CBB5C),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              Text(
                                newData[index]["narxi"],
                                style: const TextStyle(
                                    color: Color(0xFF2CBB5C),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddProducmentPage(),
              ));
        },
        backgroundColor: const Color(0xFF2CBB5C),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
