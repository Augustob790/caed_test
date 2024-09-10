import 'package:caed/app/modules/home/pages/home/home_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageView extends HomePageViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() => currentIndex = index);
        },
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (index) {
          pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: GoogleFonts.sora(),
        unselectedLabelStyle: GoogleFonts.sora(),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
                color: currentIndex == 0 ? Colors.blue : Colors.grey),
            label: 'Início',
            backgroundColor: currentIndex == 1 ? Colors.blue : Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,
                color: currentIndex == 1 ? Colors.blue : Colors.grey),
            label: 'Opções',
            backgroundColor: currentIndex == 1 ? Colors.blue : Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info,
                color: currentIndex == 2 ? Colors.blue : Colors.grey),
            label: 'Tutoriais',
            backgroundColor: currentIndex == 1 ? Colors.blue : Colors.grey,
          ),
        ],
      ),
    );
  }
}

class OptionsScreen extends StatelessWidget {
  const OptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Opções"));
  }
}

class TutorialsScreen extends StatelessWidget {
  const TutorialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Tutoriais"));
  }
}
