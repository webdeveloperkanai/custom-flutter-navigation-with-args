import 'package:flutter/material.dart';

class WatchVideo extends StatefulWidget {
  const WatchVideo({super.key, required this.w});
  final String w;
  static const routeName = "/watch";
  @override
  State<WatchVideo> createState() => _WatchVideoState();
}

class _WatchVideoState extends State<WatchVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Watch"),
      ),
      body: Center(
        child: Text(widget.w.toString()),
      ),
    );
  }
}

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(id.toString() + " Photo Page"),
      ),
    );
  }
}
