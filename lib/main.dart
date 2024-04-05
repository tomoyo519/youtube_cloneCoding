import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone_project/presentation/components/categoryBox.dart';
import 'presentation/components/categoryBox.dart';
import 'presentation/components/VideoCard.dart';
import 'model/Video.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube Clone',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List menus = ['전체', '게임', '뉴스', '실시간', '믹스', '액션'];
  final List<Video> videos = [
    Video(
      profileImg: 'assets/profile-user.png',
      title: '썸네일 만드는법',
      playTime: '16:21',
      subtitle: '제대로 알려드림',
      channelName: '빠니보틀',
      count: 999,
      history: '9시간 전 업로드',
    )
  ];
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Colors.black,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Image.asset('assets/youtube_logo.png'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: IconButton(
                onPressed: () {}, icon: Image.asset('assets/screen.png')),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/notification.png')),
                Positioned(
                  right: -1,
                  child: Container(
                    width: 30,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Text(
                      '9+',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: IconButton(
                onPressed: () {}, icon: Image.asset('assets/search.png')),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: IconButton(
                onPressed: () {}, icon: Image.asset('assets/profile-user.png')),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 40,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: Image.asset('assets/compass.png')),
                      ),
                    ),
                  ),
                  ...menus.map((e) => CategoryBox(name: e)).toList(),
                ],
              ),
            ),
            Container(
              child: Column(
                children: videos.map((e) => VideoCard(video: e)).toList(),
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        shape: CircularNotchedRectangle(), // 중앙에 노치를 만듭니다
        notchMargin: 6.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                IconButton(
                    icon: Icon(Icons.home, color: Colors.white),
                    onPressed: () {}),
                Text(
                  "홈",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),

            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
            SizedBox(
              width: 48,
              child: IconButton(
                icon: Icon(Icons.add_circle_outline_outlined),
                onPressed: () {},
              ),
            ), // 중앙 버튼으로 인해 비워둘 공간
            IconButton(
                icon: Icon(Icons.stacked_bar_chart, color: Colors.white),
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.playlist_add_circle, color: Colors.white),
                onPressed: () {}),
          ],
        ),
      ),

      // bottomNavigationBar: Container(
      //   child: BottomNavigationBar(
      //     type: BottomNavigationBarType.fixed,
      //     backgroundColor: Colors.black,
      //     fixedColor: Colors.white,
      //     unselectedItemColor: Colors.grey,
      //     items: [
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         label: "홈",
      //       ),
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: "shorts"),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.add_circle_outline_outlined), label: ""),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.stacked_bar_chart), label: "구독"),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.playlist_add_circle), label: "보관함"),
      //     ],
      //   ),
      // ),
    );
  }
}
