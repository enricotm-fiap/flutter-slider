import 'package:flutter/material.dart';
import 'package:my_app/color_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double size = 300;
  double red = 0, green = 0, blue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter State'),
          actions: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  size = size > 50 ? size -= 50 : size;
                });
              },
            ),
            IconButton(
              icon: const Text('S'),
              onPressed: () {
                setState(() {
                  size = 50;
                });
              },
            ),
            IconButton(
              icon: const Text('M'),
              onPressed: () {
                setState(() {
                  size = 300;
                });
              },
            ),
            IconButton(
              icon: const Text('L'),
              onPressed: () {
                setState(() {
                  size = 500;
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  size = size < 500 ? size += 50 : size;
                });
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Icon(
                  Icons.lock_clock,
                  size: size,
                  color: Color.fromRGBO(
                      red.toInt(), green.toInt(), blue.toInt(), 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ColorSlider(
                  color: Colors.red,
                  value: red,
                  onChanged: (value) {
                    setState(() {
                      red = value;
                    });
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ColorSlider(
                  color: Colors.green,
                  value: green,
                  onChanged: (value) {
                    setState(() {
                      green = value;
                    });
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ColorSlider(
                  color: Colors.blue,
                  value: blue,
                  onChanged: (value) {
                    setState(() {
                      blue = value;
                    });
                  }),
            ),
          ],
        ));
  }
}
