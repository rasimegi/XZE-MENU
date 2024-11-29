import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Ekran boyutlarını al
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // Üstteki 3 buton
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildElevatedButton('Control Screen', 'assets/ControllerScreen.png', screenSize, () {
                    print('Control Screen butonuna basıldı');
                  }),
                  buildElevatedButton('Hash Terminal', 'assets/Hash.png', screenSize, () {
                    print('Hash Terminal butonuna basıldı');
                  }),
                  buildElevatedButton('Config Screen', 'assets/ConfigScreen.png', screenSize, () {
                    print('Config Screen butonuna basıldı');
                  }),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Alttaki 2 buton
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildElevatedButton('AI Supported Control\n(Experimental)', 'assets/ChatGPTScreen.png', screenSize, () {
                    print('AI butonuna basıldı');
                  }),
                  buildElevatedButton('Guide', 'assets/GuideScreen.png', screenSize, () {
                    print('Guide butonuna basıldı');
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ElevatedButton kullanarak butonları oluşturma
  Widget buildElevatedButton(String title, String image, Size screenSize, VoidCallback onPressed) {

    final buttonWidth = screenSize.width * 0.3;
    final buttonHeight = screenSize.height * 0.25;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        minimumSize: Size(buttonWidth, buttonHeight),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.zero,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image.asset(
            image,
            width: buttonWidth * 0.7,
            height: buttonHeight * 0.6,
            fit: BoxFit.contain, // Resmi kutuya sığdırmak için
          ),
          SizedBox(height: 10),

          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: buttonWidth * 0.06,
            ),
          ),
        ],
      ),
    );
  }
}