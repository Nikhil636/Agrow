import 'package:agrow/screens/Drawer.dart';
import 'package:agrow/utils/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class vd3 extends StatefulWidget {
  const vd3({Key? key}) : super(key: key);

  @override
  State<vd3> createState() => _vd3State();
}

class _vd3State extends State<vd3> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();
    const url = 'https://youtu.be/SclaUd90HAc';
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
                  "How to Setup Drip Irrigation for Beginners",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "द्रप्स सिंचाई या 'ड्रिप इर्रिगेशन' (Drip irrigation या trickle irrigation या micro irrigation या localized irrigation), सिंचाई की एक विशेष विधि है जिसमें पानी और खाद की बचत होती है। इस विधि में पानी को पौधों की जड़ों पर बूँद-बूंद करके टपकाया जाता है। इस कार्य के लिए वाल्व, पाइप, नलियों तथा एमिटर का नेटवर्क लगाना पड़ता है। इसे 'टपक सिंचाई' या 'बूँद-बूँद सिंचाई' भी कहते हैं।टपक या बूंद-बूंद सिंचाई एक ऐसी सिंचाई विधि है जिसमें पानी थोड़ी-थोड़ी मात्र में, कम अन्तराल पर, प्लास्टिक की नालियों द्वारा सीधा पौधों की जड़ों तक पहुंचाया जाता है। परम्परागत सतही सिंचाई (conventional irrigation) द्वारा जल का उचित उपयोग नहीं हो पाता, क्योंकि अधिकतर पानी, जोकि पौधों को मिलना चाहिए, जमीन में रिस कर या वाष्पीकरण द्वारा व्यर्थ चला जाता है। अतः उपलब्ध जल का सही और पूर्ण उपयोग करने के लिए एक ऐसी सिंचाई पद्धति अनिवार्य है जिसके द्वारा जल का रिसाव कम से कम हो और अधिक से अधिक पानी पौधे को उपलब्ध हो पाये।कम दबाव और नियंत्रण के साथ सीधे फसलों की जड़ में उनकी आवश्यकतानुसार पानी देना ही टपक सिंचाई है। टपक सिंचाई के माध्यम से पौधों को उर्वरक आपूर्ति करने की प्रक्रिया फर्टिगेशन कहलाती है, जो कि पोषक तत्वों की लीचिंग व वाष्पीकरण नुकसान पर अंकुश लगाकर सही समय पर उपयुक्त फसल पोषण प्रदान करती है।",
                  style: TextStyle(fontFamily: "Poppins"),
                )
              ],
            ),
          ));
}
