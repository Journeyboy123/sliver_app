import 'package:flutter/material.dart';

class SliverApp extends StatefulWidget {
  const SliverApp({super.key});

  @override
  State<SliverApp> createState() => _SliverAppState();
}

class _SliverAppState extends State<SliverApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
            floating: true,
            //pinned: true,
            toolbarHeight: 50,
            flexibleSpace: FlexibleSpaceBar(
              title: Center(
                child: Text(
                  "SLIVER APP SCREEN",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            )),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Container(
              height: 75,
              margin: EdgeInsets.all(10),
              color: Color.fromARGB(255, 143, 93, 213),
            );
          },
          childCount: 10,
        ))
      ]),
    );
  }
}
