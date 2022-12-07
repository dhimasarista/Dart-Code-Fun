void main(){
  List<int> arr = [2, 14, 28, 25, 33, 68, 32];
  var stack = Stack();
  for (var item in arr) {
    stack.push(item);
  }
  print(stack.toString());
}

class Stack<E> {
  Stack() : _storage = <E>[];

  Stack.of(Iterable<E> elements) : _storage = List<E>.of(elements);

  final List<E> _storage;

  void push(E element) => _storage.add(element);

  E pop() => _storage.removeLast();

  E get peek => _storage.last;

  bool get isEmpty => _storage.isEmpty;

  bool get isNotEmpty => !isEmpty;

  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n---Bottom--';
  }
}