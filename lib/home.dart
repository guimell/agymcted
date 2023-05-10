import 'package:agymcted/config.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // update (globally) screen size
    AppConfig.screenWidth = MediaQuery.of(context).size.width;
    AppConfig.screenHeight = MediaQuery.of(context).size.height;
    AppConfig.screenSizeStreamController
        .add([AppConfig.screenWidth, AppConfig.screenHeight]);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Agymcted"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: AppConfig.screenHeight,
                  width: AppConfig.screenWidth,
                  color: Colors.amber,
                  child: Text(
                    "test",
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
