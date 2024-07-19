Future<Map<String, String>> login() {
  return Future.delayed(
      Duration(seconds: 2), () => {'id': 'user123', 'token': 'abc123'});
}

Future<Map<String, String>> fetchUserProfile() {
  return Future.delayed(
      Duration(seconds: 1), () => {'id': 'John123', 'name': 'John'});
}

Future<List<String>> fetchNotifications() {
  return Future.delayed(
      Duration(seconds: 1, milliseconds: 500), () => ['알림 1', '알림 2', '알림 3']);
}

void main() {
  print('Starting application...');

  login().then((loginResult) {
    print('Logged in: $loginResult');

    Future userProfileFuture = fetchUserProfile();
    Future notificationsFuture = fetchNotifications();

    userProfileFuture.then((profile) {
      print('User profile: $profile');
    });

    notificationsFuture.then((notifications) {
      print('$notifications');
    });
  });
}
