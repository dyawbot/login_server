import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:login_server/common/eks_app_results.dart';
import 'package:login_server/data/dto/eks_server_details.dart';
import 'package:login_server/features/domain/interactors/params/eks_connect_to_server_params.dart';
import 'package:login_server/features/domain/interactors/usecase/eks_connect_to_server.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:login_server/features/domain/repository/eks_session_repository.dart';
import '../../fixtures/fixed_responses.dart';
// import 'package:login_server/t';

import 'connect_to_server_test.mocks.dart';

@GenerateMocks([SessionRepository])
void main() {
  late ConnectToServerUseCase connectToServerUseCase;
  late MockSessionRepository mockSessionRepository;

  setUp(() {
    mockSessionRepository = MockSessionRepository();
    connectToServerUseCase = ConnectToServerUseCase(mockSessionRepository);
  });

  final serverDetails = ServerDetailsDto.fromJson(FixedReader.validateLink());
  test('Test successfully', () async {
    var params =
        ConnectToServerParams(serverUrl: "http://escp.ekkremis.com:8069/api");
    when(mockSessionRepository.connectToServer(params))
        .thenAnswer((_) async => ApiResult.success(serverDetails.toEntity()));
    final res = await connectToServerUseCase(params);

    //assert
    identical(res, ApiResult.success((serverDetails.toEntity())));

    verify(mockSessionRepository.connectToServer(params));
    verifyNoMoreInteractions(mockSessionRepository);
  });
}
