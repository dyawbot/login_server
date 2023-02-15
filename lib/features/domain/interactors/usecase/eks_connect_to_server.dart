import 'package:injectable/injectable.dart';
import 'package:login_server/common/usescases.dart';
import 'package:login_server/common/eks_app_results.dart';
import 'package:login_server/features/domain/entities/eks_server_entity.dart';
import 'package:login_server/features/domain/interactors/params/eks_connect_to_server_params.dart';
import 'package:login_server/features/domain/repository/eks_session_repository.dart';

@injectable
class ConnectToServerUseCase
    extends UseCase<Future<ApiResult<ServerEntity>>, ConnectToServerParams> {
  final SessionRepository _repository;
  ConnectToServerUseCase(this._repository);

  @override
  call(ConnectToServerParams params) => _repository.connectToServer(params);
}
