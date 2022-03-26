import 'dart:io';

import 'package:fazakir/nav_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../views/prayer_times/prayer_times.dart';

final FlutterLocalNotificationsPlugin notificationsPlugin =
    FlutterLocalNotificationsPlugin();

/// Streams are created so that app can respond to notification-related events
/// since the plugin is initialised in the `main` function
// final BehaviorSubject<ReceivedNotification> didReceiveLocalNotificationSubject =
//     BehaviorSubject<ReceivedNotification>();

// final BehaviorSubject<String?> selectNotificationSubject =
//     BehaviorSubject<String?>();

const MethodChannel platform = MethodChannel(
  'dexterx.dev/flutter_local_notifications_example',
);

String? selectedNotificationPayload;

class NotificationSet {
  static const AndroidInitializationSettings _initializationSettingsAndroid =
      AndroidInitializationSettings('app_icon');

  static const IOSInitializationSettings _initializationSettingsIOS =
      IOSInitializationSettings();

  static const MacOSInitializationSettings _initializationSettingsMacOS =
      MacOSInitializationSettings();

  static final LinuxInitializationSettings _initializationSettingsLinux =
      LinuxInitializationSettings(
    defaultActionName: 'Open notification',
    defaultIcon: AssetsLinuxIcon(
      'assets/images/flutter_logo.png',
    ),
  );

  static Future<void> init() async {
    final initSetting = _initSettings();
    await notificationsPlugin.initialize(
      initSetting,
      onSelectNotification: (String? payload) async {
        if (payload != null) {
          debugPrint('notification payload: $payload');
        }
        selectedNotificationPayload = payload;
      },
    );
  }

  static Future<String> decideWhichRouteToLanch() async {
    final appLaunchDetails = await _notificationAppLanch();
    String initialRoute = NavBar.routeName;

    if (appLaunchDetails?.didNotificationLaunchApp ?? false) {
      selectedNotificationPayload = appLaunchDetails!.payload;
      initialRoute = PrayerTime.routeName;
    }
    return initialRoute;
  }

  static InitializationSettings _initSettings() {
    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: _initializationSettingsAndroid,
      iOS: _initializationSettingsIOS,
      macOS: _initializationSettingsMacOS,
      linux: _initializationSettingsLinux,
    );
    return initializationSettings;
  }

  static Future<NotificationAppLaunchDetails?> _notificationAppLanch() async {
    if (!kIsWeb && Platform.isLinux) {
      return null;
    } else {
      return await notificationsPlugin.getNotificationAppLaunchDetails();
    }
  }
}
