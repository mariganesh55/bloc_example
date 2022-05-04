part of 'second_bloc.dart';

@immutable
abstract class SecondEvent extends BaseEquatable {}

class SecondScreenInitialEvent extends SecondEvent {}

class SecondScreenTapEvent extends SecondEvent {}
