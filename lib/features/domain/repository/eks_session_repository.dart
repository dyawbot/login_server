import 'package:login_server/common/eks_app_results.dart';
import 'package:login_server/features/domain/entities/eks_server_entity.dart';
import 'package:login_server/features/domain/interactors/params/eks_connect_to_server_params.dart';
import 'package:login_server/features/domain/repository/eks_app_repo.dart';

abstract class SessionRepository extends AppRepository {
  Future<ApiResult<ServerEntity>> connectToServer(ConnectToServerParams params);
}
