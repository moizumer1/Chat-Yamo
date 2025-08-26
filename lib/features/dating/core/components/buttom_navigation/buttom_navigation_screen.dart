import 'package:dating/features/dating/core/constants/image_constants.dart';
import 'package:dating/features/dating/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../styles/colors/custom_colors.dart';
import 'heart_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HeartScreen(),
    Center(child: Text("Chats")),
    Center(child: Text("Match")),
    Center(child: Text("Discover")),
    Center(child: Text("Profile")),
  ];

  Widget _buildSvgIcon(String assetName, bool isActive, {double size = 24}) {
    return SvgPicture.asset(
      assetName,
      color: isActive ? CustomColors.arrowColor : Color(0xFF556094).withAlpha((255 * .5).toInt()),
      width: size,
      height: size,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A1A),
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: const Border(
            top: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            currentIndex: _currentIndex,
            selectedItemColor: CustomColors.arrowColor,
            unselectedItemColor: Colors.white54,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: _buildSvgIcon(AppIcon.hearticon, _currentIndex == 0),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: _buildSvgIcon(AppIcon.commenticon, _currentIndex == 1),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: _buildSvgIcon(AppIcon.logoicon, _currentIndex == 2),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: _buildSvgIcon(AppIcon.sparklesicon, _currentIndex == 3),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: _buildSvgIcon(AppIcon.profileicon, _currentIndex == 4),
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
