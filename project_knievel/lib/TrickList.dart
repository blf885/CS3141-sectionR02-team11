import 'dart:core';
import 'package:project_knievel/Trick.dart';

/* This is the TrickList class including 'mandatory' parameters. */

class TrickList {
  String listName = "";
  int size = 0;
  List<Trick> trickList = List<Trick>.filled(0, Trick("", "", 1, "", true),
      growable: true); // set to empty
  // create variable, set to empty list
  // did this way due to syntax

  //Constructor method to initialize
  TrickList(String x, int size, List<Trick> c) {
    listName = x;
    size = size;
    trickList = c;
  }

  // this constructor requires the name, the size
  /*
    TrickList( this.trickList,
      this.size,
     {required this.name});
  */

  // getter methods
  String getName() {
    return listName;
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
  // final trickList = List<Trick>.filled(
  //     150, Trick("Tailwhip", "360 of deck", 1, "thelink.com", true),
  //     growable: true);

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
