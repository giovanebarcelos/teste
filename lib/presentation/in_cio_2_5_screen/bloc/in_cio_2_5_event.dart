// ignore_for_file: must_be_immutable

part of 'in_cio_2_5_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InCio25 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InCio25Event extends Equatable {}

/// Event that is dispatched when the InCio25 widget is first created.
class InCio25InitialEvent extends InCio25Event {
  @override
  List<Object?> get props => [];
}
