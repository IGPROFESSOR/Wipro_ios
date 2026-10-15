class Book {
    var title: String
    var author: String

    init(title: String, author: String) {
        self.title = title
        self.author = author
    }
}

class Library {
    var books: [Book] = []

    func addBook(_ book: Book) {
        books.append(book)
        print("Added:", book.title)
    }

    func removeBook(title: String) {
        if let index = books.firstIndex(where: {
            $0.title == title
        }) {
            books.remove(at: index)
            print("Removed:", title)
        } else {
            print("Book not found")
        }
    }

    func searchBook(title: String) {
        if let book = books.first(where: {
            $0.title == title
        }) {
            print("Found:", book.title, "-", book.author)
        } else {
            print("Book not found")
        }
    }

    func listBooks() {
        print("Books in library:")

        for book in books {
            print("\(book.title) - \(book.author)")
        }
    }
}

let library = Library()

library.addBook(Book(title: "Swift Basics", author: "John"))
library.addBook(Book(title: "iOS Development", author: "David"))

library.searchBook(title: "Swift Basics")
library.removeBook(title: "iOS Development")
library.listBooks()