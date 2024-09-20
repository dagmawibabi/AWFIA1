// ignore_for_file: library_private_types_in_public_api

import 'package:awfia1/screens/ai_chat_page.dart';
import 'package:awfia1/screens/bookmarks_page.dart';
import 'package:awfia1/components/movie_poster.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(
          "assets/logo/afriwork.png",
          width: 100.0,
        ),
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BookmarksPage(),
                ),
              );
            },
            icon: const Icon(
              Icons.bookmark_outline_sharp,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.wb_sunny_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search movies...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: (value) {},
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.only(left: 15.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 10,
              ),
              itemCount: 10, // Replace with actual movie count
              itemBuilder: (context, index) {
                return MoviePoster(
                  title: 'Movie ${index + 1}',
                  imageUrl: 'https://via.placeholder.com/150x225',
                );
              },
            ),
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
