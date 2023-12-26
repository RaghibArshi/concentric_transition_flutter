import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:lottie/lottie.dart';
import 'package:youtube_project/CardData.dart';
import 'package:youtube_project/LoginScreen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final data = [
    CardData(
        title: 'Carl Sagan',
        subtitle: 'I think we are at the dawn of a new era in space exploration.',
        image: LottieBuilder.asset('assets/animation1.json'),
        backgroundColor: Color(0xff313866),
        titleColor: Color(0xFFFE7BE5),
        subtitleColor: Color(0xFFFFF3DA)),
    CardData(
        title: 'Konstantin Tsiolkovsky',
        subtitle: 'The Earth is the cradle of humanity, but mankind cannot stay in the cradle forever.',
        image: LottieBuilder.asset('assets/animation2.json'),
        backgroundColor: Color(0xFF163020),
        titleColor: Color(0xFFFE7BE5),
        subtitleColor: Colors.yellow),
    CardData(
        title: 'Buzz Aldrin',
        subtitle: 'We can make a future in space. We can live on the Moon',
        image: LottieBuilder.asset('assets/animation3.json'),
        backgroundColor: Color(0xFFFF9800),
        titleColor: Colors.deepPurple,
        subtitleColor: Colors.black),
    CardData(
        title: 'Neil deGrasse Tyson',
        subtitle: 'Space exploration is a force of nature unto itself that no other force in society can rival',
        image: LottieBuilder.asset('assets/animation4.json'),
        backgroundColor: Color(0xFF22092C),
        titleColor: Color(0xFFFE7BE5),
        subtitleColor: Color(0xFFFFF3DA)),
    CardData(
        title: 'Buzz Aldrin',
        subtitle: 'The Moon is a stepping stone; Mars is the next home.',
        image: LottieBuilder.asset('assets/animation5.json'),
        backgroundColor: Color(0xFF3887BE),
        titleColor: Color(0xFFFE7BE5),
        subtitleColor: Colors.white
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        // radius: 200,
        itemCount: data.length,
        colors: data.map((e) => e.backgroundColor).toList(),
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (int index) {
          return CardUIView(
              data: data[index]
          );
        },
        onChange: (index){
          print(index);
        },
        onFinish: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return LoginScreen();
          }));
        },
      ),
    );
  }

}
