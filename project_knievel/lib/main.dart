// Ben was here!
// Logan was here!
// Preston was here!
// Mel was here!

import 'package:flutter/material.dart';
import 'package:project_knievel/Trick.dart';
import 'package:project_knievel/TrickList.dart';
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
          style:
              TextStyle(color: Color(0xffffffff), fontWeight: FontWeight.bold),
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

String? selectedDifficulty;

final List<String> difficulty = [
  'Easy',
  'Intermediate',
  'Hard',
];

var trickListSkateboard = [
  'Manual',
  'Switch',
  'Ollie',
  'Kickflip',
  'Schuvvit',
  'Nose Stall',
  'Tray Flip',
  'Hard Flip',
  'Backside 180'
];

var trickListBike = [
  'Bunny Hop',
  'Manual',
  'Air',
  'Bar Spin',
  '360',
  'Crank Flip',
  'Toboggan',
  'X-Up',
  'Tail Whip'
];

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
                        textTrickController.text =
                            (trickListSkateboard..shuffle()).first;
                      } else if (vehicleChoice == 2) {
                        // Create the scooter list
                        TrickList scooterList = TrickList();

                        // Create a tricks to add and add them
                        Trick trick1 = Trick(
                            "Tail whip",
                            "While jumping in the air kick the deck with your back foot and have it rotate 360 degrees around in the direction of your heels.",
                            1,
                            "https://www.youtube.com/watch?v=4OB8jE99wms",
                            false);

                        scooterList.addTrick(trick1);
                        trick1 = Trick(
                            "Bar Spin",
                            "While jumping in the air, let go of the handlebar with one hand and use the other hand to spin the handlebars around 360 degrees and then catch the handlebars before landing.",
                            1,
                            "https://www.youtube.com/watch?v=5-DLsXhFbb8",
                            false);

                        scooterList.addTrick(trick1);
                        trick1 = Trick(
                            "Heel Whip",
                            "While jumping in the air kick the deck with your back foot and have it rotate 360 degrees around in the direction of your toes(the opposite direction of a tailwhip).",
                            1,
                            "https://www.youtube.com/watch?v=d3zPXAet52s",
                            false);

                        scooterList.addTrick(trick1);
                        trick1 = Trick(
                            "Finger Whip",
                            "While jumping in the air, let go of the scooter with one hand and lift the scooter up between your legs. Use your hand to push the deck around 360 degrees similar to a tailwhip. ",
                            2,
                            "https://www.youtube.com/watch?v=svvamvVHVTA",
                            false);

                        scooterList.addTrick(trick1);
                        trick1 = Trick(
                            "Tail Whip Rewind",
                            "Perform a tail whip, but instead catching the deck with your back foot, kick the deck so it rotates back around 360 degrees in the opposite direction.",
                            2,
                            "https://www.youtube.com/watch?v=0vwdmHxyIOI",
                            false);

                        scooterList.addTrick(trick1);
                        trick1 = Trick(
                            "Turn Down",
                            "While jumping in the air, keep both feet on the deck and both hands on the handlebars but rotate the bars 180 degrees and at the same time the deck 180 degrees. Your body should twist around the scooter a little. ",
                            2,
                            "https://www.youtube.com/watch?v=nZnnn2NvHKs",
                            false);

                        scooterList.addTrick(trick1);
                        trick1 = Trick(
                            "Bri Flip",
                            "While jumping in the air, swing the whole scooter deck out in front of you and up above your head and then bring it back down under your feet. ",
                            3,
                            "https://www.youtube.com/watch?v=3GBW0-fN6dk",
                            false);

                        scooterList.addTrick(trick1);
                        trick1 = Trick(
                            "Inward Bri Flip",
                            "This is similar to a bri flip except instead of the scooter flipping out in front of you, you flip the scooter in the opposite direction, over your shoulder. ",
                            3,
                            "https://www.youtube.com/watch?v=nZnnn2NvHKs",
                            false);

                        scooterList.addTrick(trick1);
                        trick1 = Trick(
                            "Turn Down",
                            "While jumping in the air, keep both feet on the deck and both hands on the handlebars but rotate the bars 180 degrees and at the same time the deck 180 degrees. Your body should twist around the scooter a little. ",
                            3,
                            "https://www.youtube.com/watch?v=jq8QxjuiEFQ",
                            false);

                        scooterList.addTrick(trick1);

                        // Get the actual list from the scooterList object
                        List<Trick> trickListScooter =
                            List.castFrom<dynamic, Trick>(
                                scooterList.getList());

                        textTrickController.text =
                            (trickListScooter..shuffle()).first.getName();
                      } else if (vehicleChoice == 3) {
                        textTrickController.text =
                            (trickListBike..shuffle()).first;
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
        ));
  }
}
