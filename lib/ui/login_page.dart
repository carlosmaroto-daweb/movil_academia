import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:movil_academia/ui/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  double returnResponsiveWidth(context, double originalPercentValue) {
    return MediaQuery.of(context).size.width * originalPercentValue;
  }

  double returnResponsiveHeight(context, double originalPercentValue) {
    return MediaQuery.of(context).size.height * originalPercentValue;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Stack(children: [
        Row(
          children: [
            Expanded(
              child: CustomPaint(
                size: Size.fromWidth(screenWidth),
                painter: DrawCircle(),
              ),
            ),
          ],
        ),
        const Row(children: [
          Padding(
            padding: EdgeInsets.all(80),
            child: Text(
              'LOGIN',
              style: TextStyle(
                  fontFamily: 'Raleway',
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ]),
        Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding:
                    EdgeInsets.only(top: returnResponsiveHeight(context, 0.34)),
                child: Image.asset(
                  'assets/logos/academia.png',
                ),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Padding(
                padding:
                    EdgeInsets.only(top: returnResponsiveHeight(context, 0.05)),
                child: SizedBox(
                    width: returnResponsiveWidth(context, 0.8),
                    height: returnResponsiveHeight(context, 0.35),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: returnResponsiveHeight(context, 0.025)),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: returnResponsiveHeight(context, 0.03)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: returnResponsiveWidth(context, 0.65),
                                    child: TextFormField(
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20.0),
                                      decoration: const InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                          hintText: 'Usuario'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: returnResponsiveHeight(context, 0.03)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: returnResponsiveWidth(context, 0.65),
                                    child: TextFormField(
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20.0),
                                      decoration: const InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                          hintText: 'Contraseña'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: returnResponsiveHeight(context, 0.015)),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    right:
                                        returnResponsiveHeight(context, 0.03)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      child: const Text(
                                        '¿Olvidó su contraseña?',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            color: Colors.black54,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveHeight(context, 0.06)),
                  child: TextButton(
                    child: const Text.rich(TextSpan(
                        text: '¿Aún no tienes cuenta? ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'Registrate',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 0, 0)),
                          ),
                        ])),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: returnResponsiveHeight(context, 0.82)),
          child: Stack(children: [
            Row(
              children: [
                Expanded(
                  child: CustomPaint(
                    size: Size.fromWidth(screenWidth),
                    painter: DrawCustomButton(),
                  ),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              TextButton(
                child: const Text(
                  'ACCEDER',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                onPressed: () {
                  handleNavigateTapToControllerPage(context);
                },
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.arrow_forward,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 30.0,
                ),
              ),
            ]),
          ]),
        ),
      ]),
    );
  }
}

void handleNavigateTapToControllerPage(BuildContext context) {
  Navigator.of(context)
      .push(CupertinoPageRoute(builder: (_) => const MainPage()));
}

class DrawCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const center = Offset(80, 80);
    const radius = 180.0;
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class DrawCustomButton extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(size.width, 0)
      ..lineTo(size.width, 55)
      ..lineTo(size.width - 150, 55)
      ..lineTo(size.width - 250, 0)
      ..lineTo(size.width, 0);
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
