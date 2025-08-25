

import 'package:flutter/material.dart';

class SelectionProvider extends ChangeNotifier {
  String? _selectedCountry;
  String? _selectedcodeCountry;
  String? get selectedCountry => _selectedCountry;
  String? get selectedcodeCountry => _selectedcodeCountry;
  void selectCountry(String country) {
    _selectedCountry = country;
    notifyListeners();
  }


  Map<String, String>? _selectedCodeCountry;
  Map<String, String>? get selectedCodeCountry => _selectedCodeCountry;

  void selectCodeCountry(Map<String, String> country) {
    _selectedCodeCountry = country;
    notifyListeners();
  }


  final List<String> countries = [
    "Pakistan", "India", "Bangladesh", "Nepal", "Sri Lanka",
    "Afghanistan", "China", "Japan", "South Korea", "Malaysia",
    "Indonesia", "Philippines", "Thailand", "Vietnam", "Singapore",
    "Saudi Arabia", "UAE", "Qatar", "Kuwait", "Oman",
    "USA", "UK", "Canada", "Australia", "New Zealand",
    "Germany", "France", "Italy", "Spain", "Portugal",
    "Netherlands", "Belgium", "Sweden", "Norway", "Denmark",
    "Switzerland", "Austria", "Russia", "Ukraine", "Poland",
    "Turkey", "Iran", "Iraq", "Egypt", "South Africa",
  ];

  final List<Map<String, String>> countryCodes = [
    {"name": "Pakistan", "code": "+92"},
    {"name": "India", "code": "+91"},
    {"name": "Bangladesh", "code": "+880"},
    {"name": "Nepal", "code": "+977"},
    {"name": "Sri Lanka", "code": "+94"},
    {"name": "Afghanistan", "code": "+93"},
    {"name": "China", "code": "+86"},
    {"name": "Japan", "code": "+81"},
    {"name": "South Korea", "code": "+82"},
    {"name": "Malaysia", "code": "+60"},
    {"name": "USA", "code": "+1"},
    {"name": "UK", "code": "+44"},
    {"name": "Germany", "code": "+49"},
    {"name": "France", "code": "+33"},
    {"name": "Saudi Arabia", "code": "+966"},
    {"name": "UAE", "code": "+971"},
    {"name": "Qatar", "code": "+974"},
  ];




  bool _showWelcome = true;

  bool get showWelcome => _showWelcome;

  void hideWelcomeDialog() {
    _showWelcome = false;
    notifyListeners();
  }
}
