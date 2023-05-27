extension SwapExtension<E> on List<E> {
  void swap(int index1, int index2) {
    E temp = this[index1];
    this[index1] = this[index2];
    this[index2] = temp;
  }
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.swap(0, 4);
  print(numbers);
}
