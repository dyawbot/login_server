import 'package:login_server/features/domain/entities/eks_app_entity.dart';

abstract class AppDto<T extends AppEntities> {
  T toEntity();
}
