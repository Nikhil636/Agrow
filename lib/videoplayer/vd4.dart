import 'package:agrow/screens/Drawer.dart';
import 'package:agrow/utils/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class vd4 extends StatefulWidget {
  const vd4({Key? key}) : super(key: key);

  @override
  State<vd4> createState() => _vd4State();
}

class _vd4State extends State<vd4> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();
    const url = 'https://youtu.be/6S2oA_wwhkI';
    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url)!,
        flags:
            const YoutubePlayerFlags(mute: false, loop: false, autoPlay: true));
  }

  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
      player: YoutubePlayer(controller: controller),
      builder: (context, player) => Scaffold(
            drawer: const drawer(),
            appBar: AppBar(
              elevation: 5,
              centerTitle: true,
              backgroundColor: hexStringToColor("007542"),
              title: Image.asset(
                "assets/images/appbar.png",
                // height: 200,
                width: 100,
                fit: BoxFit.fill,
              ),
            ),
            body: ListView(
              padding: EdgeInsets.all(16),
              children: [
                SizedBox(
                  height: 20,
                ),
                player,
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Safe use of pesticides | Dr YS Parmar University of Horticulture & Forestry, Nauni",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "पादप रोग (Plant Disease) सूक्ष्म जीवों के द्वारा फैलते हैं या दूसरे Animal के द्वारा इनमें विभिन्न प्रकार के रोग फैलते हैं । हमारे जीवन में उपयोग के पदार्थों की उपलब्धता तथा उनकी कीमतों पर अवांछित प्रभाव डालते हैं, जो अधिक रोग फैलने में फसलों की पैदावार कम होती है, जिससे कीमतें बढ़ जाती है । कृषि उत्पादन का लगभग 30% भाग इनसे नष्ट हो जाता हैं । अत: इनके रोग नियंत्रण (Diseased Control) के लिए कृत्रिम रसायनों (Artificial Chemicals) का उपयोग करके इनको रोगों से Protect किया जाता है और इनका प्रयोग दिन व दिन बढ़ता जा रहा है ।कोई भी जीवधारी जो मनुष्य को आर्थिक या भौतिक नुकसान (हानि) पहुँचाए Pest कहलाता है तथा वे रासायनिक पदार्थ जो Pest को मार देते हैं, उन्हें Pesticide कहते है ।सूक्ष्मजीवों का Pest Control हेतु उपयोग जैविक नियंत्रण कहलाता है तथा उपयोग में लिये जाने वाले कारक एजेन्ट (Agent) कहलाते है । सामान्यतः Pest Control Bacteria, Fungus, Virus, Protozoa आदि का उपयोग करके किया जाता है । इनमें से कुछ का उपयोग व्यापारिक स्तर पर भी किया जाता हैं Micro Organism का उपयोग Insect Control, Weeds Control और Diseased Control में किया जाता है ।वर्तमान समय में बहुत से Synthetic Insecticides व Pesticides का उपयोग Agriculture में Crop Rotation पर किया जा रहा है लेकिन इनके उपयोग से कुछ Non Targate Pathogens भी मर जाते हैं जो Soil के लिए लाभदायक होते हैं तथा खेती (Agriculture) के लिए भी लाभदायक होते है । कुछ पेस्टीसाइड जैविक कीटों (Insects) को भी मार देते हैं जैसे Viruses (Vaculovirule), Bacteria (Basillus) Fungi (Aspergillus) नष्ट कर देते हैं ।",
                  style: TextStyle(fontFamily: "Poppins"),
                )
              ],
            ),
          ));
}
