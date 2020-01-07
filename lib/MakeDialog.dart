import 'package:flutter/material.dart';

class MakeDialog extends StatefulWidget {
  MakeDialog({Key key, this.makeStrings, this.makeCallback}) : super(key: key);

  final List<String> makeStrings;
  final ValueChanged<String> makeCallback;


  @override
  _MakeDialogState createState() => _MakeDialogState();
}

class _MakeDialogState extends State<MakeDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: ListView.builder(
        itemCount: widget.makeStrings.length,
          itemBuilder: (context, index){
           var title = widget.makeStrings[index];
           return ListTile(
             onTap: (){
               widget.makeCallback(title);
               Navigator.pop(context);
             },
             title: Text(title),
           );
          }
      ),
    );
  }
}
