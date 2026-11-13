import 'package:flutter/material.dart';



void main(){
  runApp( const ThisBtns());
}


class ThisBtns extends StatelessWidget{

  const ThisBtns({
    super.key,
  });

  @override
  Widget build(BuildContext context){

    return MaterialApp(

      home: Scaffold(
        body: Column(

          children: <Widget>[


          ]
        )
      )
    );
  }
}


enum Calendar {day, week, month, year}


class SingleChoice extends StatefulWidget{

  

  const SingleChoice({
    super.key,
  });


  @override
  State<SingleChoice> createState() => _SingleChoiceState();
}

class _SingleChoiceState extends State<SingleChoice> {
  Calendar calendarView = .week;

  @override 
  Widget build(BuildContext context){

    return SegmentedButton<Calendar>(

      segments: const <ButtonSegment<Calendar>>[

        ButtonSegment(
          value: Calendar.day,
          label: Text('today'),
          icon: Icon(Icons.calendar_today_outlined)
        )

      ],

      selected: <Calendar>{calendarView}

    );
  }
}

// 

enum Sizes {small, medium, large, extraSmall, extraLarge}

class MultiChoice extends StatefulWidget{

  const MultiChoice({
    super.key,
  });

  @override
  State<MultiChoice> createState() => _MultiChoiceState();
}

class _MultiChoiceState extends State<MultiChoice>{

  @override
  Widget build(BuildContext context){

    Set<Sizes> selection = <Sizes>{Sizes.small, Sizes.large};
    return SegmentedButton<Sizes>(

      segments: const <ButtonSegment<Sizes>>[

        ButtonSegment(
          value: Sizes.small,
          label: Text('S')
        )
      ],

      selected: selection,
    );
  }
}