// Challenge: Find all permutations
// Given a collection of *distinct* integers, return all possible permutations.
/// Example:
//  Input: [1,2,3]
//  Output:
//  [
//    [1,2,3],
//    [1,3,2],
//    [2,1,3],
//    [2,3,1],
//    [3,1,2],
//    [3,2,1]
//  ]

main() {
  print(ListOfPermutations([1,2,3]));
}

List<List<int>> ListOfPermutations(List<int> inputList) {
  List<List<int>> result = [];
  calculatePermutations(inputList, 0,result);
  return result;
}

void calculatePermutations(List<int> list, int index,List<List<int>> result) {
  if (index == list.length) {
    result.add(list);
    return;
  }
  for (int i = index; i < list.length; i++) {
    List<int> permutation = List.from(list);
    permutation[index] = list[i];
    permutation[i] = list[index];
    calculatePermutations(permutation, index + 1,result);
  }
}