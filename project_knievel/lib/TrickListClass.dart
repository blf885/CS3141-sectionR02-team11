/* This is the TrickList class including 'mandatory' parameters. */
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

  //Constructor method
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

  //add trick (DLL or whatever else is chosen)
  //DLL addTrick(Trick theTrick){
  //Trick trick = new Trick(theTrick);
  // return trick;
  //}

  //removetrick(Trick theTrick){
  //Trick trick = new Trick(theTrick);
  //
  //  return trick;
  //}

  //set the list
  //DLL setTheList(DLL tricks){
  //DLL list = new DLL(DLL Tricks);
  //
  // return list;
  //}
}
