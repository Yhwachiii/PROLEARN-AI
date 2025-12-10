import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TaskProvider with ChangeNotifier {
  List<Map<String, dynamic>> _tasks = [];
  List<Map<String, dynamic>> _upcomingTasks = [];

  List<Map<String, dynamic>> get tasks => _tasks;
  List<Map<String, dynamic>> get upcomingTasks => _upcomingTasks;

  Future<void> fetchTasks() async {
    // Call Python backend API
    final response = await http.get(Uri.parse('http://localhost:5000/tasks'));
    if (response.statusCode == 200) {
      _tasks = List<Map<String, dynamic>>.from(json.decode(response.body));
      notifyListeners();
    }
  }

  Future<void> fetchUpcomingTasks() async {
    // Call Python backend API
    final response = await http.get(Uri.parse('http://localhost:5000/upcoming-tasks'));
    if (response.statusCode == 200) {
      _upcomingTasks = List<Map<String, dynamic>>.from(json.decode(response.body));
      notifyListeners();
    }
  }
}
