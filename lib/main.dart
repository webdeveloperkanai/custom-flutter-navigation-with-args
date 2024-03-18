// ignore_for_file: prefer_const_constructors, unreachable_switch_case

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hello_devsecit/hello_devsecit_web.dart';
import 'package:tmchat/config.dart';
import 'package:tmchat/views/Backend/HomeScreen.dart';
import 'package:tmchat/views/Common/WatchVideo.dart';

// import 'dart:html' as html;

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/watch/:vid?wid=xyz',
          builder: (BuildContext context, GoRouterState state) {
            return WatchVideo(
              w: state.pathParameters["vid"].toString(),
            );
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
      },
      onGenerateRoute: (settings) {
        print(settings.name.toString());
        final settingsUri = Uri.parse(settings.name.toString());
        print(settingsUri.queryParameters.toString());
        print(settingsUri.path.toString());

        var id = settingsUri.queryParameters["id"];

        switch (settingsUri.path.toString()) {
          case "/watch/":
            return goNow(settings, WatchVideo(w: id.toString()));
          case "/photo/":
            return goNow(settings, PhotoPage(id: id.toString()));

          default:
            break;
          // return MaterialPageRoute(
          //   builder: (_) => Scaffold(
          //     appBar: AppBar(
          //       title: Text("404!"),
          //       automaticallyImplyLeading: false,
          //       leading: IconButton(
          //           onPressed: () {
          //             goNamed(context, "/");
          //           },
          //           icon: Icon(Icons.arrow_back)),
          //     ),
          //   ),
          // );
        }
      },
      // onUnknownRoute: (settings) {
      //   return MaterialPageRoute(
      //     builder: (_) => Scaffold(
      //       appBar: AppBar(
      //         title: Text("404"),
      //         leading: IconButton(
      //             onPressed: () {
      //               goNamed(context, "/");
      //             },
      //             icon: Icon(Icons.arrow_back)),
      //       ),
      //       body: Center(
      //         child: Text("404! Page not found"),
      //       ),
      //     ),
      //   );
      // },
    );
  }
}
