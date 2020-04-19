import 'package:flutter/material.dart';
import 'package:vfinally/Components/seperator.dart';
import 'package:vfinally/Components/text-style.dart';

class Team extends StatefulWidget {
  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool horizontal = true;

    final planetCardContent = Container(
      margin: EdgeInsets.fromLTRB(
          horizontal ? 30.0 : 16.0, horizontal ? 16.0 : 42.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment:
            horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
          Container(height: 4.0),
          Text('Bhaarath', style: Style.titleTextStyle),
          Separator(),
          Text('Actor / CEO', style: Style.commonTextStyle),
        ],
      ),
    );

    final planetCard =  Container(
      child: planetCardContent,
      height: horizontal ? 124.0 : 154.0,
      margin: horizontal
          ?  EdgeInsets.only(left: 8.0)
          :  EdgeInsets.only(top: 72.0),
      decoration:  BoxDecoration(
        color:  Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius:  BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
           BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset:  Offset(0.0, 10.0),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('VFinally'),
      ),
      body: GestureDetector(
        child:  Container(
          margin: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 24.0,
          ),
          child:  Stack(
            children: <Widget>[
              planetCard
            ],
          ),
        ),
      ),
    );
  }
}
