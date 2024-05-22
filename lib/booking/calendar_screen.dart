import 'package:domestico/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});
  static const String routeName = 'CalenderScreen';

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

var options = ['9:00AM', '10:00AM', '11:00AM'];

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          backgroundColor: MyTheme.primaryLight,
          leading: Builder(
            builder: (context){
              return IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                icon: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Icon(Icons.arrow_back_ios_rounded,color: MyTheme.whiteColor,),
                ),
              );
            },
          ),
          title: Padding(
            padding: const EdgeInsets.only(top:30.0),
            child: Text('Calender',style: MyTheme.lightTheme.textTheme.titleLarge,),
          ),
          centerTitle: true,
        ),
      ),
      body: content(),
    );
  }

  String currentOption = options[0];
  DateTime? _selectedDay;
  DateTime? _focusedDay;

  Widget content() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              top: 20,
            ),
            child: Text(
              'Choose a Date:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 5,
                  color: Colors.grey,
                ),
              ],
            ),
            child: TableCalendar(
              focusedDay: DateTime.now(),
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 10, 14),
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay; // update `_focusedDay` here as well
                });
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 25.0,
              top: 10,
            ),
            child: Text(
              'Pick a Time',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
            ),
            child: ListTile(
              title: Text('9:00AM',style: TextStyle(fontWeight: FontWeight.bold),),
              leading: Radio(
                value: options[0],
                groupValue: currentOption,
                onChanged: (value) {
                  setState(() {
                    currentOption = value.toString();
                  });
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
            ),
            child: ListTile(
              title: Text('10:00AM',style: TextStyle(fontWeight: FontWeight.bold)),
              leading: Radio(
                value: options[1],
                groupValue: currentOption,
                onChanged: (value) {
                  setState(() {
                    currentOption = value.toString();
                  });
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
            ),
            child: ListTile(
              title: Text('11:00AM',style: TextStyle(fontWeight: FontWeight.bold)),
              leading: Radio(
                value: options[2],
                groupValue: currentOption,
                onChanged: (value) {
                  setState(() {
                    currentOption = value.toString();
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: MaterialButton(
                padding: EdgeInsets.all(10),
                height: 40,
                minWidth: 170,
                color: MyTheme.primaryLight,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
