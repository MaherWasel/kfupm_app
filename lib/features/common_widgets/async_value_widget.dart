import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AsyncValueWidget<T> extends StatelessWidget{
  final AsyncValue<T> value;
  final Widget Function(T) data;

  const AsyncValueWidget({required this.value,required this.data, super.key});
  @override
  Widget build(BuildContext context) {

    return value.when(
      data: data,
      loading: ()=>const CircularProgressIndicator(),
      error:(e,st)=> Text(e.toString())
    );
  }

}