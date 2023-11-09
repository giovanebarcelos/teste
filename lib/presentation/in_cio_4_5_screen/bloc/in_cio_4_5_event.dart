// ignore_for_file: must_be_immutable

part of 'in_cio_4_5_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InCio45 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InCio45Event extends Equatable {}

/// Event that is dispatched when the InCio45 widget is first created.
class InCio45InitialEvent extends InCio45Event {
  @override
  List<Object?> get props => [];
}
