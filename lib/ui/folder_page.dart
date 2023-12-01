// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:movil_academia/common/nav.dart';
import 'package:movil_academia/common/file.dart';
import 'package:movil_academia/ui/documents_page.dart';

class FolderPage extends StatefulWidget {
  const FolderPage({super.key});

  @override
  State<FolderPage> createState() => _FolderPageState();
}

class _FolderPageState extends State<FolderPage> {
  List<File> pdfFiles = [];
  List<Widget> pdfGridView = [];
  int _selectedIndex = 0;

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
    pdfFiles.add(File(6, "Nombre7.pdf"));
    pdfFiles.add(File(7, "Nombre8.pdf"));
    pdfFiles.add(File(8, "Nombre9.pdf"));
    pdfFiles.add(File(9, "Nombre10.pdf"));
    pdfFiles.add(File(10, "Nombre11.pdf"));
    pdfFiles.add(File(11, "Nombre12.pdf"));
    pdfFiles.add(File(12, "Nombre13.pdf"));
    pdfFiles.add(File(13, "Nombre14.pdf"));
    pdfFiles.add(File(14, "Nombre15.pdf"));
    pdfFiles.add(File(15, "Nombre16.pdf"));
    pdfFiles.add(File(16, "Nombre17.pdf"));
    pdfFiles.add(File(17, "Nombre18.pdf"));
    pdfFiles.add(File(18, "Nombre19.pdf"));
    pdfFiles.add(File(19, "Nombre20.pdf"));

    for (var pdfFile in pdfFiles) {
      pdfGridView.add(InkWell(
        onTap: () {},
        onLongPress: () {},
        child: Column(
          children: [
            const Icon(Icons.insert_drive_file_outlined,
                color: Colors.white, size: 100),
            Text(
              '${pdfFile.title}',
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
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _views = <Widget>[
      Stack(children: [
        Padding(
          padding: EdgeInsets.only(top: returnResponsiveHeight(context, 0.02)),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: getChildAspectRatio()),
            children: pdfGridView,
          ),
        )
      ]),
      Stack(children: [
        ListView.builder(
            itemCount: pdfFiles.length,
            itemBuilder: ((context, index) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: returnResponsiveHeight(context, 0.025)),
                    child: InkWell(
                      onTap: () {},
                      onLongPress: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/img/pdf.png', scale: 1.5),
                          Padding(
                            padding: EdgeInsets.only(
                                left: returnResponsiveWidth(context, 0.05)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: returnResponsiveHeight(
                                          context, 0.005)),
                                  child: Text(
                                    '${pdfFiles[index].title}',
                                    style: const TextStyle(
                                        color: Colors.white70,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: returnResponsiveHeight(
                                          context, 0.01)),
                                  child: const Text(
                                    '27/10/2023 · 10,2 MB',
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: returnResponsiveHeight(
                                          context, 0.005)),
                                  child: SizedBox(
                                    width: returnResponsiveWidth(context, 0.5),
                                    child: const Divider(
                                      color: Colors.white60,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              );
            }))
      ]),
    ];
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
            Navigator.of(context).push(
                CupertinoPageRoute(builder: (_) => const DocumentsPage()));
          },
        ),
        title: const Text(
          'Biblioteca documental',
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
                icon: getIcon(),
                onPressed: () {
                  setState(() {
                    _selectedIndex++;
                    _selectedIndex = _selectedIndex % 2;
                  });
                },
              ),
            ),
          ),
        ],
      ),
      body: _views.elementAt(_selectedIndex),
      bottomNavigationBar: const Nav(0),
    );
  }

  Icon getIcon() {
    if (_selectedIndex == 0) {
      return const Icon(Icons.list_outlined, size: 30.0);
    } else {
      return const Icon(Icons.grid_view, size: 30.0);
    }
  }

  double getChildAspectRatio() {
    if (returnResponsiveHeight(context, 1) >
        returnResponsiveWidth(context, 1)) {
      return 4 / 5;
    } else {
      return 2 / 1;
    }
  }
}
