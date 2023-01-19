
import 'package:eco/menu.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;
     final List locale =[
    {'name':'ENGLISH','locale': Locale('en','US')},
    {'name':'PORTUGUESE','locale': Locale('pt','BR')},
    {'name':'SPANISH','locale': Locale('es','ES')},
  ];
  updateLanguage(Locale locale){
    Get.back();
    Get.updateLocale(locale);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                _currentPageIndex = index;
              });
            },
            controller: _pageController,
            children: [
              _buildPage("images/produtos.jpeg", "Produtos".tr,
                  "Explore a nossa variedade de produtos".tr),
              _buildPage("images/customização.jpeg", "Costumização".tr,
                  "Customize o seu próprio perfil e guarde os seus momentos especiais".tr),
              _buildPage("images/jardim.jpeg", "Jardim".tr,
                  "Esteja a par do crescimento dos seus alimentos com o nosso menu “Jardim”".tr),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding
(
padding: const EdgeInsets.only(bottom: 32),
child: SmoothPageIndicator(
controller: _pageController,
count: 3,
onDotClicked: (index) {
_pageController.jumpToPage(index);
},
),
),
),
if (_currentPageIndex == 2)
Align(
alignment: Alignment.bottomCenter,
child: Padding(
padding: const EdgeInsets.all(64),
child: ElevatedButton(
style: ElevatedButton.styleFrom(
backgroundColor: Color.fromARGB(244, 5, 202, 21),
foregroundColor: Color.fromARGB(255, 255, 255, 255),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.all(Radius.circular(10)),
),
),
onPressed: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (context) => Menu(),
),
);
},
child: Text("Next".tr),
),
),
),
],
),
);
}

Widget _buildPage(String imagePath, String title, String subtitle) {
return Container(
margin: EdgeInsets.all(16),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Image.asset(
imagePath,
height: 200,
),
SizedBox(height: 100),
Text(title, style: TextStyle(fontSize: 32, color: Colors.green, fontWeight: FontWeight.bold)),
SizedBox(height: 20),
Text(subtitle, style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.normal)),
],
),
);
}
}

