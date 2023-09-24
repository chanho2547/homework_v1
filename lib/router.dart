import 'package:go_router/go_router.dart';
import 'package:thread_homework/common/main_navigation_screen.dart';
import 'package:thread_homework/features/auth/auth_screen.dart';
import 'package:thread_homework/features/home/home_screen.dart';
import 'package:thread_homework/features/likes/likes_screen.dart';
import 'package:thread_homework/features/profile/profile_screen.dart';
import 'package:thread_homework/features/search/search_screen.dart';
import 'package:thread_homework/features/write/write_screen.dart';

final router = GoRouter(
  initialLocation: "/Home",
  routes: [
    GoRoute(
      path: "/:tab(Home|Search|Write|Likes|Profile)",
      name: MainNavigationScreen.routeName,
      builder: (context, state) {
        final tab = state.params["tab"]!;
        return MainNavigationScreen(tab: tab);
      },
    ),
    GoRoute(
      name: AuthScreen.routeName,
      path: AuthScreen.routeUrl,
      builder: (context, state) => const AuthScreen(),
    ),
    GoRoute(
      name: HomeScreen.routeName,
      path: HomeScreen.routeUrl,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: SearchScreen.routeName,
      path: SearchScreen.routeUrl,
      builder: (context, state) => const SearchScreen(),
    ),
    GoRoute(
      name: WriteScreen.routeName,
      path: WriteScreen.routeUrl,
      builder: (context, state) => const WriteScreen(),
    ),
    GoRoute(
      name: LikesScreen.routeName,
      path: LikesScreen.routeUrl,
      builder: (context, state) => const LikesScreen(),
    ),
    GoRoute(
      name: ProfileScreen.routeName,
      path: ProfileScreen.routeUrl,
      builder: (context, state) => const ProfileScreen(),
    ),
  ],
);
