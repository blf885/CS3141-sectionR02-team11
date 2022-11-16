// Ben was here!
// Logan was here!
// Preston was here!
// Mel was here!
// Kelby was here!

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
                      vehicleChoice = 1;
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
                    ),
                    child: const Text("Scooter"),
                    onPressed: () {
                      vehicleChoice = 2;
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
                    ),
                    child: const Text("Bike"),
                    onPressed: () {
                      vehicleChoice = 3;
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

  // getter method for known
  bool get getKnown {
    return known;
  }

  // setter method for known
  bool setKnown(bool newKnown) {
    bool temp = known;
    known = newKnown;
    return temp;
  }

  // getter method for difficulty
  int get getDifficulty {
    return difficulty;
  }

  // setter method for difficulty
  int setDifficulty(int newDifficulty) {
    int temp = difficulty;
    difficulty = newDifficulty;
    return temp;
  }

  // getter method for vehicle
  int get getVehicle {
    return vehicle;
  }

  // setter method for vehicle
  int setVehicle(int newVehicle) {
    int temp = vehicle;
    vehicle = newVehicle;
    return temp;
  }
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

var trickListSkateboard = ['A', 'B', 'C', 'D', 'E'];
var trickListScooter = ['F', 'G', 'H', 'I', 'J'];
var trickListBike = ['K', 'L', 'M', 'N', 'O'];

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
        appBar: AppBar(
          title: const Text('Trick Generator'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Container(
                  margin: const EdgeInsets.all(25),
                  child: TextField(
                    controller: textTrickController,
                    textAlign: TextAlign.center,
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
                    child: const Text('Generate Trick'),
                  ),
                ),
                
                DropdownButtonHideUnderline(
                  child: DropdownButton(
                    hint: Text(
                      'Select Difficulty',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    items: difficulty
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              alignment: AlignmentDirectional.centerStart,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
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
        ));
  }
}