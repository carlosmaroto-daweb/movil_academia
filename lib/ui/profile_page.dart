import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:movil_academia/ui/main_page.dart';
import 'package:movil_academia/common/nav.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_circle_left, size: 50.0),
          onPressed: () {
            Navigator.of(context)
                .push(CupertinoPageRoute(builder: (_) => const MainPage()));
          },
        ),
      ),
      body: Stack(children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logos/academia-profile.png',
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: returnResponsiveHeight(context, 0.03)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Academia Cartabón',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: returnResponsiveHeight(context, 0.015)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'atencioncliente@academia.es',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: returnResponsiveHeight(context, 0.05)),
              child: SizedBox(
                width: returnResponsiveWidth(context, 0.9),
                child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    columnWidths: const {
                      0: FractionColumnWidth(0.2),
                      1: FractionColumnWidth(0.35),
                      2: FractionColumnWidth(0.1),
                      3: FractionColumnWidth(0.35),
                    },
                    children: [
                      TableRow(
                        children: [
                          SizedBox(
                            height: returnResponsiveHeight(context, 0.075),
                            child: const Icon(
                              Icons.wallet,
                              size: 40.0,
                              color: Color.fromRGBO(63, 62, 62, 1),
                            ),
                          ),
                          const Text(
                            'CIF Number',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          const Text(
                            '-',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          const Text(
                            '12345678A',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          SizedBox(
                            height: returnResponsiveHeight(context, 0.075),
                            child: const Icon(
                              Icons.phone_iphone,
                              size: 40.0,
                              color: Color.fromRGBO(63, 62, 62, 1),
                            ),
                          ),
                          const Text(
                            'Mobile Number',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          const Text(
                            '-',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          const Text(
                            '123456789',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          SizedBox(
                            height: returnResponsiveHeight(context, 0.075),
                            child: const Icon(
                              Icons.public,
                              size: 40.0,
                              color: Color.fromRGBO(63, 62, 62, 1),
                            ),
                          ),
                          const Text(
                            'Country',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          const Text(
                            '-',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          const Text(
                            'Spain',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          SizedBox(
                            height: returnResponsiveHeight(context, 0.075),
                            child: const Icon(
                              Icons.fmd_good,
                              size: 40.0,
                              color: Color.fromRGBO(63, 62, 62, 1),
                            ),
                          ),
                          const Text(
                            'Address',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          const Text(
                            '-',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          const Text(
                            'C/Melchor almagro 7, Granada',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ]),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: returnResponsiveHeight(context, 0.03)),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(243, 216, 78, 0.9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                  elevation: 0,
                ),
                onPressed: () {},
                child: const Text(
                  'Editar',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        )
      ]),
      bottomNavigationBar: const Nav(3),
    );
  }
}
