import 'package:flutter/material.dart';
import 'package:app/config/MyLocalizations.dart';
import 'package:intl/intl.dart';

class BadFood extends StatelessWidget {

  String _title, _addedDate, _limitDate;
  BadFood(this._title, this._addedDate, this._limitDate);
  var _color = const Color(0xFFff7373);

  Widget build(BuildContext context) {

    var _dateFormat = new DateFormat('dd/MM/yyyy').parse(_limitDate);
    _limitDate = new DateFormat('${MyLocalizations.of(context).trans("date_format")}').format(_dateFormat);

    return new Container(margin: EdgeInsets.only(right: 15, left: 20), width: double.infinity, child:
      new Row(children: <Widget>[
        new SizedBox(height: 100, width: 30, child: new Stack(children: <Widget>[
          new Container(margin: EdgeInsets.only(left: 4),height: 100, width: 2, color: _color),
          new Container(margin: EdgeInsets.only(top: 40),decoration: BoxDecoration(shape: BoxShape.circle, color: _color), width: 10, height: 10)
        ])),
        new Expanded(child:
          new Padding(padding: EdgeInsets.only(left: 10, right: 10), child:
            new Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
              new Padding(padding: EdgeInsets.only(bottom: 5), child: new Text("$_title".toUpperCase(), style: TextStyle(fontSize: 20, color: Theme.of(context).primaryColorDark), textAlign: TextAlign.left)),
              new Text("${MyLocalizations.of(context).trans("expiration_date").toUpperCase()}: $_limitDate", style: TextStyle(fontSize: 10, color: Theme.of(context).primaryColorDark), textAlign: TextAlign.left),
            ])
          )
        )
      ])
    );
  }

}