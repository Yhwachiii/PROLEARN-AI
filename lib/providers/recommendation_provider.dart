import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RecommendationProvider with ChangeNotifier {
  List<Map<String, dynamic>> _recommendations = [];

  List<Map<String, dynamic>> get recommendations => _recommendations;

  Future<void> fetchRecommendations() async {
    // Call Python backend API
    final response = await http.get(Uri.parse('http://localhost:5000/recommendations'));
    if (response.statusCode == 200) {
      _recommendations = List<Map<String, dynamic>>.from(json.decode(response.body));
      notifyListeners();
    }
  }
}
