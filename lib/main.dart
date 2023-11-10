import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
          appBar: _getAppBar(),
          body: SafeArea(
            child: _getmainBody(),
          )),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      backgroundColor: Color.fromARGB(113, 66, 200, 151),
      title: Image(image: AssetImage('images/b.png'), height: 58),
      centerTitle: true,
      elevation: 0,
    );
  }

  Widget _getmainBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
          ),
          _getMainContent(),
        ],
      ),
    );
  }

  Widget _getMainContent() {
    return Column(
      children: [
        SizedBox(height: 20),
        CircleAvatar(
          backgroundImage: AssetImage('images/aa.jpg'),
          radius: 70,
        ),
        SizedBox(height: 15),
        Text(
          'داتیگو هستم یه برنامه نویس',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
        ),
        SizedBox(height: 15),
        Text(
          '. عاشق برنامه نویسی موبایل  اندروید و فلاتر ',
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 12),
        _getRowIcons(),
        SizedBox(height: 12),
        _getSkilLabel(),
        SizedBox(height: 12),
        _getResume(),
      ],
    );
  }

  Widget _getRowIcons() {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedin),
          color: Colors.blueAccent,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.instagramSquare),
          color: Colors.red[400],
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.telegram),
          color: Colors.blue,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.githubSquare),
          color: Colors.black,
        ),
      ],
    );
  }

  Widget _getSkilLabel() {
    var list = ['android', 'flutter', 'java', 'dart', 'kotlin'];
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 8,
      runSpacing: 16,
      children: [
        for (var skill in list)
          Card(
            elevation: 6,
            child: Column(
              children: [
                Container(
                  height: 80,
                  child: Image(
                    image: AssetImage('images/$skill.png'),
                    width: 60,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('$skill'),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _getResume() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: double.infinity,
      color: Colors.green[200],
      child: Column(
        children: [
          Text(
            'سابقه کاری من',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          _getHistoryColumn(),
        ],
      ),
    );
  }

  Widget _getHistoryColumn() {
    var list = [
      'برنامه‌نویس اندروید زرین‌پال از سال ۹۷',
      'هشت ترم ورک‌‌شاپ عملی اندروید دانشگاه تهران',
      'چنل آموزشی یوتوب از سال ۲۰۱۷',
      '(Iran cs50x)مدرس دوره اندروید هاروارد ',
      'اموزش برنامه‌نویسی اندروید از سال ۹۳',
      'ExpertFlutter مدرس و عشق دمنده '
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: double.infinity,
          height: 20,
        ),
        for (var histori in list)
          Text(
            '$histori',
            textDirection: TextDirection.ltr,
          ),
        SizedBox(
          width: double.infinity,
        )
      ],
    );
  }
}
