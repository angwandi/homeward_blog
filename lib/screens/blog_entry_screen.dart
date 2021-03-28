import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homeward_blog/model/blog_list.dart';
import 'package:homeward_blog/shared_style/app_colors.dart';

class BlogEntryScreen extends StatelessWidget {
  const BlogEntryScreen({
    Key? key,
    required this.blog,
  }) : super(key: key);

  final BlogListModel blog;

  String get _createdAt {
    final date = blog.createdAt;

    return '${date!.day}-${date.month}-${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog Entry'),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Card(
              elevation: 5,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Material(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.circular(8.0),
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: blog.imageUrl!,
                      placeholder: (context, url) => Center(
                        child: Card(
                          child: Container(
                            width: 80,
                            height: 80,
                            padding: EdgeInsets.all(12.0),
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      ),
                      errorWidget: (context, url, error) => Icon(
                        Icons.error,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black45,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            blog.title!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style:
                                Theme.of(context).textTheme.headline6!.copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                          Text(
                            'Created at : $_createdAt',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: homeward_white_70,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
