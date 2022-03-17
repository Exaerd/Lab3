import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Общежития КубГАУ'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  static int count = 26;
  static const IconData likeOff = CupertinoIcons.heart;
  static const IconData likeOn = CupertinoIcons.heart_fill;


  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title, style: const TextStyle(color: Colors.white)),
          backgroundColor: Colors.green,
        ),

        body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset('assets/images/photo.jpg'),

                  Container(padding: const EdgeInsets.fromLTRB(0,20,20,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const SizedBox(
                          width: 252,
                          child: ListTile(
                            title: Text('Общежитие №20', style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.w800),
                            ),
                            subtitle: Text('г. Краснодар, ул. Калинина, 13/20'),
                          ),
                        ),

                        Row(
                          children: [
                            IconButton (
                              icon: Icon(count == 26? likeOff: likeOn),
                              color: count == 26? null: Colors.red,
                              onPressed: ()
                              {
                                setState(() {
                                  if (count == 26)
                                  {
                                    count++;
                                  }
                                  else
                                  {
                                    count--;
                                  }
                                });
                              },
                            ),
                            Text('$count'),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Container(padding: const EdgeInsets.fromLTRB(0,35,0,40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Icon(Icons.phone,color: Colors.green , size: 29),
                            Text('Позвонить', style: TextStyle(color: Colors.green, fontSize: 16))],
                        ),

                        Column(
                          children: const [
                            Icon(Icons.near_me, color:Colors.green, size: 29),
                            Text('Маршрут', style: TextStyle(color: Colors.green, fontSize: 16))],
                        ),

                        Column(
                          children: const [
                            Icon(Icons.share,color: Colors.green, size: 29),
                            Text('Поделиться', style: TextStyle(color: Colors.green, fontSize: 16))],
                        ),
                      ],
                    ),
                  ),

                  Container(padding: const EdgeInsets.fromLTRB(40,0,40,0),
                      child: const Text(
                          'Студенческий городок или так называемый кампус Кубанского ГАУ состоит из двадцати '
                              'общежитий, в которых проживает более 8000 студентов, что составляет 96% от всех'
                              'нуждающихся. Студенты первого курса обеспечены местами в общежитии полностью. В'
                              'соответствии с Положением о студенческих общежитиях университета, при поселении'
                              'между администрацией и студентами заключается договор найма жилого помещения.'
                              'Воспитательная работа в общежитиях направлена на улучшение быта, соблюдение правил'
                              'внутреннего распорядка, отсутствия асоциальных явлений в молодежной среде. Условия'
                              'проживания в общежитиях университетского кампуса полностью отвечают санитарным'
                              'нормам и требованиям: наличие оборудованных кухонь, душевых комнат, прачечных,'
                              'читальных залов, комнат самоподготовки, помещений для заседаний студенческих'
                              'советов и наглядной агитации. С целью улучшения условий быта студентов активно'
                              'работает система студенческого самоуправления - студенческие советы организуют всю'
                              'работу по самообслуживанию.',
                          style: TextStyle(fontSize: 18)
                      )
                  )
                ],
              ),
            )
        )
    );
  }
}