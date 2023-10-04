void main() {
  List<int> array1 = [1, 3, 4, 2];
  List<int> array2 = [8, 2, 7, 5];

  List<int> result = mergeAndSortArrays(array1, array2);
  print('Result: $result');
}

List<int> mergeAndSortArrays(List<int> array1, List<int> array2) {
   List<int> mergedArray = [...array1, ...array2];

  mergedArray.sort();

  return mergedArray;
}
