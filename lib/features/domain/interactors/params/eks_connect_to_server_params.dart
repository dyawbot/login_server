import 'package:login_server/common/usescases.dart';
class ConnectToServerParams extends Params{
  final String? serverUrl;
  ConnectToServerParams({this.serverUrl});


  @override
  List<Object?> get props => [serverUrl];
}