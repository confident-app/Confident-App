import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:confidentapp/screens/ventanas.dart';

class TipsShop extends StatefulWidget {
  TipsShop({Key? key}) : super(key: key);

  @override
  State<TipsShop> createState() => _TipsShopState();
}

const _backgroundColor = Color.fromARGB(255, 123, 71, 213);
const _cartBarHeight = 150.0;

class _TipsShopState extends State<TipsShop> {
  final bloc = Ventanas();

  void _onVerticalGesture(DragUpdateDetails details) {
    if (details.primaryDelta! < -7) {
      bloc.changeTocart();
    } else if (details.primaryDelta! > 12) {
      bloc.changeToNormal();
    }
  }

  _getTopForWhitePanel(VentanasState state, size) {
    if (state == VentanasState.normal) {
      return _cartBarHeight;
    } else if (state == VentanasState.cart) {
      return -(size.height - kToolbarHeight - _cartBarHeight / 2);
    }
  }

  _getTopForBlackPanel(VentanasState state, size) {
    if (state == VentanasState.normal) {
      return size.height - kToolbarHeight - _cartBarHeight;
    } else if (state == VentanasState.cart) {
      return _cartBarHeight / 2;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AnimatedBuilder(
        animation: bloc,
        builder: (context, _) {
          return Scaffold(
            body: Column(
              children: [
                _AppBar(),
                Expanded(
                    child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      top: _getTopForWhitePanel(bloc.ventanasState, size),
                      height: size.height + kToolbarHeight,
                      child: Container(
                          decoration: BoxDecoration(
                        color: Color.fromARGB(255, 154, 76, 76),
                        // borderRadius: BorderRadius.only(
                        //     bottomLeft: Radius.circular(
                        //       40,
                        //     ),
                        //     bottomRight: Radius.circular(40))),
                      )),
                      // Positioned(
                      //     left: 0,
                      //     right: 0,
                      //     top: _getTopForBlackPanel(bloc.ventanasState, size),
                      //     height: size.height,
                      //     child: GestureDetector(
                      //         onVerticalDragUpdate: _onVerticalGesture,
                      //         child: Container(
                      //           color: Color.fromARGB(255, 0, 0, 0),
                      //         )))
                    )
                  ],
                )),
              ],
            ),
          );
        });
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      color: _backgroundColor,
      child: Row(
        children: [
          BackButton(
            color: Colors.black,
          ),
          Expanded(
            child: Text(
              'Tipssssss',
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
