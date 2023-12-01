import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:movil_academia/ui/main_page.dart';
import 'package:movil_academia/common/nav.dart';
import 'package:movil_academia/ui/new_document_page.dart';
import 'package:movil_academia/ui/signature_page.dart';
import 'package:movil_academia/ui/privacy_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
                .push(CupertinoPageRoute(builder: (_) => const MainPage()));
          },
        ),
        title: const Text(
          'Acciones',
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.w400),
        ),
      ),
      body: Stack(children: [
        ListView(children: [
          Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: returnResponsiveHeight(context, 0.05)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(CupertinoPageRoute(
                            builder: (_) => const NewDocumentPage()));
                      },
                      child: Container(
                          width: returnResponsiveWidth(context, 0.45),
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(243, 216, 78, 0.9),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 15, 20, 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(Icons.note_add,
                                    color: Colors.white, size: 75.0),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: returnResponsiveHeight(
                                          context, 0.015)),
                                  child: const Text(
                                    'Nuevo documento',
                                    style: TextStyle(
                                        fontFamily: 'Raleway',
                                        color: Colors.white,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          width: returnResponsiveWidth(context, 0.45),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 15, 20, 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(Icons.supervisor_account,
                                    color: Color.fromRGBO(153, 136, 49, 0.898),
                                    size: 75.0),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: returnResponsiveHeight(
                                          context, 0.015)),
                                  child: const Text(
                                    'Lista empleados',
                                    style: TextStyle(
                                        fontFamily: 'Raleway',
                                        color: Colors.black,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: returnResponsiveHeight(context, 0.03)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(CupertinoPageRoute(
                            builder: (_) => const SignaturePage()));
                      },
                      child: Container(
                          width: returnResponsiveWidth(context, 0.45),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 15, 20, 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(Icons.assignment,
                                    color: Color.fromRGBO(153, 136, 49, 0.898),
                                    size: 75.0),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: returnResponsiveHeight(
                                          context, 0.015)),
                                  child: const Text(
                                    'Firmar documentos',
                                    style: TextStyle(
                                        fontFamily: 'Raleway',
                                        color: Colors.black,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          width: returnResponsiveWidth(context, 0.45),
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(243, 216, 78, 0.9),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 15, 20, 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(Icons.call,
                                    color: Colors.white, size: 75.0),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: returnResponsiveHeight(
                                          context, 0.015)),
                                  child: const Text(
                                    'Atención al cliente',
                                    style: TextStyle(
                                        fontFamily: 'Raleway',
                                        color: Colors.white,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: returnResponsiveHeight(context, 0.03)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                          width: returnResponsiveWidth(context, 0.45),
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(243, 216, 78, 0.9),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 15, 20, 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(Icons.settings,
                                    color: Colors.white, size: 75.0),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: returnResponsiveHeight(
                                          context, 0.015)),
                                  child: const Text(
                                    'Configuración',
                                    style: TextStyle(
                                        fontFamily: 'Raleway',
                                        color: Colors.white,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(CupertinoPageRoute(
                            builder: (_) => const PrivacyPage()));
                      },
                      child: Container(
                          width: returnResponsiveWidth(context, 0.45),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 15, 20, 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(Icons.security,
                                    color: Color.fromRGBO(153, 136, 49, 0.898),
                                    size: 75.0),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: returnResponsiveHeight(
                                          context, 0.015)),
                                  child: const Text(
                                    'Políticas privacidad',
                                    style: TextStyle(
                                        fontFamily: 'Raleway',
                                        color: Colors.black,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ])
      ]),
      bottomNavigationBar: const Nav(4),
    );
  }
}
