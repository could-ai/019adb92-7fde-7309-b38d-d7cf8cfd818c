import 'package:couldai_user_app/src/services/ai_service.dart';
import 'package:couldai_user_app/src/services/analytics_service.dart';

class AppRepository {
  final AnalyticsService analytics = AnalyticsService();
  final AIService aiService = AIService();
  
  // Singleton pattern
  static final AppRepository _instance = AppRepository._internal();
  factory AppRepository() => _instance;
  AppRepository._internal();
}
