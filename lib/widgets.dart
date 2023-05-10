import 'package:flutter/material.dart';
import 'config.dart';
import 'group_screen.dart';

class GroupContainer extends StatelessWidget {
  const GroupContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const GroupScreen()),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(6),
        height: AppConfig.screenHeight * 0.2,
        width: AppConfig.screenWidth,
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Nome do grupo",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Participantes:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
