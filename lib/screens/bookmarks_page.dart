import 'package:awfia1/screens/ai_chat_page.dart';
import 'package:flutter/material.dart';
import 'package:awfia1/components/movie_poster.dart';

class BookmarksPage extends StatelessWidget {
  const BookmarksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> bookmarkedMovies = [
      {
        'title': 'Bookmarked Movie 1',
        'imageUrl': 'https://via.placeholder.com/150x225'
      },
      {
        'title': 'Bookmarked Movie 2',
        'imageUrl': 'https://via.placeholder.com/150x225'
      },
      {
        'title': 'Bookmarked Movie 3',
        'imageUrl': 'https://via.placeholder.com/150x225'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookmarks'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AIChatPage(),
                ),
              );
            },
            icon: const Icon(
              Icons.auto_awesome_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete_outline,
            ),
          ),
        ],
      ),
      body: bookmarkedMovies.isEmpty
          ? const Center(
              child: Text(
                'No bookmarked movies yet',
              ),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(10.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: bookmarkedMovies.length,
              itemBuilder: (context, index) {
                final movie = bookmarkedMovies[index];
                return MoviePoster(
                  title: movie['title']!,
                  imageUrl: movie['imageUrl']!,
                );
              },
            ),
    );
  }
}
