import 'package:agrow/screens/Drawer.dart';
import 'package:agrow/utils/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class vd1 extends StatefulWidget {
  const vd1({Key? key}) : super(key: key);

  @override
  State<vd1> createState() => _vd1State();
}

class _vd1State extends State<vd1> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();
    const url = 'https://youtu.be/wougJaN_Ha0';
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
                  "What is Organic Agriculture with Full Information?",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "ऑर्गेनिक खेती फसल उत्पादन की एक प्राचीन पद्धति है| आपको बता दें, कि ऑर्गेनिक खेती को जैविक खेती भी कहते है| जैविक कृषि में फसलों के उत्पादन में गोबर की खाद (Manure), कम्पोस्ट, जीवाणु खाद, फ़सलोन के अवशेष और प्रकृति में उपलब्ध विभिन्न प्रकार के खनिज पदार्थों के माध्यम से पौधों को पोषक तत्व दिए जाते हैं। सबसे खास बात यह है, कि इस प्रकार की खेती में प्रकृति में पाए जानें वाले तत्वों को कीटनाशक के रूप में प्रयोग किया जाता है| जैविक खेती पर्यावरण की शुद्धता बनाये रखनें के साथ ही भूमी के प्राकृतिक स्वरूप को बनाये रखती है।ऑर्गेनिक खेती का अभिप्राय एक ऐसी कृषि प्रणाली से है, जिसमें फसलों के उत्पादन में रासायनिक खादों एवं कीटनाशक दवाओं के स्थान पर  जैविक या प्राकृतिक खादों का प्रयोग किया जाता है| वर्तमान समय में ऑर्गेनिक खेती से प्राप्त होनें वाली उपज की मांग बहुत अधिक है|",
                  style: TextStyle(fontFamily: "Poppins"),
                )
              ],
            ),
          ));
}
