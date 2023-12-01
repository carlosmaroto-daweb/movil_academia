import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:movil_academia/common/nav.dart';
import 'package:movil_academia/ui/settings_page.dart';

class PrivacyPage extends StatefulWidget {
  const PrivacyPage({super.key});

  @override
  State<PrivacyPage> createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  double returnResponsiveWidth(context, double originalPercentValue) {
    return MediaQuery.of(context).size.width * originalPercentValue;
  }

  double returnResponsiveHeight(context, double originalPercentValue) {
    return MediaQuery.of(context).size.height * originalPercentValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(26, 26, 26, 1),
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        leadingWidth: 75,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_circle_left, size: 50.0),
          onPressed: () {
            Navigator.of(context)
                .push(CupertinoPageRoute(builder: (_) => const SettingsPage()));
          },
        ),
        title: const Text(
          'Políticas de privacidad',
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.w400),
        ),
      ),
      body: Stack(children: [
        Center(
          child: SizedBox(
            width: returnResponsiveWidth(context, 0.9),
            height: returnResponsiveHeight(context, 0.9),
            child: ListView(children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: returnResponsiveHeight(context, 0.02)),
                    child: const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus id arcu commodo, dapibus turpis bibendum, varius justo. Aliquam finibus dictum malesuada. Nam ut massa ut magna bibendum mattis. Donec ante nibh, blandit eget turpis at, volutpat porta ex. Proin faucibus quis nunc sed finibus. In ultrices magna a ante convallis, sit amet tincidunt tortor viverra. Vivamus blandit ante ac risus finibus interdum quis a sapien.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: returnResponsiveHeight(context, 0.02)),
                    child: const Text(
                      'Morbi sed justo mi. Proin dolor tortor, lacinia ac pellentesque ac, iaculis nec nunc. Praesent laoreet, urna eu tristique posuere, ante lectus sollicitudin nisl, a consequat ex ligula a urna. Donec ullamcorper malesuada accumsan. Vestibulum in hendrerit sem, vel tempor odio. Duis ut felis nec nunc tincidunt dignissim. Duis maximus ipsum vitae quam volutpat, id ultricies turpis egestas. Cras cursus vel orci quis dictum. Ut eget leo nisl. Cras at ligula massa. Praesent eget ultricies mauris.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: returnResponsiveHeight(context, 0.02)),
                    child: const Text(
                      'Nulla erat nisl, dapibus eu quam vel, tincidunt rutrum enim. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis fringilla nisi, tincidunt sollicitudin dui. Mauris ac libero tellus. Sed accumsan nisl id dapibus faucibus. Ut laoreet quis orci eget condimentum. Maecenas nec purus pretium, egestas mi sit amet, pulvinar eros. Proin facilisis ex convallis accumsan fringilla. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce porta consectetur libero, id scelerisque quam faucibus vel. Etiam imperdiet, massa vel sollicitudin luctus, orci risus fringilla enim, vel volutpat nunc nulla ut ex. Nam sagittis nulla id neque vestibulum, sed consequat tortor aliquet. Pellentesque luctus bibendum scelerisque. Nulla a tortor molestie, tempor dolor a, finibus ipsum.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        )
      ]),
      bottomNavigationBar: const Nav(4),
    );
  }
}
