import 'dart:core';

import 'dart:core';

//import 'package:project_knievel/main.dart';
import 'package:project_knievel/Trick.dart';
//import 'package:project_knievel/main.dart';

/* This is the TrickList class including 'mandatory' parameters. */

class TrickList {
  String name;
  List<Trick> trickList =
      List<Trick>.filled(1, Trick("", "", 1, "", false), growable: true);
  int size;

  //Constructor method
  TrickList(this.name, this.trickList, this.size);

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

  // getter methods
  String getName() {
    return name;
  }

  int getSize() {
    return size;
  }

  // setter methods
  String setName(String name) {
    String oldName = name;

    return oldName;
  }

  int setSize(int size) {
    int sizeSet = size;

    return sizeSet;
  }

  //add trick method to add tricks to list (doesn't need to return)
  void addTrick(Trick x) {
    trickList.add(x);
  }

  // remove trick method, should return what trick we have removed
  Trick removeTrick(Trick x) {
    trickList.remove(x);
    return x;
  }
}
