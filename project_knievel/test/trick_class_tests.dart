import 'package:test/test.dart';
import 'package:project_knievel/main.dart';

void main() {
  test('Test Trick constructor and Trick.setName method', () {
    Trick theTrick = Trick(
        'Tailwhip', 'The deck spins around 360', 1, 'theLink.com', true, 1);
    expect(theTrick.setName('Tail-whip'), equals('Tailwhip'));
  });
}
