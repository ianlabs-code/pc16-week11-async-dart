// PC16 - Mobile Development with Lab
// Week 11: Asynchronous Programming in Dart
// Beginner-friendly OOP example created because no Week 9-10 source was provided.

abstract class LibraryItem {
  final String id;
  final String title;

  const LibraryItem({required this.id, required this.title});

  String describe();
}

class Book extends LibraryItem {
  final String author;

  const Book({required super.id, required super.title, required this.author});

  @override
  String describe() {
    return 'Book: "$title" by $author (ID: $id)';
  }

  // Simulates saving a book record. The Future completes after two seconds.
  Future<String> saveRecord() async {
    print('Book.saveRecord: Preparing to save "$title"...');

    await Future.delayed(const Duration(seconds: 2));

    print('Book.saveRecord: Save operation finished.');
    return 'Successfully saved book "$title" (ID: $id).';
  }
}

class Magazine extends LibraryItem {
  final int issueNumber;

  const Magazine({
    required super.id,
    required super.title,
    required this.issueNumber,
  });

  @override
  String describe() {
    return 'Magazine: "$title", Issue #$issueNumber (ID: $id)';
  }
}

Future<void> main() async {
  print('=== Week 11: Asynchronous Programming in Dart ===');

  // Objects show the base class and its two derived classes.
  const Book book = Book(
    id: 'B-101',
    title: 'Dart for Beginners',
    author: 'A. Student',
  );
  const Magazine magazine = Magazine(
    id: 'M-201',
    title: 'Technology Today',
    issueNumber: 12,
  );

  print('--- OOP objects ---');
  print(book.describe());
  print(magazine.describe());
  print('');

  print('1. Main: Starting the book save operation.');
  final Future<String> saveFuture = book.saveRecord();

  // These synchronous messages can appear while the save Future is pending.
  print('2. Main: I can do other work while the save is pending.');
  print('3. Main: I am about to await the save result.');

  // The result is not used until the Future finishes.
  final String result = await saveFuture;
  print('4. Main: $result');
  print('5. Main: Program finished.');
}
