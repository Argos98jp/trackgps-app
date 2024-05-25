import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gpstracker/provider/navigation_provider.dart';
import 'package:gpstracker/screen/home_screen.dart';
import 'package:gpstracker/screen/map_screen.dart';
import 'package:gpstracker/screen/profile_screen.dart';
import 'package:gpstracker/screen/reports_screen.dart';
class MyBottomNavigationBar extends ConsumerStatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget>  createState() => BottomBarNavigationState();
}

class BottomBarNavigationState extends ConsumerState<MyBottomNavigationBar>  with TickerProviderStateMixin {


  void _handleIndexChanged(int i) {
    ref.read(indexBottomNavbarProvider.notifier).update((state) => i);
  }
  static const List<Widget> _pages = <Widget>[
    HomeScreen(),
    MapScreen(),
    ReportsScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
     final indexBottomNavbar = ref.watch(indexBottomNavbarProvider);
    var anim = AnimationController(
      vsync: this,
      value: 1,
      duration: const Duration(milliseconds: 500),
    );
    return SafeArea(child: Scaffold(
      extendBody: false,
      body:  IndexedStack(
        index: indexBottomNavbar,
        children: _pages,
      ),
      bottomNavigationBar:  DotNavigationBar(
        enablePaddingAnimation: false,
        marginR: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
        paddingR: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          currentIndex: indexBottomNavbar,
          onTap: _handleIndexChanged,
          // dotIndicatorColor: Colors.black,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: Icon(Icons.dashboard_rounded),
              selectedColor: Colors.purple,
            ),

            /// Likes
            DotNavigationBarItem(
              icon: Icon(Icons.route_rounded),
              selectedColor: Colors.pink,
            ),

            /// Search
            DotNavigationBarItem(
              icon: Icon(Icons.assignment_rounded),
              selectedColor: Colors.orange,
            ),

            /// Profile
            DotNavigationBarItem(
              icon: Icon(Icons.person),
              selectedColor: Colors.teal,
            ),
            
          ],
        ),
    ));
    
  }
}

