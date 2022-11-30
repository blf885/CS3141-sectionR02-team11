import 'package:project_knievel/TrickList.dart';
import 'package:test/test.dart';
import 'package:project_knievel/Trick.dart';

void main() {
  //---------------------------------------------------------------------------
  // Trick Class Tests

  // Test Trick.setName
  test('Test Trick constructor and Trick.setName method', () {
    Trick theTrick =
        Trick('Tailwhip', 'The deck spins around 360', 1, 'theLink.com', true);
    expect(theTrick.setName('Tail-whip'), equals('Tailwhip'));
  });

  // Test Trick.setDesciption
  test('Test Trick constructor and Trick.setDesciption method', () {
    Trick theTrick =
        Trick('Tailwhip', 'The deck spins around 360', 1, 'theLink.com', true);
    expect(theTrick.setDescription('The deck is kicked around 360'),
        equals('The deck spins around 360'));
  });

  // Test Trick.setDifficulty
  test('Test Trick constructor and Trick.setDifficulty method', () {
    Trick theTrick =
        Trick('Tailwhip', 'The deck spins around 360', 2, 'theLink.com', true);
    expect(theTrick.setDifficulty(2), equals(2));
  });

  // Test Trick.setHowTo
  test('Test Trick constructor and Trick.setHowTo method', () {
    Trick theTrick =
        Trick('Tailwhip', 'The deck spins around 360', 2, 'theLink.com', true);
    expect(theTrick.setHowTo('theNewLink.com'), equals('theLink.com'));
  });

  // Test Trick.setKnow
  test('Test Trick constructor and Trick.setKnow method', () {
    Trick theTrick =
        Trick('Tailwhip', 'The deck spins around 360', 2, 'theLink.com', false);
    expect(theTrick.setKnow(true), equals(false));
  });

  // Test Trick.getName
  test('Test Trick constructor and Trick.getName method', () {
    Trick theTrick =
        Trick('Tailwhip', 'The deck spins around 360', 2, 'theLink.com', false);
    expect(theTrick.getName(), equals('Tailwhip'));
  });

  // Test Trick.getDescription
  test('Test Trick constructor and Trick.getDescription method', () {
    Trick theTrick =
        Trick('Tailwhip', 'The deck spins around 360', 2, 'theLink.com', false);
    expect(theTrick.getDescription(), equals('The deck spins around 360'));
  });

  // Test Trick.getDifficulty
  test('Test Trick constructor and Trick.getDifficulty method', () {
    Trick theTrick =
        Trick('Tailwhip', 'The deck spins around 360', 2, 'theLink.com', false);
    expect(theTrick.getDifficulty(), equals(2));
  });

  // Test Trick.getHowTo
  test('Test Trick constructor and Trick.getHowTo method', () {
    Trick theTrick =
        Trick('Tailwhip', 'The deck spins around 360', 2, 'theLink.com', false);
    expect(theTrick.getHowTo(), equals('theLink.com'));
  });

  // Test Trick.getKnow
  test('Test Trick constructor and Trick.getKnow method', () {
    Trick theTrick =
        Trick('Tailwhip', 'The deck spins around 360', 2, 'theLink.com', false);
    expect(theTrick.getKnow(), equals(false));
  });

  //TODO Add the feature list method tests(x3)

  //---------------------------------------------------------------------------
  // Feature Class Tests

  // Trick List class Tests
  test('Test Trick_List constructor and Trick_List.setName method', () {
    List<Trick> n =
        List<Trick>.filled(0, Trick("", "", 1, "", true), growable: true);
    TrickList trick = TrickList(
        'Trick1', 2, n); // list temp and many 1's are temp placeholders
    expect(trick.setName('Tailwhip'), equals('Tailwhip'));
  });

  test('Testing Tricklist constructor and Tricklist.getName method ', () {
    List<Trick> n =
        List<Trick>.filled(0, Trick("", "", 1, "", true), growable: true);
    TrickList trick = TrickList(
        'Trick1', 1, n); // list temp and many 1's are temp placeholders
    expect(trick.getName(), equals('Trick1'));
  });

  test('Testing Tricklist constructor and Tricklist.getSize method ', () {
    List<Trick> n =
        List<Trick>.filled(0, Trick("", "", 1, "", true), growable: true);
    TrickList trick = TrickList(
        'Trick1', 1, n); // list temp and many 1's are temp placeholders
    expect(trick.getSize(), equals(2));
  });

  test('Testing Tricklist constructor and Tricklist.getSize method ', () {
    List<Trick> n =
        List<Trick>.filled(0, Trick("", "", 1, "", true), growable: true);
    TrickList trick = TrickList(
        'Trick1', 1, n); // list temp and many 1's are temp placeholders
    expect(trick.setSize(2), equals(2));
  });

  // TODO: Re-check
  test('Testing TrickList add method', () {
    List<Trick> n =
        List<Trick>.filled(0, Trick("", "", 1, "", true), growable: true);
    TrickList trick = TrickList(
        'Trick1', 1, n); // list temp and many 1's are temp placeholders
    Trick c = Trick("Tailwhip", "360 of deck", 1, "thelink.com", true);
    Trick X = Trick("Tailwhip", "360 of deck", 1, "thelink.com", true);
    expect(trick.addTrick(c), equals(X));
  });

  test('Testing TrickList add method', () {
    List<Trick> n =
        List<Trick>.filled(0, Trick("", "", 1, "", true), growable: true);
    TrickList trick = TrickList(
        'Trick1', 1, n); // list temp and many 1's are temp placeholders
    Trick c = Trick("Tailwhip", "360 of deck", 1, "thelink.com", true);
    Trick X = Trick("Tailwhip", "360 of deck", 1, "thelink.com", true);
    expect(trick.removeTrick(c), equals(X));
  });
}
