import 'package:flutter_test/flutter_test.dart';
import 'package:project_knievel/TrickListClass.dart';

void main() {
  // Test TrickList.setName
  test('Test Trick_List constructor and Trick_List.setName method', () {
    TrickList trick = TrickList('Tailwhip', 'ListTemp', 2, 1, 1, 1, 1, 1, 1, 1,
        1, 1); // list temp and many 1's are temp placeholders
    expect(trick.setName('Tail-whip'), equals('Tailwhip'));
  });

  test('Testinf Tricklist constructor and Tricklist.getName method ', () {
    TrickList trick = TrickList('Tailwhip', 'ListTemp', 2, 1, 1, 1, 1, 1, 1, 1,
        1, 1); // list temp and many 1's are temp placeholders
    expect(trick.getName(), equals('Tailwhip'));
  });
}
