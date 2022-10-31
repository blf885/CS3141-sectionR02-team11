// Ben was here!
// Logan was here!
// Preston was here!
// Mel was here!

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Project_Knievel',
    home: ChooseVehicle(),
  ));
}

class ChooseVehicle extends StatelessWidget {
  const ChooseVehicle({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Knievel'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle:
                        const TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  onPressed: null,
                  child: const Text('Choose a Vehicle'),
                ),
                Container(
                  margin: const EdgeInsets.all(25),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 25,
                      minimumSize: const Size(200, 50),
                      maximumSize: const Size(200, 50),
                    ),
                    child: const Text("Skateboard"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TrickGenWidget()),
                      );
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(25),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 25,
                      minimumSize: const Size(200, 50),
                      maximumSize: const Size(200, 50),
                    ),
                    child: const Text("Scooter"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TrickGenWidget()),
                      );
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(25),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 25,
                      minimumSize: const Size(200, 50),
                      maximumSize: const Size(200, 50),
                    ),
                    child: const Text("Bike"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TrickGenWidget()),
                      );
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

/* This is the TrickList Constructor including 'mandatory' parameters. */
class TrickList {
  String name;
  String list; // will need to be adjucted for doubly linked list implenentation
  int size;
  int begScooterSize;
  int begSkateSize;
  int begBikeSize;
  int intScooterSize;
  int intBikeSize;
  int intSkateSize;
  int expScooterSize;
  int expSkateSize;
  int expBikeSize;

  TrickList(
      this.name,
      this.list,
      this.size,
      this.begScooterSize,
      this.begBikeSize,
      this.begSkateSize,
      this.expBikeSize,
      this.expScooterSize,
      this.expSkateSize,
      this.intBikeSize,
      this.intScooterSize,
      this.intSkateSize);
}

// Feature class constructor
class Feature {
  String name;
  String description;
  String trickList; // will need to be adjusted to doubly linked list
  bool availability;

  Feature(this.availability, this.description, this.name, this.trickList);
}

// Trick Generator constructor to initialize paramenters for this class
class TrickGenerator {
  bool known;
  int difficulty;
  int vehicle;
  String
      featureList; // will need to be adjusted for doubly linked list implementation

  TrickGenerator(this.difficulty, this.featureList, this.known, this.vehicle);
}

// Trick class constructor
class Trick {
  String name;
  String description;
  int difficulty;
  String howTo;
  String featureList; // will be adjucted to doubly linked list implementation
  int vehicle;

  Trick(this.description, this.difficulty, this.featureList, this.howTo,
      this.name, this.vehicle);
}

class TrickGenWidget extends StatelessWidget {
  const TrickGenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trick Generator'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 25,
            minimumSize: const Size(200, 50),
            maximumSize: const Size(200, 50),
          ),
          onPressed: () {
            Navigator.pop(context);

            // CURRENTLY NAVIGATES BACK TO HOME PAGE. THIS WILL NOT BE THE CASE.
            // THIS IS WHERE THE GENERATED TRICKS WILL SHOW UP WHEN YOU PUSH THE BUTTON!!
          },
          child: const Text('Generate Trick'),
        ),
      ),
    );
  }
}
/*
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/
