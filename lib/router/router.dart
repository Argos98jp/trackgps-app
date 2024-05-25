import 'package:go_router/go_router.dart';
import 'package:gpstracker/screen/home_screen.dart';
import 'package:gpstracker/screen/map_screen.dart';
import 'package:gpstracker/screen/profile_screen.dart';
import 'package:gpstracker/screen/reports_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/',builder: (context, state) =>  HomeScreen(),
    routes:[
      GoRoute(path: 'map',builder: (context,state) => MapScreen()),
    GoRoute(path: 'profile',builder: (context,state) => ProfileScreen()),
    GoRoute(path: 'report',builder: (context,state) => ReportsScreen())
    ] ),
    

  ],
);