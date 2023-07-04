import 'package:flutter/material.dart';
import 'package:ombor/home.dart';

class AddProducmentPage extends StatefulWidget {
  const AddProducmentPage({super.key});

  @override
  State<AddProducmentPage> createState() => _AddProducmentPageState();
}

class _AddProducmentPageState extends State<AddProducmentPage> {
  int count = 0;
  int hide_count = 0;
//  late String hajm;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ));
                    },
                    icon: const Icon(
                      Icons.chevron_left,
                      color: Color(0xFF2CBB5C),
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 15,
                  left: 10,
                ),
                child: Text(
                  "Mahsulot qo'shish",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2CBB5C),
                      fontSize: 28),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Mahsulot nomi"),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Mahsulot narxi"),
                ),
              ],
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  "Mahsulot soni:",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xFF2CBB5C)),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      count--;
                      hide_count--;
                      if (hide_count == -1) {
                        hide_count = 1;
                      }
                      if (count == -1) {
                        count = 0;
                      }
                    });
                  },
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: const Color(0xffFF5353)),
                    child: const Center(
                      child: Icon(
                        Icons.remove,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 10,
                  right: 10,
                ),
                child: Center(
                  child: Text(
                    "$count",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      count++;
                      hide_count++;
                    });
                  },
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: const Color(0xFF2CBB5C),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  "Mahsulot sifati va hajmi:",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xFF2CBB5C)),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                ),
                child: SizedBox(
                  height: 45,
                  child: Center(
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Kg")),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: SizedBox(
                  height: 45,
                  child: Center(
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text("L"))),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {
          Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ));
        },
        backgroundColor: const Color(0xFF2CBB5C),
        child: const Icon(
          Icons.check,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
