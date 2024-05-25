import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(body: Text('Profile'),);
  }
}