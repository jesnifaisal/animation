import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class myAPP extends StatefulWidget {
  const myAPP({super.key});

  @override
  State<myAPP> createState() => _myAppState();
}

class _myAppState extends State<myAPP> {
  final bool _customicon = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(title: Text("Expansion")),
      body: Container(
        color: Colors.greenAccent,
        child: ExpansionTile(
          title: Text("Expansion tile"),
          trailing: Icon(_customicon ? Icons.download : Icons.arrow_drop_down),
          children: [
            Container(
              width: 380,
              height: 300,
              color: Colors.white,
              child: Lottie.asset("asset/animation_lmw4oivt.json"),
            ),
          ],
          onExpansionChanged: (bool expanded) {},
        ),
      ),
    );
  }
}
