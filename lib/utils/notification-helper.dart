import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationHelper {
  static final _notifications = FlutterLocalNotificationsPlugin();

  static Future<void> init() async {
    final AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    final IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings();

    final InitializationSettings settings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await _notifications.initialize(
      settings,
    );
  }

  static _notificationDetails() {
    return NotificationDetails(
      android: AndroidNotificationDetails(
        "1",
        'channel name',
        importance: Importance.max,
      ),
      iOS: IOSNotificationDetails(),
    );
  }

  static showNotification({
    int id = 1,
    String? title,
    String? body,
    String? payload,
  }) async =>
      _notifications.show(id, title, body, _notificationDetails(),
          payload: payload);
}
