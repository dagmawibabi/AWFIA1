import 'package:awfia1/screens/ai_chat_page.dart';
import 'package:flutter/material.dart';

class MovieDetailsPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  const MovieDetailsPage({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    // TODO IMPLEMENT PROPER MOVIE DETAILS PAGE

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
              Icons.bookmark_outline_sharp,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Movie Poster
            Hero(
              tag: 'movie-poster-$title',
              child: Image.network(
                imageUrl,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    title,
                  ),
                  const SizedBox(height: 8),
                  // Year, Duration, Rating
                  const Row(
                    children: [
                      Text('2023'),
                      SizedBox(width: 16),
                      Text('120 min'),
                      SizedBox(width: 16),
                      Text('PG-13'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Genre
                  const Wrap(
                    spacing: 8,
                    children: [
                      Chip(label: Text('Action')),
                      Chip(label: Text('Adventure')),
                      Chip(label: Text('Sci-Fi')),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Plot
                  const Text(
                    'Plot',
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  ),
                  const SizedBox(height: 16),
                  // Cast
                  const Text(
                    'Cast',
                  ),
                  const SizedBox(height: 8),
                  const Text('Actor 1, Actor 2, Actor 3'),
                  const SizedBox(height: 16),
                  // Director
                  const Text(
                    'Director',
                  ),
                  const SizedBox(height: 8),
                  const Text('Director Name'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
