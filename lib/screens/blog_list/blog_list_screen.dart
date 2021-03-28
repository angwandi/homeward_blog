import 'package:flutter/material.dart';
import 'package:homeward_blog/backend/backend.dart';
import 'package:provider/provider.dart';

import 'file:///D:/dems/Projects/interviews/homeward/homeward_blog/lib/screens/blog_entry/blog_entry_screen.dart';
import 'file:///D:/dems/Projects/interviews/homeward/homeward_blog/lib/screens/blog_list/blog_list_title.dart';

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
              child: Text(
                'Something went wrong! \nFailed to load Blogs!',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
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
