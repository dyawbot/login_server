import 'package:equatable/equatable.dart';
abstract class UseCase<Response, Parameters extends Params>
{
  Response call(Parameters params);
}

abstract class Params extends Equatable{
    
}

class NoParams extends Params{
  @override
  List<Object?> get props =>[];
}