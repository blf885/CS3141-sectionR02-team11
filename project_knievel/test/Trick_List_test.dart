import 'package:flutter_test/flutter_test.dart';
import 'package:project_knievel/TrickListClass.dart';

void main() {
  // Test TrickList.setName
  test('Test Trick_List constructor and Trick_List.setName method', () {
    TrickList trick = TrickList('Tailwhip', 'ListTemp', 2, 1, 1, 1, 1, 1, 1, 1,
        1, 1); // list temp and many 1's are temp placeholders
    expect(trick.setName('Tail-whip'), equals('Tailwhip'));
  });

  test('Testing Tricklist constructor and Tricklist.getName method ', () {
    TrickList trick = TrickList('Tailwhip', 'ListTemp', 2, 1, 1, 1, 1, 1, 1, 1,
        1, 1); // list temp and many 1's are temp placeholders
    expect(trick.getName(), equals('Tailwhip'));
  });

  test('Testing Tricklist constructor and Tricklist.getSize method ', () {
    TrickList trick = TrickList('Tailwhip', 'ListTemp', 2, 1, 1, 1, 1, 1, 1, 1,
        1, 1); // list temp and many 1's are temp placeholders
    expect(trick.getSize(), equals(2));
  });

  test('Testing Tricklist constructor and Tricklist.getSize method ', () {
    TrickList trick = TrickList('Tailwhip', 'ListTemp', 2, 1, 1, 1, 1, 1, 1, 1,
        1, 1); // list temp and many 1's are temp placeholders
    expect(trick.setSize(2), equals(2));
  });
}
