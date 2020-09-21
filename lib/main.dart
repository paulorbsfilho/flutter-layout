import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('Jogo da velha'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: LikePage(),
      ),
    );
  }
}

class LikePage extends StatefulWidget{
  @override
  LikePageState createState() => LikePageState();
}

class LikePageState extends State<LikePage>{
  List<String> move;
  String lastMove;
  int count;

  @override
  void initState() {
    super.initState();
    move = ['n','n','n','n','n','n','n','n','n'];
    lastMove = 'n';
    count = 0;
  }

  void play1(){
    if(isEndGame()){
        count++;
    }else{
      setImage(0);
    }
  }

  void play2(){
    if(isEndGame()){
        count++;
    }else{
      setImage(1);
    }
  }

  void play3(){
    if(isEndGame()){
        count++;
    }else{
      setImage(2);
    }
  }

  void play4(){
    if(isEndGame()){
        count++;
    }else{
      setImage(3);
    }
  }

  void play5(){
    if(isEndGame()){
        count++;
    }else{
      setImage(4);
    }
  }

  void play6(){
    if(isEndGame()){
        count++;
    }else{
      setImage(5);
    }
  }

  void play7(){
    if(isEndGame()){
        count++;
    }else{
      setImage(6);
    }
  }

  void play8(){
    if(isEndGame()){
        count++;
    }else{
      setImage(7);
    }
  }

  void play9(){
    if(isEndGame()){
        count++;
    }else{
      setImage(8);
    }
  }

  bool isEndGame(){
    // bool end;
    // if (count == 9){
    //   end = true;
    // }else{
    //   end = false;
    // }
    // Ainda sem logica de fim de jogo. Forcando a continuacao
    return false;
  }

  void endGame(){
    if(isEndGame()){
      reset();
    }
  }

  void reset(){
    setState(() {
      move = ['n','n','n','n','n','n','n','n','n'];
    });
    resetImage(0);
    resetImage(1);
    resetImage(2);
    resetImage(3);
    resetImage(4);
    resetImage(5);
    resetImage(6);
    resetImage(7);
    resetImage(8);
    setState(() {
      count = 0;
    });
  }

  setImage(int num){
    setState(() {
      if (lastMove == 'n'){
        move[num] = 'x';
        lastMove = 'x';
      }else if(lastMove == 'x'){
        move[num] = 'o';
        lastMove = 'o';
      }else if (lastMove == 'o'){
        move[num] = 'x';
        lastMove = 'x';
      }
    });
  }

  resetImage(int num){
    setState(() {
      move[num] = 'n';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(30.0),
      child: Column(
        children: [
          Row(
            children: [
              OutlineButton(onPressed: play1, child: Image.asset(
                'assets/images/${move[0]}.png',
                height: 50,
              ),),
              OutlineButton(onPressed: play2, child: Image.asset(
                'assets/images/${move[1]}.png',
                height: 50,
              ),),
              OutlineButton(onPressed: play3, child: Image.asset(
                'assets/images/${move[2]}.png',
                height: 50,
              ),)
            ],
          ),
          Row(
            children: [
              OutlineButton(onPressed: play4, child: Image.asset(
                'assets/images/${move[3]}.png',
                height: 50,
              ),),
              OutlineButton(onPressed: play5, child: Image.asset(
                'assets/images/${move[4]}.png',
                height: 50,
              ),),
              OutlineButton(onPressed: play6, child: Image.asset(
                'assets/images/${move[5]}.png',
                height: 50,
              ),)
            ],
          ),
          Row(
            children: [
              OutlineButton(onPressed: play7, child: Image.asset(
                'assets/images/${move[6]}.png',
                height: 50,
              ),),
              OutlineButton(onPressed: play8, child: Image.asset(
                'assets/images/${move[7]}.png',
                height: 50,
              ),),
              OutlineButton(onPressed: play9, child: Image.asset(
                'assets/images/${move[8]}.png',
                height: 50,
              ),)
            ],
          ),
          IconButton(
            icon: Icon(Icons.refresh),
            tooltip: 'Reset game',
            onPressed: reset,
          ),
        ],
      ) ,
      );
  }
}