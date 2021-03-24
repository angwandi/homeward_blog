// import 'package:flutter/material.dart';
// import 'package:homeward_blog/routes/route_names.dart';
// import 'package:homeward_blog/screens/blog_entry_screen.dart';
// import 'package:homeward_blog/screens/blog_list_screen.dart';
// import 'package:homeward_blog/screens/login_screen.dart';
// import 'package:homeward_blog/screens/page_not_found.dart';
//
// Route<dynamic> generateRoute(RouteSettings settings) {
//   switch (settings.name) {
//     case LoginRoute:
//       return _getPageRoute(
//         LoginScreen(),
//         settings,
//       );
//     case BlogListRoute:
//       return _getPageRoute(
//         BlogListScreen(),
//         settings,
//       );
//     case BlogEntryRoute:
//       return _getPageRoute(
//         BlogEntryScreen(blog: null,),
//         settings,
//       );
//     case PageNotFoundRoute:
//       return _getPageRoute(
//         PageNotFoundView(),
//         settings,
//       );
//     default:
//       return MaterialPageRoute(builder: (_) => PageNotFoundView());
//   }
// }
//
// PageRoute _getPageRoute(Widget child, RouteSettings settings) {
//   return _FadeRoute(
//     child: child,
//     routeName: '',
//   );
// }
//
// class _FadeRoute extends PageRouteBuilder {
//   final Widget child;
//   final String routeName;
//
//   _FadeRoute({required this.child, required this.routeName})
//       : super(
//           settings: RouteSettings(name: routeName),
//           pageBuilder: (
//             BuildContext context,
//             Animation<double> animation,
//             Animation<double> secondaryAnimation,
//           ) =>
//               child,
//           transitionsBuilder: (
//             BuildContext context,
//             Animation<double> animation,
//             Animation<double> secondaryAnimation,
//             Widget child,
//           ) =>
//               FadeTransition(
//             opacity: animation,
//             child: child,
//           ),
//         );
// }
