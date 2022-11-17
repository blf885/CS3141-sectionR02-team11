// Ben was here!
// Logan was here!
// Preston was here!
// Mel was here!

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    title: 'Project_Knievel',
    home: ChooseVehicle(),
  ));
}

int vehicleChoice = 0;
var textTrickController = TextEditingController();
String vehicleText = '';

class ChooseVehicle extends StatelessWidget {
  const ChooseVehicle({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff220901),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff941B0C),
        title: const Text(
          'Project Knievel',
          style: TextStyle(
            color: Color(0xffffffff),
            fontWeight: FontWeight.bold),
        ),
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
                  child: const Text(
                    'Choose a Vehicle',
                    style: TextStyle(
                      color: Color(0xffBC3908),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(25),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 25,
                      minimumSize: const Size(200, 50),
                      maximumSize: const Size(200, 50),
                      backgroundColor: const Color(0xff941B0C),
                    ),
                    child: const Text(
                      "Skateboard",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      vehicleChoice = 1;
                      vehicleText = "Skateboard";
                      textTrickController.text = "";

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
                      backgroundColor: const Color(0xff941B0C),
                    ),
                    child: const Text(
                      "Scooter",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      vehicleChoice = 2;
                      vehicleText = "Scooter";
                      textTrickController.text = "";

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
                      backgroundColor: const Color(0xff941B0C),
                    ),
                    child: const Text(
                      "Bike",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      vehicleChoice = 3;
                      vehicleText = "Bike";
                      textTrickController.text = "";

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

  // this constructor requires the name, the size
  /*
    TrickList( this.list,
      this.size,
      this.begScooterSize,
      this.begBikeSize,
      this.begSkateSize,
      this.expBikeSize,
      this.expScooterSize,
      this.expSkateSize,
      this.intBikeSize,
      this.intScooterSize,
      this.intSkateSize, {required this.name});
  */
}

// Feature class constructor
class Feature {
  String name;
  String description;
  String trickList; // will need to be adjusted to doubly linked list
  bool availability;

  Feature(this.availability, this.description, this.name, this.trickList);

  // this constructor requires the name of the feature
  /*
    Feature(this.availability, this.description. this.trickList, {required this.name});
  */

}

// Trick Generator constructor to initialize paramenters for this class
class TrickGenerator {
  bool known;
  int difficulty;
  int vehicle;
  String
      featureList; // will need to be adjusted for doubly linked list implementation

  TrickGenerator(this.difficulty, this.featureList, this.known, this.vehicle);

// this constructor requires the 'known' and the 'vehicle' type parameters to be entered. All others are optional
/*
  TrickGenerator(this.difficulty, this.featureList,
      {required this.known, required this.vehicle});

*/
}

// Trick class
class Trick {
  String name;
  String description;
  int difficulty;
  String howTo;
  String featureList; // will be adjucted to doubly linked list implementation
  int vehicle;

  Trick(this.description, this.difficulty, this.featureList, this.howTo,
      this.name, this.vehicle);

// this constructor requires name and vehcle type for this class but others are optional (Can be uncommented)
/*
  Trick(this.description, this.difficulty, this.featureList, this.howTo,
      {required this.name, required this.vehicle});
 */

}

String? selectedDifficulty;

final List<String> difficulty = [
  'Easy',
  'Intermediate',
  'Hard',
];

var trickListSkateboard = ['Manual', 'Switch', 'Ollie', 'Kickflip', 'Schuvvit', 'Nose Stall', 'Tray Flip', 'Hard Flip', 'Backside 180'];
var trickListScooter = ['Tail Whip', 'Bar Spin', 'Heal Whip', 'Finger Whip', 'Tail Whip Rewind', 'Turn Down', 'Bri Flip', 'Inward Bri Flip', 'Back Flip'];
var trickListBike = ['Bunny Hop', 'Manual', 'Air', 'Bar Spin', '360', 'Crank Flip', 'Toboggan', 'X-Up', 'Tail Whip'];

class ViewTrickWidget extends StatefulWidget {
  const ViewTrickWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ViewTrick createState() => _ViewTrick();
}

class _ViewTrick extends State<ViewTrickWidget> {
  String viewTrickName = textTrickController.text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff220901),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff941B0C),
        title: Text(
          'View Trick: $viewTrickName',
          style: const TextStyle(
            color: Color(0xffffffff),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class TrickGenWidget extends StatefulWidget {
  const TrickGenWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TrickGen createState() => _TrickGen();
}

class _TrickGen extends State<TrickGenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff220901),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xff941B0C),
          title: const Text(
            'Trick Generator',
            style: TextStyle(color: Color(0xffffffff)),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  margin: const EdgeInsets.all(25),
                  child: Text(
                    vehicleText,
                    style: const TextStyle(
                      color: Color(0xffBC3908),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.all(25),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      maximumSize: const Size(200, 50),
                      backgroundColor: const Color(0xff941B0C),
                    ),
                      onPressed: () { 
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ViewTrickWidget()),
                        );
                      },
                      child: TextField(
                        enabled: false,
                        controller: textTrickController,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                        style: const TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.all(25),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 25,
                      minimumSize: const Size(200, 50),
                      maximumSize: const Size(200, 50),
                      backgroundColor: const Color(0xff941B0C),
                    ),
                    onPressed: () {

                      if (vehicleChoice == 1) {
                        textTrickController.text = (trickListSkateboard..shuffle()).first;
                      }
                      else if (vehicleChoice == 2) {
                        textTrickController.text = (trickListScooter..shuffle()).first;
                      }
                      else if (vehicleChoice == 3) {
                        textTrickController.text = (trickListBike..shuffle()).first;
                      }

                    },
                    child: const Text(
                      'Generate Trick',
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                
                DropdownButtonHideUnderline(
                  child: DropdownButton(
                    dropdownColor: const Color(0xff941B0C),
                    // ignore: prefer_const_constructors
                    hint: Text(
                      'Select Difficulty',
                      style: const TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: const Color(0xffffffff),
                    ),
                    items: difficulty
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              alignment: AlignmentDirectional.centerStart,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedDifficulty,
                    onChanged: (value) {
                      setState(() {
                        selectedDifficulty = value as String;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        )
      );
  }
}