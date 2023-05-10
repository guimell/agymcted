
import 'package:flutter/material.dart';
import 'config.dart';

class GroupScreen extends StatefulWidget {
  const GroupScreen({super.key});

  @override
  State<GroupScreen> createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  @override
  Widget build(BuildContext context) {
    // update (globally) screen size
    AppConfig.screenWidth = MediaQuery.of(context).size.width;
    AppConfig.screenHeight = MediaQuery.of(context).size.height;
    AppConfig.screenSizeStreamController
        .add([AppConfig.screenWidth, AppConfig.screenHeight]);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Group Name"),
        ),
        body: const Center(
          child: Text("test"),
        ));
  }
}
