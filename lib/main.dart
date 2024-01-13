import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer()..setReleaseMode(ReleaseMode.loop);

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    screen1(),
    screen2(),
    screen3(),
    screen4(),
  ];

  int previousIndex=0;
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    if (currentIndex==0) player.play(AssetSource('1.mp3'));
    return MaterialApp(
      title: '我的自傳',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                       useMaterial3: true,),
      home: Scaffold(
        appBar: AppBar(title: Text('我的自傳'),),
        body: tabs[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18,
          unselectedFontSize: 14,
          iconSize: 30,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(icon: currentIndex==0? Image.asset('images/introduction.png',width:40,height:40): Image.asset('images/introduction.png',width:20,height:20), label:'自我介紹',),
            BottomNavigationBarItem(icon: Icon(Icons.school), label:'學習歷程',),
            BottomNavigationBarItem(icon: Icon(Icons.schedule_outlined), label:'學習計畫',),
            BottomNavigationBarItem(icon: Icon(Icons.engineering), label:'專業方向',),
          ],
          onTap: (index) {
            setState(() {
              previousIndex=currentIndex;
              currentIndex=index;
              if (index==0) {
                if (previousIndex==currentIndex) player.resume();
                player.stop();
                player.play(AssetSource('1.mp3'));
              }
              if (index==1) {
                if (previousIndex==currentIndex) player.resume();
                player.stop();
                player.play(AssetSource('2.mp3'));
              }
              if (index==2) {
                if (previousIndex==currentIndex) player.resume();
                player.stop();
                player.play(AssetSource('3.mp3'));
              }
              if (index==3) {
                if (previousIndex==currentIndex) player.resume();
                player.stop();
                player.play(AssetSource('4.mp3'));
              }
            });
          },
        ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  final String s1='電子資訊領域充滿了不斷變化和挑戰，這正是吸引我的地方。我喜歡解決問題、克服困難，而電子資訊領域正提供了一個充滿挑戰性的舞台，讓我可以不斷突破自己的極限。'
                  '高一的時候，我在學校的成績相當不錯，但學校的地位相對較低，這讓我感到一些壓力。高二，我開始專注於加強自己在電子實習和程式方面的能力。我參與了一些電子實習項目，透過實際動手操作，我更深刻地理解了電子原理和實踐技能。'
                  '同時，我也開始學習程式語言，主要集中在C++和VB上。這些語言的學習不僅擴展了我的技能範圍，還為未來的資訊科技領域打下了堅實的基礎。'
                  '高三是最為關鍵的一年，我決定專注於應對即將到來的考試。這一年，我投入了大量的時間和精力進行復習和模擬考試。';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //放標題
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text('Who am I', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          //自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width:3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(color: Colors.amberAccent, offset: Offset(6, 6)),
              ],
            ),
            child: Text(s1, style: TextStyle(fontSize: 20)),
          ),
          SizedBox(height: 10,),
          //放一張照片
          Container(
            color: Colors.blueAccent,
            child:Image.asset('images/IMG_kai.jpg'),
            height: 200,
            width: 200,
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height:150,
                decoration: BoxDecoration(
                  border: Border.all(width:2, color: Colors.purple, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage('images/IMG_kai2.jpg'), fit: BoxFit.cover),
                ),
                //color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {

  final String s2='工數一開始真的像個天書，一片茫然。微積分和線性代數的公式看得我暈頭轉向，但總算在努力和死磕下，漸漸看懂了一點。'
                  '一開始學C++真的有夠辛苦，感覺比Python難上許多。但也正因為這樣的挑戰，讓我更深入地理解計算機是如何運作的，還能更靠近硬體層。'
                  '然後我就發現Python是個好東西。它的語法簡單易懂，我一下子就能開始寫一些小程式。用Python分析資料、做實驗模擬，甚至還能自動執行一些瑣碎的任務。這真的像是我學到的最實用的技能之一。';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //放標題
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text('學習歷程', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          //自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width:3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(color: Colors.amberAccent, offset: Offset(6, 6)),
              ],
            ),
            child: Text(s2, style: TextStyle(fontSize: 20)),
          ),
          SizedBox(height: 10,),
          //放一張照片
          Container(
            color: Colors.redAccent,
            child:Image.asset('images/IMG_3680.jpg'),
            height: 200,
            width: 300,
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height:150,
                decoration: BoxDecoration(
                  border: Border.all(width:2, color: Colors.purple, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage('images/IMG_kai_math.jpg'), fit: BoxFit.cover),
                ),
                //color: Colors.white,
              ),
              Container(
                width: 150,
                height:150,
                decoration: BoxDecoration(
                  border: Border.all(width:2, color: Colors.purple, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage('images/IMG_3601.jpg'), fit: BoxFit.cover),
                ),
                //color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('大一時期'),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height:100,
              width: 300,
              child: ListView(
                children: [
                  Text('1. 習慣氣溫和美食'),
                  Text('2. 人際關係'),
                  Text('3. 不遲到'),
                ],
              ),
            ),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('大二時期'),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height:100,
              width: 300,
              child: ListView(
                children: [
                  Text('1. 享受大學生活'),
                  Text('2. 人際關係'),
                  Text('3. 打工賺錢'),
                ],
              ),
            ),
          ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('大三時期'),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height:100,
              width: 300,
              child: ListView(
                children: [
                  Text('1. 專題製作'),
                  Text('2. 打工賺錢'),
                  Text('3. 修滿通識課'),
                ],
              ),
            ),
          ],
        ),
        Row(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('大四時期'),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height:100,
              width: 300,
              child: ListView(
                children: [
                  Text('1. 研究所準備'),
                  Text('2. 完成所有畢業門檻'),
                ],
              ),
            ),
          ],
        ),
        Row(),
      ],),
    );
  }
}
class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('就業或展業連結'),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height:100,
              width: 300,
              child: ListView(
                children: [
                  Text('1. 軟體工程師'),
                  Text('2. 網路工程師'),
                  Text('3. 資訊應用發展工程師'),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        //放一張照片
        Container(
          color: Colors.blueGrey,
          child:Image.asset('images/IMG_3681.jpg'),
          height: 200,
          width: 150,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height:100,
              width: 300,
              child: ListView(
                children: [
                  Text(''),
                  Text(''),
                  Text(''),
                  Text('或是選擇讀研究所，直升或是考試'),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        //放一張照片
        Container(
          color: Colors.lightBlueAccent,
          child:Image.asset('images/IMG_3682.jpg'),
          height: 150,
          width: 200,
        ),
      ],),
    );
  }
}
