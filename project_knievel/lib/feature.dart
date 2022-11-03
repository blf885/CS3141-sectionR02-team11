// Defines feature objects
class Feature {
    String name;
    String description;
    // trickList DLL TODO
    bool availability;

    // Constructor
    Feature(this.name, this.description, this.availability);

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

    bool setAvailability(bool a) {
        String old = availability;
        availability = a;
        return old;
    }

    // Getters
    String getName() {
        return name;
    }

    String getDescription() {
        return description;
    }

    bool getAvailability() {
        return availability;
    }

    // TODO add addToTL()
    // TODO add deleteFromTL()
}