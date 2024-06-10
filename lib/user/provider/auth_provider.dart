import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final authProvider = ChangeNotifierProvider<AuthProvider>((ref) {
  return AuthProvider(ref: ref);
});

class AuthProvider extends ChangeNotifier {
  final Ref ref;

  AuthProvider({
    required this.ref,
  });

  List<GoRoute> get routes => [
    GoRoute(path: '/splash', name: , builder: ,),
    GoRoute(path: '/home', name: , builder: ,),
    GoRoute(path: '/login', name: , builder: ,),
    GoRoute(path: '/myPage', name: , builder: ,),
    GoRoute(path: '/appConfig', name: , builder: ,),
    GoRoute(path: '/schedule', name: , builder: ,),
    GoRoute(path: '/training', name: , builder: ,),
  ];
}
