import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:homeward_blog/model/blog_list.dart';

class BlogListTile extends StatelessWidget {
  const BlogListTile({
    Key? key,
    required this.blog,
    required this.onTap,
  }) : super(key: key);

  final BlogListModel blog;
  final VoidCallback onTap;

  String get _createdAt {
    final date = blog.createdAt;

    return '${date!.day}-${date.month}-${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      onTap: onTap,
      leading: blog.imageUrl!.isEmpty
          ? null
          : Material(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(8.0),
              child: AspectRatio(
                aspectRatio: 3 / 2,
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: blog.imageUrl!,
                  placeholder: (context, url) => Container(
                    color: Colors.black12,
                  ),
                  errorWidget: (context, url, error) => Icon(
                    Icons.error,
                  ),
                ),
              ),
            ),
      title: Text(
        blog.title!,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        'Created at : $_createdAt',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
