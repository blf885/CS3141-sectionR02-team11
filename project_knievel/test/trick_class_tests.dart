import 'package:test/test.dart';
import 'package:project_knievel/Trick.dart';

void main() {
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
  //TODO finish this
  test('Test Trick constructor and Trick.setDifficulty method', () {
    Trick theTrick = Trick(
        'Tailwhip', 'The deck spins around 360', 2, 'theLink.com', true, 1);
    expect(theTrick.setDifficulty(2), equals(2));
  });
}
