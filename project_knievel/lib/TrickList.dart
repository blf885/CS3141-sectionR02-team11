import 'dart:core';
import 'package:project_knievel/Trick.dart';

/* This is the TrickList class including 'mandatory' parameters. */

class TrickList {
  String name = "";
  //Trick trick;
  String list = "";
  //final trickList; // will need to be adjucted for doubly linked list implenentation
  int size = 0;

  //Constructor method
  TrickList(String name, String list, int size) {
    this.name = name;
    this.list = list;
    //this.trick,
    // this.trickList,
    this.size = size;
  }
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

  /* New growable list is created with intial length of 150 all filled with the value of zero */
  // TODO
  final trickList = List<Trick>.filled(
      150, Trick("Tailwhip", "360 of deck", 1, "thelink.com", true),
      growable: true);

  //add trick method to add tricks to list (doesn't need to return)
  Trick addTrick(Trick x) {
    trickList.add(x);

    return x;
  }

  // remove trick method, should return what trick we have removed
  Trick removeTrick(Trick x) {
    trickList.remove(x);

    return x;
  }
}
