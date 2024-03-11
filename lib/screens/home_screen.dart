import 'package:flutter/material.dart';
import 'package:linstant_app/data/dummy_data.dart';
import 'package:linstant_app/widgets/event_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.white, Color.fromARGB(255, 230, 230, 120)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter),
      ),
      child: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, index) => EventItem(
          event: dummyData[index],
        ),
      ),
    );
  }
}
