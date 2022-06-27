import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // ignore: prefer_const_constructors
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xff557373),
          title: const Text(
            "About me",
          ),
        ),
        backgroundColor: const Color(0xfff2efea),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 170,
                      width: 128,
                      decoration: BoxDecoration(
                        color: const Color(0xff2a4438),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Image(
                        image: AssetImage("Assets/dev.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(
                      width: 34,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Turki",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        const Text(
                          "Web/Mobile developer",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff557373)),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const customStyle(
                              icon: Icons.mail,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const customStyle(
                              icon: Icons.phone,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const customStyle(
                              icon: Icons.video_call,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  "About",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff1e1e1e),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Computer Science student at KFU. Now learning Mobile and Web development \nI like AI and machine learning and I have some basic knowledge about software development.",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff557373),
                  ),
                ),
                const SizedBox(
                  height: 64,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.design_services,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "Services",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff1e1e1e),
                                  ),
                                ),
                                const Text(
                                  "Build applications\nusing flutter\nframework.",
                                  style: TextStyle(
                                    color: Color(0xff557373),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.design_services,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "Data analysis using\n python and SQL.",
                                  style: TextStyle(
                                    color: Color(0xff557373),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: const Image(
                        image: AssetImage("Assets/flutter.jpg"),
                        height: 200,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class customStyle extends StatelessWidget {
  const customStyle({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: const Color(0xff2a4438),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(
        icon,
        color: const Color(0xffebebeb),
      ),
    );
  }
}
