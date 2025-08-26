
import 'package:flutter/material.dart';


class LoginViewModel extends ChangeNotifier {
  final TextEditingController numberController = TextEditingController();
  final TextEditingController whatsappNumberController = TextEditingController();

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  @override
  void dispose() {
    numberController.dispose();
    whatsappNumberController.dispose();
    super.dispose();
  }
}
