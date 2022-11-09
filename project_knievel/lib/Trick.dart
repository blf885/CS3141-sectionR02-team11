// Defines trick objects
// TODO Remove this once you get the Trick class working in the other file...
class Trick {
  String name;
  String description;
  int difficulty;
  String howTo;
  // Feature FeatureList;
  bool know;

  // Constructor
  Trick(this.name, this.description, this.difficulty, this.howTo, this.know);

  // -------------------------------------------------------------------------
  // Setters and getters

  // Setters return the old value that was replaced
  String setName(String n) {
    String old = name;
    name = n;
    return old;
  }

  String setDescription(String d) {
    String old = description;
    description = d;
    return old;
  }

  int setDifficulty(int df) {
    int old = difficulty;
    difficulty = df;
    return old;
  }

  String setHowTo(String ht) {
    String old = howTo;
    howTo = ht;
    return old;
  }

  bool setKnow(bool k) {
    bool old = know;
    know = k;
    return old;
  }

  // Getters
  String getName() {
    return name;
  }

  String getDescription() {
    return description;
  }

  int getDifficulty() {
    return difficulty;
  }

  String getHowTo() {
    return howTo;
  }

  // TODO add getFeatureList()

  bool getKnow() {
    return know;
  }

  // TODO add addToFeatureList()
  // TODO add deleteFromFeatureList()

}
