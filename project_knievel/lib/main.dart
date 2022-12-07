// Ben was here agian!
// Logan was here!
// Preston was here!
// Mel was here!

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'package:project_knievel/Trick.dart';
import 'package:project_knievel/TrickList.dart';

// Create the scooter list
TrickList staticScooterList = TrickList();
TrickList scooterList = TrickList();

                        // Create a tricks to add and add them
                        Trick tailWhip = Trick(
                            "Tail Whip",
                            "While jumping in the air, kick the deck with your back foot and have it rotate 360 degrees around in the direction of your heels.",
                            1,
                            "https://cdn.discordapp.com/attachments/1049969501342547978/1049969571408384040/Y2Mate.is_-_How_to_Tailwhip_on_a_ScooterEASIEST__FASTEST_WAY-4OB8jE99wms-240p-1654088816481.mp4",
                            false);

                        Trick barSpin = Trick(
                            "Bar Spin",
                            "While jumping in the air, let go of the handlebar with one hand and use the other hand to spin the handlebars around 360 degrees and then catch the handlebars before landing.",
                            1,
                            "https://cdn.discordapp.com/attachments/1049969501342547978/1049971487311937576/Y2Mate.is_-_How_to_Barspin_a_Scooter_2020-5-DLsXhFbb8-240p-1654089014793.mp4",
                            false);

                        Trick heelWhip = Trick(
                            "Heel Whip",
                            "While jumping in the air, kick the deck with your back foot and have it rotate 360 degrees around in the direction of your toes (the opposite direction of a tailwhip).",
                            1,
                            "https://cdn.discordapp.com/attachments/1049969501342547978/1049971559948886016/Y2Mate.is_-_HOW_TO_HEEL_WHIP-d3zPXAet52s-240p-1654088973211.mp4",
                            false);

                        Trick fingerWhip = Trick(
                            "Finger Whip",
                            "While jumping in the air, let go of the scooter with one hand and lift the scooter up between your legs. Use your hand to push the deck around 360 degrees similar to a tailwhip.",
                            2,
                            "https://cdn.discordapp.com/attachments/1049969501342547978/1049972018667339817/Y2Mate.is_-_How_to_Fingerwhip_on_a_ScooterEASIEST__FASTEST_WAY-svvamvVHVTA-144p-1656366729245_1.mp4",
                            false);

                        Trick tailWhipRewind = Trick(
                            "Tail Whip Rewind",
                            "Perform a tail whip, but instead of catching the deck with your back foot, kick the deck so it rotates back around 360 degrees in the opposite direction.",
                            2,
                            "https://cdn.discordapp.com/attachments/1049969501342547978/1049972446574411838/Y2Mate.is_-_How_to_Tailwhip_Rewind_on_a_Scooter_EASY__SIMPLE-0vwdmHxyIOI-144p-1654089039613_1.mp4",
                            false);

                        Trick turnDown = Trick(
                            "Turn Down",
                            "While jumping in the air, keep both feet on the deck and both hands on the handlebars but rotate the bars 180 degrees and at the same time the deck 180 degrees. Your body should twist around the scooter a little.",
                            2,
                            "https://cdn.discordapp.com/attachments/1049969501342547978/1049972800447860747/Y2Mate.is_-_How_to_Turndown_on_a_Scooter-nZnnn2NvHKs-480p-1654089137447_1.mp4",
                            false);

                        Trick briFlip = Trick(
                            "Bri Flip",
                            "While jumping in the air, swing the whole scooter deck out in front of you and up above your head and then bring it back down under your feet.",
                            3,
                            "https://cdn.discordapp.com/attachments/1049969501342547978/1049973285871419463/Y2Mate.is_-_HOW_TO_BRI_FLIP_ON_A_SCOOTERBeginner_Tutorial-3GBW0-fN6dk-144p-1654088966242_1.mp4",
                            false);

                        Trick inwardBriFlip = Trick(
                            "Inward Bri Flip",
                            "This is similar to a Bri Flip except instead of the scooter flipping out in front of you, you flip the scooter in the opposite direction and over your shoulder.",
                            3,
                            "https://cdn.discordapp.com/attachments/1049969501342547978/1049973347137630208/Y2Mate.is_-_HOW_TO_INWARD_BRI_-_SCOOTER_TRICK_TIPS-jq8QxjuiEFQ-144p-1654898335296.mp4",
                            false);

                        Trick backFlip = Trick(
                            "Back Flip",
                            "While jumping in the air, throw your head up and backwards and pull the scooter around over your body. Your whole body should rotate, head over heels. Spot the landing, and bring your deck back between you and the ground.",
                            3,
                            "https://cdn.discordapp.com/attachments/1049969501342547978/1049974287865487370/Y2Mate.is_-_How_to_Backflip_on_a_Scooter_EASY__SIMPLE-CoH1pJL3Z7s-144p-1654089063666_1.mp4",
                            false);

// Get the actual list from the scooterList object
List<Trick> staticListScooter = List.castFrom<dynamic, Trick>(staticScooterList.getList());
List<Trick> trickListScooter = List.castFrom<dynamic, Trick>(scooterList.getList());

void main() {

  staticScooterList.addTrick(tailWhip);
  staticScooterList.addTrick(barSpin);
  staticScooterList.addTrick(heelWhip);
  staticScooterList.addTrick(fingerWhip);
  staticScooterList.addTrick(tailWhipRewind);
  staticScooterList.addTrick(turnDown);
  staticScooterList.addTrick(briFlip);
  staticScooterList.addTrick(inwardBriFlip);
  staticScooterList.addTrick(backFlip);
  scooterList.addTrick(tailWhip);
  scooterList.addTrick(barSpin);
  scooterList.addTrick(heelWhip);
  scooterList.addTrick(fingerWhip);
  scooterList.addTrick(tailWhipRewind);
  scooterList.addTrick(turnDown);
  scooterList.addTrick(briFlip);
  scooterList.addTrick(inwardBriFlip);
  scooterList.addTrick(backFlip);

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

                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomLeft,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 25,
                        minimumSize: const Size(200, 50),
                        maximumSize: const Size(200, 50),
                        backgroundColor: const Color(0xff941B0C),
                      ),
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ViewTrickPageWidget()),
                        );
                      },
                      child: const Text(
                        'View Trick List',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          )),
    );
  }
}

final List<String> difficulty = [
  'Any',
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

String trickDescription = "";
String trickName = "";
String trickVideo = "";

class ViewTrickWidget extends StatefulWidget {
  const ViewTrickWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ViewTrick createState() => _ViewTrick();
}

class _ViewTrick extends State<ViewTrickWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(trickVideo)..initialize().then((_) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff220901),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff941B0C),
        title: Text(
          'View Trick: $trickName',
          style: const TextStyle(
            color: Color(0xffffffff),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Column (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    color: const Color.fromARGB(255, 83, 28, 9),
                    child: Container(
                      width: 500,
                      margin: const EdgeInsets.all(10),
                      child: _controller.value.isInitialized ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: Stack (
                          alignment: Alignment.bottomCenter,
                          
                          children: [ 
                            VideoPlayer(_controller),
                            VideoProgressIndicator(
                              _controller, 
                              allowScrubbing: true, 
                              padding: const EdgeInsets.all(5),
                              colors: const VideoProgressColors(playedColor: Color(0xff941B0C))),
                          ],
                        ),
                      )
                      : Container()
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.all(15),
                    child: FloatingActionButton(
                      backgroundColor: const Color(0xff941B0C),
                      onPressed: () {
                        setState(() {
                          _controller.value.isPlaying ? _controller.pause() : _controller.play();
                        });
                      },
                      child: Icon(
                        _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                width: 250,
                height: 500,
                margin: const EdgeInsets.all(15),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    trickDescription,
                    overflow: TextOverflow.clip,
                    style: const TextStyle(
                      color: Color(0xffBC3908),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                )
              ),

            ],
          )
        )
      )

    );
  }
}

class ViewTrickPageWidget extends StatefulWidget {
  const ViewTrickPageWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ViewTrickPage createState() => _ViewTrickPage();
}

class _ViewTrickPage extends State<ViewTrickPageWidget> {

  String trickDifficulty(int mode) {
    switch (mode) {
      case 1: return "Easy";
      case 2: return "Intermediate";
      case 3: return "Hard";
      }
    return "null";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff220901),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff941B0C),
        title: const Text(
          'View Trick Page',
          style: TextStyle(
            color: Color(0xffffffff),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [

            Align (
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.all(5),
                child: const Text(
                  "Scooter",
                  style: TextStyle(
                    color: Color(0xffBC3908),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const Divider(
              height: 3,
              thickness: 3,
              color: Color(0xffBC3908)
            ),

            Align (
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.all(5),
                child: Column(
                  children: staticListScooter.map((trick) => Container(
                    margin: const EdgeInsets.all(1),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 25,
                        minimumSize: const Size(400, 35),
                        maximumSize: const Size(400, 35),
                        backgroundColor: const Color(0xff941B0C),
                      ),
                      
                      onPressed: () { 
                        trickDescription = trick.getDescription();
                        trickName = trick.getName();
                        trickVideo = trick.getHowTo();

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ViewTrickWidget()),
                        );
                      },

                      child: Row (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,  
                        children: [  

                          Text(
                            trick.getName(),
                            style: const TextStyle(
                              color: Color(0xffffffff),
                            ),
                          ),

                          Text(
                            trickDifficulty(trick.getDifficulty()),
                            style: const TextStyle(
                              color: Color(0xffffffff),
                            ),
                          ),

                        ],
                      ),

                    ),
                  ),
                  ).toList(),
                ),
              ),
            ),

          ],
        )
      )

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

  bool firstGenerate = false;
  var sameTrick = "";
  int selectedDifficulty = 0;
  String? difficultyDisplay;
  
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

                // --Difficulty Test-- This is a test container to show that the difficulties accurately represent their respective number.
                /*Container(
                  margin: const EdgeInsets.all(25),
                  child: Text(
                    selectedDifficulty.toString(),
                    style: const TextStyle(
                      color: Color(0xffBC3908),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),*/

                Container(
                  margin: const EdgeInsets.all(25),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      maximumSize: const Size(200, 50),
                      backgroundColor: const Color(0xff941B0C),
                    ),
                    onPressed: () {

                      if (vehicleText == "Scooter") {
                        trickName = trickListScooter.first.getName();
                        trickDescription = trickListScooter.first.getDescription();
                        trickVideo = trickListScooter.first.getHowTo();
                      }

                      if (firstGenerate == true) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ViewTrickWidget()),
                        );
                      }

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
                      firstGenerate = true;

                      if (vehicleChoice == 1) {
                        
                        textTrickController.text =
                            (trickListSkateboard..shuffle()).first;

                      } else if (vehicleChoice == 2) {
                        trickListScooter.shuffle();

                        while (sameTrick == trickListScooter.first.getName() || (selectedDifficulty != trickListScooter.first.getDifficulty() && selectedDifficulty != 0)) {
                          trickListScooter.shuffle();
                        }

                        sameTrick = trickListScooter.first.getName();
                        textTrickController.text = trickListScooter.first.getName();

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
                    value: difficultyDisplay,
                    onChanged: (value) {
                      setState(() {
                        difficultyDisplay = value as String;
                        switch (value.toString()) {
                          case "Any":
                            selectedDifficulty = 0;
                            break;
                          case "Easy":
                            selectedDifficulty = 1;
                            break;
                          case "Intermediate":
                            selectedDifficulty = 2;
                            break;
                          case "Hard":
                            selectedDifficulty = 3;
                            break;
                        }
                      });
                    },
                  ),
                ),

                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomLeft,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 25,
                        minimumSize: const Size(200, 50),
                        maximumSize: const Size(200, 50),
                        backgroundColor: const Color(0xff941B0C),
                      ),
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ViewTrickPageWidget()),
                        );
                      },
                      child: const Text(
                        'View Trick List',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}
