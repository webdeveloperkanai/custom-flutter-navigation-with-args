import 'package:flutter/material.dart';
import 'package:hello_devsecit/hello_devsecit_web.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context,
                  "/watch/?id=thisisdemo&sdk=4268&hdk=ds22323&sds=disug");
            },
            icon: Icon(Icons.share),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.golf_course),
          onPressed: () {
            goNamed(context, "/photo/?id=2732739779");
          }),
    );
  }
}
