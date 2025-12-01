import 'dart:async';

class AIService {
  final OnlineAIConnector _online = OnlineAIConnector();
  final OfflineMiniLLM _offline = OfflineMiniLLM();

  Future<String> query(String prompt) async {
    // Logic to decide between online/offline could go here.
    // For now, we'll simulate an online call.
    return await _online.query(prompt);
  }

  String generateOffline(String prompt) {
    return _offline.generate(prompt);
  }
}

class OnlineAIConnector {
  Future<String> query(String prompt) async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));
    return "Online AI placeholder response for: $prompt";
  }
}

class OfflineMiniLLM {
  String generate(String prompt) {
    // Placeholder for on-device model integration
    return "OfflineMiniLLM reply: ${prompt.length > 20 ? prompt.substring(0, 20) : prompt}...";
  }
}
