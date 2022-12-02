import 'dart:core';
import 'package:project_knievel/Trick.dart';

/* This is the TrickList class including 'mandatory' parameters. */

class TrickList {
  int _size = 0;
  late List<Trick> _trickList;

  //Constructor method to initialize
  TrickList() {
    _size = 0;
    _trickList =
        List<Trick>.filled(0, Trick("", "", 1, "", true), growable: true);
  }

  // Returns the current size of the list
  int getSize() {
    return _size;
  }

  // Returns the list of tricks
  List getList() {
    return _trickList;
  }

  //add trick method to add tricks to list (doesn't need to return)
  Trick addTrick(Trick x) {
    _trickList.add(x);
    _size++;
    return x;
  }

  // remove trick method, should return what trick we have removed
  Trick removeTrick(Trick x) {
    _trickList.remove(x);
    _size--;
    return x;
  }
}
