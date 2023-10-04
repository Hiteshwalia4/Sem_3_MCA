void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  int target = 3;  bool foundInPairs = checkInAdjacentPairs(numbers, target);
  
  if (foundInPairs) {
    print('$target appears in every pair of adjacent integers.');
  } else {
    print('$target does not appear in every pair of adjacent integers.');
  }
}

bool checkInAdjacentPairs(List<int> numbers, int target) {
  for (int i = 0; i < numbers.length - 1; i++) {
    if (numbers[i] != target && numbers[i + 1] != target) {
      return false;
    }
  }
  return true;
}
