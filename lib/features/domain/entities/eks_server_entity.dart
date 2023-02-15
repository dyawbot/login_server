import 'package:floor/floor.dart';
import 'package:login_server/features/domain/entities/eks_app_entity.dart';

@Entity(tableName: ServerEntity.tableName)
class ServerEntity extends AppEntities {
  @ignore
  static const String tableName = "server_details";
  @primaryKey
  final int detailedId = 1;
  final String baseUrl;
  final int hris;

  ServerEntity({required this.baseUrl, required this.hris});

  @override
  List<Object?> get props => [baseUrl, hris];
}
