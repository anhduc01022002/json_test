class Queue<T> {
  List<T> _list = [];

  void enqueue(T value) {
    _list.add(value);
  }

  T dequeue() {
    if (_list.isEmpty) {
      throw Exception('Queue is empty');
    } else {
      T firstItem = _list.first;
      _list.removeAt(0);
      return firstItem;
    }
  }
}
void main() {
  var queue = Queue<int>();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);

  print(queue.dequeue());
  print(queue.dequeue());
  print(queue.dequeue()); 
}
