import 'package:agrow/screens/Drawer.dart';
import 'package:agrow/utils/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class vd5 extends StatefulWidget {
  const vd5({Key? key}) : super(key: key);

  @override
  State<vd5> createState() => _vd5State();
}

class _vd5State extends State<vd5> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();
    const url = 'https://youtu.be/TfiWMGrRU7w';
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
                  "Modern Tractor Implements in India I Subsoiler, Vaccum Planter, Post Hole Digger I Modified Thoughts",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "यह देखा गया है कि कम उत्पादकता और कम आय के पीछे मुख्य उद्देश्य औसत भारतीय किसान अपने खेतों में उपकरणों का उपयोग नहीं कर रहे हैं। भारत में व्यापक कृषि मशीनरी उत्पादक हैं, यहां तक ​​कि अधिकांश किसान कृषि उपकरणों का उपयोग नहीं कर रहे हैं, यहां तक ​​कि कुछ किसान ट्रैक्टर के बिना भी खेती कर रहे हैं। इसलिए खेतों में किए गए काम के मुताबिक उत्पादकता नहीं बढ़ रही है। कृषि उपकरणों की जानकारी के बारे में अधिक जानें।देश दिन-ब-दिन विकसित हो रहा है और बढ़ते देश के साथ नवोन्मेष भी हो रहे हैं, हमने भी इसे नवीन उत्पादों का उपयोग करके विकसित किया है जो हमारी आसानी के लिए खोजे जाते हैं। हमें वर्तमान समय के साथ बने रहने और उनका पूरा उपयोग करने के लिए नवाचारों के साथ तालमेल बिठाना होगा।",
                  style: TextStyle(fontFamily: "Poppins"),
                )
              ],
            ),
          ));
}
