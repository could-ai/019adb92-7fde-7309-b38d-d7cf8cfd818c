import 'package:flutter/foundation.dart';

class AnalyticsService {
  static const String _tag = "NexusAnalytics";

  void logEvent(String event) {
    if (kDebugMode) {
      print("$_tag: $event");
    }
    // TODO: persist locally or send to backend
  }
}
