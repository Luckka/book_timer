import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonWithLoader<B extends StateStreamable<S>, S>
    extends StatelessWidget {
  final BlocWidgetSelector<S, bool> selector;
  final B bloc;
  final VoidCallback onPressed;
  final String label;

  const ButtonWithLoader(
      {Key? key,
      required this.onPressed,
      required this.label,
      required this.selector,
      required this.bloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: BlocSelector<B, S, bool>(
          bloc: bloc,
          selector: selector,
          builder: (context, showLoading) {

            if(!showLoading) {
              return Text(
                label,
                style: TextStyle(color: Colors.black),
              );
            }

            return Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  child: Text(label)
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child:  CircularProgressIndicator.adaptive(backgroundColor: Colors.white)
                )
              ],
            );
            
          },
        ));
  }
}
