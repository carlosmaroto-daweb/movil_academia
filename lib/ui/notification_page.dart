import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:movil_academia/ui/main_page.dart';
import 'package:movil_academia/common/nav.dart';
import 'package:movil_academia/common/notification.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<NewNotification> notification = [];

  double returnResponsiveWidth(context, double originalPercentValue) {
    return MediaQuery.of(context).size.width * originalPercentValue;
  }

  double returnResponsiveHeight(context, double originalPercentValue) {
    return MediaQuery.of(context).size.height * originalPercentValue;
  }

  @override
  void initState() {
    super.initState();
    notification.add(
        NewNotification(0, "Nombre completo de la notificación 1", "Alta"));
    notification.add(
        NewNotification(1, "Nombre completo de la notificación 2", "Media"));
    notification.add(
        NewNotification(2, "Nombre completo de la notificación 3", "Baja"));
    notification.add(
        NewNotification(3, "Nombre completo de la notificación 4", "Alta"));
    notification.add(
        NewNotification(4, "Nombre completo de la notificación 5", "Alta"));
    notification.add(
        NewNotification(5, "Nombre completo de la notificación 6", "Alta"));
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
          'Notificaciones',
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.w400),
        ),
      ),
      body: Stack(children: [
        Center(
          child: Column(children: [
            SizedBox(
              width: returnResponsiveWidth(context, 0.95),
              height: returnResponsiveHeight(context, 0.75),
              child: ListView.builder(
                  itemCount: notification.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          top: returnResponsiveHeight(context, 0.02)),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: SizedBox(
                              width: returnResponsiveWidth(context, 0.9),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image:
                                            AssetImage('assets/img/news.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: returnResponsiveWidth(
                                            context, 0.05)),
                                    child: SizedBox(
                                      width:
                                          returnResponsiveWidth(context, 0.6),
                                      child: Column(
                                        children: [
                                          Text(
                                            '${notification[index].title}',
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: returnResponsiveHeight(
                                                    context, 0.02)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Icon(Icons.schedule,
                                                            color:
                                                                Colors.white60,
                                                            size: 20),
                                                        Text(
                                                          ' Hace 4 horas',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .white60,
                                                              fontSize: 15),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  width: 1,
                                                  height: 30,
                                                  child: VerticalDivider(
                                                    color: Colors.white60,
                                                    thickness: 0.5,
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    minimumSize:
                                                        const Size(90, 30),
                                                    backgroundColor:
                                                        getColorPriority(
                                                            notification[index]
                                                                .priority),
                                                    padding: const EdgeInsets
                                                        .fromLTRB(25, 5, 25, 5),
                                                    elevation: 0,
                                                  ),
                                                  onPressed: () {},
                                                  child: Text(
                                                    '${notification[index].priority}',
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400),
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
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: returnResponsiveHeight(context, 0.02)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: returnResponsiveWidth(context, 0.8),
                                  child: const Divider(
                                    color: Colors.white60,
                                    thickness: 0.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  })),
            )
          ]),
        ),
      ]),
      bottomNavigationBar: const Nav(1),
    );
  }

  Color getColorPriority(priority) {
    Color result;
    switch (priority) {
      case "Alta":
        result = Colors.red;
        break;
      case "Media":
        result = Colors.blue;
        break;
      case "Baja":
        result = Colors.green;
        break;
      default:
        result = const Color.fromRGBO(243, 216, 78, 0.9);
    }
    return result;
  }
}
