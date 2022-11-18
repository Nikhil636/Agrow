import 'package:agrow/screens/Drawer.dart';
import 'package:agrow/utils/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class vd2 extends StatefulWidget {
  const vd2({Key? key}) : super(key: key);

  @override
  State<vd2> createState() => _vd1State();
}

class _vd1State extends State<vd2> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();
    const url = 'https://youtu.be/2qiNKen-rm0';
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
                  "How to start Organic Farming?",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "ऑर्गेनिक या जैविक खेती को हम देशी खेती भी कहते है| मुख्य रूप से ऑर्गेनिक कृषि प्रकृति और पर्यावरण को संतुलित रखते हुए की जाती है| इसके अंतर्गत फसलों के उत्पादन में रसायनिक खाद कीटनाशकों का उपयोग नहीं किया जाता है| इसके स्थान पर गोबर की खाद, कम्पोस्ट, जीवाणु खाद, फसल अवशेष, फसल चक और प्रकृति में उपलब्ध खनिज पदार्थों का उपयोग किया जाता है| फसलों को विभिन्न प्रकार की बिमारियों से बचानें के लिए प्रकृति में उपलब्ध मित्र कीटों, जीवाणुओं और जैविक कीटनाशकों द्वारा हानिकारक कीटों तथा बीमारियों से बचाया जाता है|आज के समय में किसी भी प्रकार की फसल के उत्पादन में कृषकों द्वारा विभिन्न प्रकार के रासायनिक पदार्थो का उपयोग किया जाता है| जिसके परिणाम स्वरुप उत्पादन की मात्रा तो बढ़ जाती है, परन्तु इससे भूमि की उपजाऊ शक्ति निरंतर कम होती जा रही है इसके साथ ही प्रतिदिन लोग नई-नई बीमारियों से ग्रसित होते जा रहे है| इसके साथ ही पर्यारण संतुलन बिगड़ता जा रहा है| हालाँकि जैविक कृषि को बढ़ावा देने के लिए सरकार द्वारा निरंतर प्रयास जारी है|",
                  style: TextStyle(fontFamily: "Poppins"),
                )
              ],
            ),
          ));
}
