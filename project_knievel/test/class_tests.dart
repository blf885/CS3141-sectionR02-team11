import 'package:test/test.dart';
import 'package:project_knievel/Trick.dart';

void main() {
  //---------------------------------------------------------------------------
  // Trick Class Tests

  // Test Trick.setName
  test('Test Trick constructor and Trick.setName method', () {
    Trick theTrick = Trick(
        'Tailwhip', 'The deck spins around 360', 1, 'theLink.com', true, 1);
    expect(theTrick.setName('Tail-whip'), equals('Tailwhip'));
  });

  // Test Trick.setDesciption
  test('Test Trick constructor and Trick.setDesciption method', () {
    Trick theTrick = Trick(
        'Tailwhip', 'The deck spins around 360', 1, 'theLink.com', true, 1);
    expect(theTrick.setDescription('The deck is kicked around 360'),
        equals('The deck spins around 360'));
  });

  // Test Trick.setDifficulty
  test('Test Trick constructor and Trick.setDifficulty method', () {
    Trick theTrick = Trick(
        'Tailwhip', 'The deck spins around 360', 2, 'theLink.com', true, 1);
    expect(theTrick.setDifficulty(2), equals(2));
  });

  // Test Trick.setHowTo
  test('Test Trick constructor and Trick.setHowTo method', () {
    Trick theTrick = Trick(
        'Tailwhip', 'The deck spins around 360', 2, 'theLink.com', true, 1);
    expect(theTrick.setHowTo('theNewLink.com'), equals('theLink.com'));
  });

  // Test Trick.setKnow
  test('Test Trick constructor and Trick.setKnow method', () {
    Trick theTrick = Trick(
        'Tailwhip', 'The deck spins around 360', 2, 'theLink.com', false, 1);
    expect(theTrick.setKnow(true), equals(false));
  });

  // Test Trick.getName
  test('Test Trick constructor and Trick.getName method', () {
    Trick theTrick = Trick(
        'Tailwhip', 'The deck spins around 360', 2, 'theLink.com', false, 1);
    expect(theTrick.getName(), equals('Tailwhip'));
  });

  // Test Trick.getDescription
  test('Test Trick constructor and Trick.getDescription method', () {
    Trick theTrick = Trick(
        'Tailwhip', 'The deck spins around 360', 2, 'theLink.com', false, 1);
    expect(theTrick.getDescription(), equals('The deck spins around 360'));
  });

  // Test Trick.getDifficulty
  test('Test Trick constructor and Trick.getDifficulty method', () {
    Trick theTrick = Trick(
        'Tailwhip', 'The deck spins around 360', 2, 'theLink.com', false, 1);
    expect(theTrick.getDifficulty(), equals(2));
  });

  // Test Trick.getHowTo
  test('Test Trick constructor and Trick.getHowTo method', () {
    Trick theTrick = Trick(
        'Tailwhip', 'The deck spins around 360', 2, 'theLink.com', false, 1);
    expect(theTrick.getHowTo(), equals('theLink.com'));
  });

  // Test Trick.getKnow
  test('Test Trick constructor and Trick.getKnow method', () {
    Trick theTrick = Trick(
        'Tailwhip', 'The deck spins around 360', 2, 'theLink.com', false, 1);
    expect(theTrick.getKnow(), equals(false));
  });

  //TODO Add the feature list method tests(x3)

  //---------------------------------------------------------------------------
  // Feature Class Tests
}
