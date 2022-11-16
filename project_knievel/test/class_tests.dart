import 'package:test/test.dart';
import 'package:project_knievel/Trick.dart';

void main() {
  //---------------------------------------------------------------------------
  // Trick Class Tests

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

  // Test Trick.setName
  test('Test Trick constructor and Trick.setName method', () {
    Trick theTrick =
        Trick('Tailwhip', 'The deck spins around 360', 1, 'theLink.com', true);
    theTrick.setName('Tail-whip');
    expect(theTrick.getName(), equals('Tail-whip'));
  });

  // Test Trick.setDesciption
  test('Test Trick constructor and Trick.setDesciption method', () {
    Trick theTrick =
        Trick('Tailwhip', 'The deck spins around 360', 1, 'theLink.com', true);
    theTrick.setDescription('The deck is kicked around 360');
    expect(theTrick.getDescription(), equals('The deck is kicked around 360'));
  });

  // Test Trick.setDifficulty
  test('Test Trick constructor and Trick.setDifficulty method', () {
    Trick theTrick =
        Trick('Tailwhip', 'The deck spins around 360', 2, 'theLink.com', true);
    theTrick.setDifficulty(1);
    expect(theTrick.getDifficulty(), equals(1));
  });

  // Test Trick.setHowTo
  test('Test Trick constructor and Trick.setHowTo method', () {
    Trick theTrick =
        Trick('Tailwhip', 'The deck spins around 360', 2, 'theLink.com', true);
    theTrick.setHowTo('theNewLink.com');
    expect(theTrick.getHowTo(), equals('theNewLink.com'));
  });

  // Test Trick.setKnow
  test('Test Trick constructor and Trick.setKnow method', () {
    Trick theTrick =
        Trick('Tailwhip', 'The deck spins around 360', 2, 'theLink.com', false);
    theTrick.setKnow(true);
    expect(theTrick.getKnow(), equals(true));
  });

  //TODO Add the feature list method tests(x3)

  //---------------------------------------------------------------------------
  // Feature Class Tests
}
