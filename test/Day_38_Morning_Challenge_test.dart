import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test('Possible Permutations', () {
    expect(ListOfPermutations([1, 2,3]),
        [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 2, 1], [3, 1, 2]]);
  });
  test('Possible Permutations', () {
    expect(ListOfPermutations([1, 2]),
        [[1, 2], [2, 1]]);
  });

  test('Possible Permutations', () {
    expect(ListOfPermutations([1]),
        [[1]]);
  });
  test('Possible Permutations', () {
    expect(ListOfPermutations([]),
        [[]]);
  });

}