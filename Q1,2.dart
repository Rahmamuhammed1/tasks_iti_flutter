void main() {
  Book book1 = Book('1984', 'George Orwell', 328);
  print('Book Information:');
  book1.displayInfo();
  print('');
  Novel novel1 = Novel('To Kill a Mockingbird', 'Harper Lee', 281, 'Fiction');
  print('Novel Information:');
  novel1.displayInfo();
}
// Task 1: Create a Basic Class
class Book {
  final String title;
  final String author;
  final int numPages;
  Book(this.title, this.author, this.numPages);
  void displayInfo() {
    print('Title: $title');
    print('Author: $author');
    print('Number of pages: $numPages');
  }
}

// Task 2: Implement Inheritance
class Novel extends Book {
  final String genre;
  Novel(super.title, super.author, super.numPages, this.genre);
  @override
  void displayInfo() {
    super.displayInfo(); 
    print('Genre: $genre');
  }
}


