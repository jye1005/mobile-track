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
  print('로그인 되었습니다.');
}

Future<void> main() async {
  print('Starting application...');

  await login();
  await fetchUserProfile();
  await fetchNotifications();
}
