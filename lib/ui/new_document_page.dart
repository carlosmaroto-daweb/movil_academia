import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:movil_academia/common/nav.dart';
import 'package:movil_academia/ui/settings_page.dart';

class NewDocumentPage extends StatefulWidget {
  const NewDocumentPage({super.key});

  @override
  State<NewDocumentPage> createState() => _NewDocumentPageState();
}

class _NewDocumentPageState extends State<NewDocumentPage> {
  // ignore: prefer_typing_uninitialized_variables
  var file;
  bool uploadArchive = false;

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
          'Nuevo documento',
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.w400),
        ),
      ),
      body: Stack(children: [
        Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: returnResponsiveHeight(context, 0.015)),
              child: Center(
                child: InkWell(
                  onTap: () async {
                    FilePickerResult? result =
                        await FilePicker.platform.pickFiles();
                    if (result != null) {
                      setState(() {
                        uploadArchive = true;
                      });
                      file = result.files.first;
                    }
                  },
                  child: DottedBorder(
                    color: Colors.white,
                    strokeWidth: 0.5,
                    dashPattern: const [10, 6],
                    child: Container(
                      width: returnResponsiveWidth(context, 0.8),
                      height: returnResponsiveHeight(context, 0.25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: returnResponsiveHeight(context, 0.02)),
                        child: getFile(context),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: returnResponsiveHeight(context, 0.05)),
              child: Center(
                child: Container(
                  width: returnResponsiveWidth(context, 0.8),
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(63, 62, 62, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextFormField(
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.white70),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Nombre del documento',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.white70),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: returnResponsiveHeight(context, 0.02)),
              child: Center(
                child: Container(
                  width: returnResponsiveWidth(context, 0.8),
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(63, 62, 62, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextFormField(
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.white70),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Palabras clave',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.white70),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: returnResponsiveHeight(context, 0.02)),
              child: Center(
                child: Container(
                  width: returnResponsiveWidth(context, 0.8),
                  height: returnResponsiveHeight(context, 0.15),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(63, 62, 62, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextFormField(
                      maxLines: 5,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.white70),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Descripción',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.white70),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: returnResponsiveHeight(context, 0.05)),
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
                  'Subir documento',
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
      bottomNavigationBar: const Nav(4),
    );
  }

  Column getFile(BuildContext context) {
    if (uploadArchive) {
      return Column(
        children: [
          const Icon(Icons.insert_drive_file_outlined,
              color: Colors.white, size: 75),
          Padding(
            padding:
                EdgeInsets.only(top: returnResponsiveHeight(context, 0.02)),
            child: Text(
              '${file.name}',
              style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Text(
            '27/10/2023\n${file.size}',
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white70,
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
        ],
      );
    } else {
      return Column(children: [
        const Icon(Icons.note_add, color: Colors.white, size: 75),
        Padding(
          padding: EdgeInsets.only(top: returnResponsiveHeight(context, 0.02)),
          child: const Text('Subir nuevo documento',
              style: TextStyle(color: Colors.white, fontSize: 16)),
        )
      ]);
    }
  }
}
