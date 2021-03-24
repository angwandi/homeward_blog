import 'package:flutter/material.dart';
import 'package:homeward_blog/backend/backend.dart';
import 'package:homeward_blog/screens/blog_entry_screen.dart';
import 'package:homeward_blog/widgets/blog_list_title.dart';
import 'package:provider/provider.dart';

class BlogListScreen extends StatefulWidget {
  @override
  _BlogListScreenState createState() => _BlogListScreenState();
}

class _BlogListScreenState extends State<BlogListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog list'),
      ),
      body: FutureBuilder(
        future: context.read<Backend>().getBlogs(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('An error occurred.'),
            );
          } else if (!snapshot.hasData) {
            return Center(
              child: Card(
                child: Container(
                  height: 80,
                  width: 80,
                  padding: EdgeInsets.all(12.0),
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          } else {
            final blogs = snapshot.data;

            return ListView(
              children: [
                for (final blog in blogs as Iterable) ...[
                  BlogListTile(
                    blog: blog,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return BlogEntryScreen(blog: blog);
                          },
                        ),
                      );
                    },
                  ),
                  const Divider(height: 0.0),
                ]
              ],
            );
          }
        },
      ),
    );
  }
}
