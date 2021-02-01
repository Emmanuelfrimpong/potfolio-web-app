import 'package:flutter/material.dart';

class NavBarItem extends StatefulWidget {
  final IconData icon;
  final Function touched;
  final bool active;
  final String tex;
  NavBarItem({this.icon, this.touched, this.active, this.tex});
  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          widget.touched();
        },
        splashColor: Colors.white,
        hoverColor: Colors.white12,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 3.0),
          child: Row(
            children: [
              Container(
                height: 60.0,
                child: Row(
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 475),
                      height: 35.0,
                      width: 5.0,
                      decoration: BoxDecoration(
                        color:
                            widget.active ? Colors.white : Colors.transparent,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Icon(
                        widget.icon,
                        color: widget.active ? Colors.white : Colors.white54,
                        size: 25.0,
                      ),
                    ),
                    widget.active
                        ? Padding(
                            padding: EdgeInsets.only(left: 30.0),
                            child: Text(
                              widget.tex,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ))
                        : Padding(
                            padding: EdgeInsets.only(left: 30.0),
                            child: Text(
                              widget.tex,
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
