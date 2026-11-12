
import 'package:flutter/material.dart';



class SegBtn extends StatefulWidget {

  const SegBtn({
    super.key,
  });


  @override
  State<SegBtn> createState() => _StateSegBtn();
}


class _StateSegBtn extends State<SegBtn>{


  @override
  Widget build(BuildContext context){

    return MaterialApp(
      home: Scaffold(

        body: Center(

       
          child: Column(
        mainAxisAlignment: .spaceEvenly,

        children: <Widget>[
          Spacer(),

          Text('single Choices'),
          SingleChoice(),

          SizedBox(
            height: 30,
          ),

          Text('Multiple Choice'),
          MultipleChoice(),

          Spacer(),
        ]
      )
    )
     )
    );
  }
}



//single choice buttons

enum Calendar {day, week, month, year}

class SingleChoice extends StatefulWidget{

  const SingleChoice({
    super.key,
  });

  @override
  State<SingleChoice> createState () => _StateSingleChoice();

}

class _StateSingleChoice extends State<SingleChoice> {

  Calendar calendarView = .week;

  @override
  Widget build(BuildContext context ){

    return SegmentedButton<Calendar>(

      segments: const <ButtonSegment<Calendar>>[

        ButtonSegment<Calendar>(
          value: Calendar.day,
          label: Text('Day'),
          icon: Icon(Icons.calendar_today)
        ),

        ButtonSegment<Calendar>(
          value: Calendar.week,
          label: Text('Week'),
          icon: Icon(Icons.calendar_view_week_outlined)
        ),

        ButtonSegment<Calendar>(
          value: Calendar.month,
          label: Text('Month'),
          icon: Icon(Icons.calendar_month_outlined)
        )
      ],

      selected:  <Calendar>{calendarView},
      onSelectionChanged: (Set<Calendar> newSelection){

        setState( (){
          calendarView = newSelection.first;
        });
      }
    );
  }
}

//multiple choixce buttons
enum Sizes {small, large, medium}

class MultipleChoice extends StatefulWidget{

  const MultipleChoice({
    super.key,
  });


  @override
  State<MultipleChoice> createState() => _StateMultipleChoice();
}

class _StateMultipleChoice extends State<MultipleChoice>{


  @override 
  Widget build(BuildContext context){
    Set<Sizes> selection = <Sizes>{Sizes.small, };


    return SegmentedButton<Sizes>(


      segments: const <ButtonSegment<Sizes>>[

        ButtonSegment<Sizes>(
          value: Sizes.large,
          label: Text('X'),
          icon: Icon(Icons.abc_outlined)
        ),

        ButtonSegment<Sizes>(
          value: Sizes.medium,
          label: Text('M'),
          icon: Icon(Icons.cancel_outlined)
        ),

        ButtonSegment<Sizes>(
          value: Sizes.small,
          label: Text('S'),
          icon: Icon(Icons.timeline)
        )
      ],
    
      selected: selection,
      onSelectionChanged: (Set<Sizes> newSelection){
      setState( (){

        selection = newSelection;
      });
      },
      multiSelectionEnabled: true,
    );
  }
}