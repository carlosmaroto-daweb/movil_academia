import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:movil_academia/common/nav.dart';
import 'package:movil_academia/ui/settings_page.dart';
import 'package:movil_academia/common/file.dart';
import 'package:signature/signature.dart';

class SignaturePage extends StatefulWidget {
  const SignaturePage({super.key});

  @override
  State<SignaturePage> createState() => _SignaturePageState();
}

class _SignaturePageState extends State<SignaturePage> {
  List<File> pdfFiles = [];
  int _indexSelectedPDF = -1;
  bool _selectedPDF = false;
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 2,
    penColor: Colors.white,
  );
  // ignore: prefer_typing_uninitialized_variables
  var _signatureCanvas;

  double returnResponsiveWidth(context, double originalPercentValue) {
    return MediaQuery.of(context).size.width * originalPercentValue;
  }

  double returnResponsiveHeight(context, double originalPercentValue) {
    return MediaQuery.of(context).size.height * originalPercentValue;
  }

  @override
  void initState() {
    super.initState();
    pdfFiles.add(File(0, "Nombre1.pdf"));
    pdfFiles.add(File(1, "Nombre2.pdf"));
    pdfFiles.add(File(2, "Nombre3.pdf"));
    pdfFiles.add(File(3, "Nombre4.pdf"));
    pdfFiles.add(File(4, "Nombre5.pdf"));
    pdfFiles.add(File(5, "Nombre6.pdf"));
  }

  @override
  Widget build(BuildContext context) {
    _signatureCanvas = Signature(
      controller: _controller,
      width: returnResponsiveWidth(context, 0.8),
      height: returnResponsiveHeight(context, 0.2),
      backgroundColor: const Color.fromRGBO(63, 62, 62, 1),
    );
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
          'Firmar documentación',
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.w400),
        ),
      ),
      body: Stack(children: [
        Column(
          children: [
            SizedBox(
              width: returnResponsiveWidth(context, 0.8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: returnResponsiveHeight(context, 0.02)),
                    child: const Text(
                      'Documentos pendientes de firmar',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: returnResponsiveWidth(context, 0.95),
              height: 175,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: pdfFiles.length,
                  itemBuilder: ((context, index) {
                    return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration:
                                BoxDecoration(border: getBorderActive(index)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (_selectedPDF) {
                                      if (_indexSelectedPDF == index) {
                                        _indexSelectedPDF = -1;
                                        _selectedPDF = false;
                                      } else {
                                        _indexSelectedPDF = index;
                                        _selectedPDF = true;
                                        _controller.clear();
                                      }
                                    } else {
                                      _indexSelectedPDF = index;
                                      _selectedPDF = true;
                                      _controller.clear();
                                    }
                                  });
                                },
                                child: Column(
                                  children: [
                                    const Icon(Icons.insert_drive_file_outlined,
                                        color: Colors.white, size: 100),
                                    Text(
                                      '${pdfFiles[index].title}',
                                      style: const TextStyle(
                                          color: Colors.white70,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Text(
                                      '27/10/2023\n10,2 MB',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ]);
                  })),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: returnResponsiveHeight(context, 0.02)),
              child: SizedBox(
                width: returnResponsiveWidth(context, 0.8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(
                      color: Colors.white60,
                      thickness: 0.5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: returnResponsiveHeight(context, 0.02)),
                      child: const Text(
                        'Dibuje la firma en el recuadro',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: returnResponsiveHeight(context, 0.03)),
                      child: Center(
                        child: DottedBorder(
                          color: Colors.white,
                          strokeWidth: 0.5,
                          dashPattern: const [10, 6],
                          child: Container(
                            width: returnResponsiveWidth(context, 0.8),
                            height: returnResponsiveHeight(context, 0.2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: getCanvas(),
                          ),
                        ),
                      ),
                    ),
                    getTextReset(),
                    Padding(
                      padding: EdgeInsets.only(
                          top: returnResponsiveHeight(context, 0.05)),
                      child: Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(243, 216, 78, 0.9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                            elevation: 0,
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Firmar documento',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ]),
      bottomNavigationBar: const Nav(4),
    );
  }

  Widget getTextReset() {
    if (_selectedPDF) {
      return InkWell(
        onTap: () async {
          _controller.clear();
        },
        child: const Center(
          child: Text(
            'Restablecer firma',
            style: TextStyle(color: Colors.red, fontSize: 18),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  Border getBorderActive(index) {
    if (_indexSelectedPDF == index) {
      return Border.all(color: const Color.fromRGBO(243, 216, 78, 0.9));
    } else {
      return Border.all(color: Colors.transparent);
    }
  }

  Widget getCanvas() {
    if (_selectedPDF) {
      return _signatureCanvas;
    } else {
      return Container();
    }
  }
}
