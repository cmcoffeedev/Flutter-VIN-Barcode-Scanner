import 'package:flutter/material.dart';

class ModelDialog extends StatefulWidget {
  ModelDialog({Key key, this.modelStrings, this.modelCallback})
      : super(key: key);

  final List<String> modelStrings;
  final ValueChanged<String> modelCallback;

  @override
  _ModelDialogState createState() => _ModelDialogState();
}

class _ModelDialogState extends State<ModelDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: ListView.builder(
          itemCount: widget.modelStrings.length,
          itemBuilder: (BuildContext context, int index) {
            var modelString = widget.modelStrings[index];
            return ListTile(
              onTap: (){
                widget.modelCallback(modelString);
                Navigator.pop(context);
              },
              title: Text(modelString),
            );
          }),
    );
  }
}
