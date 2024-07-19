import 'dart:async';

Future<void> login() async {
  await Future.delayed(Duration(seconds: 2));
  print({'id': 'user123', 'token': 'abc123'});
}

Future<void> fetchUserProfile() async {
  await Future.delayed(Duration(seconds: 1));
  print({'id': 'John123', 'name': 'John'});
}

Future<void> fetchNotifications() async {
  await Future.delayed(Duration(seconds: 1, milliseconds: 500));
  print(['Notification 1', 'Notification 2', 'Notification 3']);
}

Future<void> main() async {
  print('Starting application...');

  await login();
  await Future.wait([
    fetchUserProfile(),
    fetchNotifications(),
  ]);
}
