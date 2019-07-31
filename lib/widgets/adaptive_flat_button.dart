import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String _text;
  final Function _handler;

  AdaptiveFlatButton(this._text, this._handler);

  @override
  Widget build(BuildContext context) {
    final _textStyle = TextStyle(fontWeight: FontWeight.bold);
    final _child = Text(_text, style: _textStyle);

    return Platform.isIOS
        ? CupertinoButton(
            child: _child,
            onPressed: _handler,
          )
        : FlatButton(
            child: _child,
            textColor: Theme.of(context).primaryColor,
            onPressed: _handler,
          );
  }
}
