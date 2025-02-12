import 'package:flutter/material.dart';
import 'package:tourism_page/pages/bottom_nav_bar.dart';
import 'package:tourism_page/pages/search_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(239, 255, 255, 255),
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/1.jpg"),
                      maxRadius: 25,
                      minRadius: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Hello, Laith!",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Icon(Icons.notifications)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Find Your Stay",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: SearchPage(),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("images/india.png"),
                          minRadius: 30,
                          maxRadius: 30,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("India"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("images/newyork.jpg"),
                          minRadius: 30,
                          maxRadius: 30,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("NewYork"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("images/aust.jpg"),
                          minRadius: 30,
                          maxRadius: 30,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Australia"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("images/poland.jpg"),
                          minRadius: 30,
                          maxRadius: 30,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Poland"),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Our Properties",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w700)),
                    Text("View All",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 32, 165, 37)))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    height: 290,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                              width: 320,
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    "images/misty.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              )),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Misty Rock Resort",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.green,
                                      ),
                                      Text("Wayanand")
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                  width: 28,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromARGB(255, 32, 165, 37),
                                  ),
                                  child: const Center(
                                      child: Icon(
                                    Icons.keyboard_double_arrow_right_outlined,
                                    color: Colors.white,
                                  )))
                            ],
                          ),
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w700)),
                    Text("View All",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 32, 165, 37)))
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 170,
                          height: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  image: AssetImage("images/misty.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Misty Rock Resort",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.green,
                                ),
                                Text("Wayanand")
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
