import 'package:flutter/material.dart';
import 'package:movil_academia/common/nav.dart';
import 'package:movil_academia/common/file.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  List<File> recentFiles = [];

  double returnResponsiveWidth(context, double originalPercentValue) {
    return MediaQuery.of(context).size.width * originalPercentValue;
  }

  double returnResponsiveHeight(context, double originalPercentValue) {
    return MediaQuery.of(context).size.height * originalPercentValue;
  }

  @override
  void initState() {
    super.initState();
    recentFiles.add(File(0, "Documento 1.pdf"));
    recentFiles.add(File(1, "Documento 2.pdf"));
    recentFiles.add(File(2, "Documento 3.pdf"));
    recentFiles.add(File(3, "Documento 4.pdf"));
    recentFiles.add(File(4, "Documento 5.pdf"));
    recentFiles.add(File(5, "Documento 6.pdf"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(26, 26, 26, 1),
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        titleSpacing: 30,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: const Text(
          'Hola Academia Cartabón',
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.w400),
        ),
        actions: <Widget>[
          Padding(
            padding:
                EdgeInsets.only(right: returnResponsiveWidth(context, 0.05)),
            child: SizedBox(
              height: 50.0,
              width: 50.0,
              child: IconButton(
                padding: const EdgeInsets.all(0.0),
                icon: const Icon(Icons.account_circle, size: 50.0),
                onPressed: () {
                  // handle the press
                },
              ),
            ),
          ),
        ],
      ),
      body: Stack(children: [
        Column(children: [
          Padding(
            padding:
                EdgeInsets.only(top: returnResponsiveHeight(context, 0.003)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: returnResponsiveWidth(context, 0.8),
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(63, 62, 62, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 19,
                        color: Colors.white70),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: IconButton(
                        padding: EdgeInsets.only(
                            left: returnResponsiveWidth(context, 0.03)),
                        icon: const Icon(Icons.search,
                            color: Colors.white, size: 36.0),
                        onPressed: () {
                          // handle the press
                        },
                      ),
                      hintText: 'Buscar en tus documentos',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 19,
                          color: Colors.white70),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: returnResponsiveHeight(context, 0.025)),
            child: SizedBox(
              width: returnResponsiveWidth(context, 0.8),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Explorar directorios',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          padding: const EdgeInsets.all(0)),
                      onPressed: () {},
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Ver todos',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300)),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.navigate_next,
                              color: Colors.white, size: 25.0)
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: returnResponsiveHeight(context, 0.025)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: returnResponsiveWidth(context, 0.9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            const CircleAvatar(
                                radius: 35,
                                backgroundColor: Color.fromRGBO(45, 43, 43, 1),
                                child: Icon(Icons.security,
                                    color: Color.fromRGBO(243, 216, 78, 0.9),
                                    size: 40.0)),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: returnResponsiveHeight(context, 0.015)),
                              child: const Text(
                                'Protección de\ndatos',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            const CircleAvatar(
                                radius: 35,
                                backgroundColor: Color.fromRGBO(45, 43, 43, 1),
                                child: Icon(Icons.supervisor_account,
                                    color: Color.fromRGBO(153, 136, 49, 0.898),
                                    size: 40.0)),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: returnResponsiveHeight(context, 0.015)),
                              child: const Text(
                                'Empleados',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            const CircleAvatar(
                                radius: 35,
                                backgroundColor: Color.fromRGBO(45, 43, 43, 1),
                                child: Icon(Icons.business,
                                    color: Color.fromRGBO(243, 216, 78, 0.9),
                                    size: 40.0)),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: returnResponsiveHeight(context, 0.015)),
                              child: const Text(
                                'Tratamientos de\ndatos',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            const CircleAvatar(
                                radius: 35,
                                backgroundColor: Color.fromRGBO(45, 43, 43, 1),
                                child: Icon(Icons.highlight_alt,
                                    color: Color.fromRGBO(153, 136, 49, 0.898),
                                    size: 40.0)),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: returnResponsiveHeight(context, 0.015)),
                              child: const Text(
                                'Otros',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: returnResponsiveHeight(context, 0.035)),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                width: returnResponsiveWidth(context, 0.9),
                child: const Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
              )
            ]),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: returnResponsiveHeight(context, 0.02)),
            child: SizedBox(
              width: returnResponsiveWidth(context, 0.8),
              child: const Row(
                children: [
                  Text(
                    'Archivos recientes',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: returnResponsiveHeight(context, 0.02)),
            child: SizedBox(
              width: returnResponsiveWidth(context, 1),
              height: returnResponsiveHeight(context, 0.33),
              child: ListView.builder(
                  itemCount: recentFiles.length,
                  itemBuilder: ((context, index) {
                    return Column(children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: returnResponsiveHeight(context, 0.01)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: returnResponsiveWidth(context, 0.8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IconButton(
                                    icon: Image.asset('assets/img/pdf.png'),
                                    iconSize: 80,
                                    padding: const EdgeInsets.all(0.0),
                                    constraints: const BoxConstraints(),
                                    onPressed: () {},
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          padding: const EdgeInsets.all(0),
                                          tapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          minimumSize: const Size(0, 0),
                                        ),
                                        child: Text(
                                          '${recentFiles[index].title}',
                                          style: const TextStyle(
                                              color: Colors.white70,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        onPressed: () {},
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: returnResponsiveHeight(
                                                context, 0.01)),
                                        child: const Text(
                                          '27/10/2023 · 10,2 MB',
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: returnResponsiveHeight(
                                                context, 0.01)),
                                        child: const Text(
                                          'Protección de datos/2023/',
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.more_vert,
                                        color: Colors.white, size: 30.0),
                                    padding: const EdgeInsets.all(0.0),
                                    constraints: const BoxConstraints(),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: returnResponsiveHeight(context, 0.02)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: returnResponsiveWidth(context, 0.7),
                              child: const Divider(
                                color: Colors.white60,
                                thickness: 0.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]);
                  })),
            ),
          )
        ]),
      ]),
      bottomNavigationBar: const Nav(2),
    );
  }
}
