import 'package:flutter/material.dart';
import '../models/book.dart';
import '../widgets/book_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Book> books = [
    Book(
      title: 'The Hobbit',
      author: 'J.R.R. Tolkien',
      price: 9.99,
      imagePath: 'assets/images/book1.webp',
    ),
    Book(
      title: 'Harry Potter and the Order of the Phoenix',
      author: 'J. K. Rowling',
      price: 12.99,
      imagePath: 'assets/images/book2.jpg',
    ),
    Book(
      title: 'The Lord of the Rings Omnibus',
      author: 'J.R.R. Tolkien',
      price: 14.99,
      imagePath: 'assets/images/book3.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5FA),
      appBar: AppBar(
        elevation: 8,
        backgroundColor: const Color(0xFF3D5AFE), 
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.menu_book_rounded, color: Colors.white, size: 30),
            const SizedBox(width: 10),
            const Text(
              'Ceylon Book Store',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_rounded),
            color: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF3D5AFE), Color(0xFF1E88E5)], 
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              child: const Text(
                'Find Your Next Favorite Book',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.8,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Text(
                'Recommended For You',
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFF37474F),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ...books.map(
              (book) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: BookCard(
                  book: book,
                  cardColor: const Color(0xFFFFFFFF),
                  borderColor: const Color(0xFFE0E0E0),
                  shadowColor: const Color(0xFFB0BEC5), 
                ),
              ),
            ),
            const SizedBox(height: 20),
    
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF3D5AFE), Color(0xFF1E88E5)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: const Text(
                'Ceylon Book Store - Dive into the world of stories.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 0.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
