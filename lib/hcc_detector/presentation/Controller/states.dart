// Define the states
import 'package:equatable/equatable.dart';

class ResultState extends Equatable {
  @override
  List<Object> get props => [];
}

class ResultInitial extends ResultState {}

class ResultLoading extends ResultState {}

class ResultLoaded extends ResultState {
  final String result;

  ResultLoaded(this.result);

  @override
  List<Object> get props => [result];
}

class ResultError extends ResultState {
  final String message;

  ResultError(this.message);

  @override
  List<Object> get props => [message];
}
