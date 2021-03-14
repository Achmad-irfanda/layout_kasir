import 'package:flutter/material.dart';

class NumberTicker extends StatefulWidget {
  NumberTicker(
      {this.onNumberChange,
      this.startValue = 1,
      this.minRange = 1,
      this.maxRange});

  /// Trigger when number incremented or decremented
  final Function(int) onNumberChange;

  final int startValue;

  /// Minimal Range of decremented value, min = 1
  final int minRange;

  /// Maximal Range of incremented value
  final int maxRange;

  @override
  _NumberTickerState createState() => _NumberTickerState();
}

class _NumberTickerState extends State<NumberTicker> {
  int _ticker = 1;

  @override
  void initState() {
    if (widget.startValue != null)
      setState(() {
        _ticker = widget.startValue;
      });
    super.initState();
  }

  void _onIncremented() {
    if (widget.maxRange == null) {
      int newTicker = _ticker + 1;
      if (widget.onNumberChange != null) widget.onNumberChange(newTicker);
      setState(() {
        _ticker = newTicker;
      });
    } else {
      if (_ticker <= widget.maxRange) {
        int newTicker = _ticker + 1;
        if (widget.onNumberChange != null) widget.onNumberChange(newTicker);
        setState(() {
          _ticker = newTicker;
        });
      }
    }
  }

  void _onDecremented() {
    if (_ticker > widget.minRange) {
      int newTicker = _ticker - 1;
      if (widget.onNumberChange != null) widget.onNumberChange(newTicker);
      setState(() {
        _ticker = newTicker;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SmallButtonOnyIcon(
              onTap: _onDecremented,
              icon: Icon(Icons.remove, color: Colors.white)),
          SizedBox(width: 4.0),
          Container(
              width: 24.0,
              child: Text(
                _ticker.toString(),
                textAlign: TextAlign.center,
              )),
          SizedBox(width: 4.0),
          SmallButtonOnyIcon(
              onTap: _onIncremented,
              icon: Icon(Icons.add, color: Colors.white)),
        ],
      ),
    );
  }
}

class SmallButtonOnyIcon extends StatelessWidget {
  SmallButtonOnyIcon({@required this.icon, this.onTap});

  final Widget icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
            color: Colors.purple[900], borderRadius: BorderRadius.circular(4)),
        child: icon,
      ),
    );
  }
}
