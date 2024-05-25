import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
class MapScreen extends ConsumerWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Text('Mapa'),
    );
  }
}