// Mocks generated by Mockito 5.3.0 from annotations
// in login_server/test/domain/usecase/connect_to_server_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dio/dio.dart' as _i7;
import 'package:login_server/common/eks_app_results.dart' as _i2;
import 'package:login_server/features/domain/entities/eks_server_entity.dart'
    as _i5;
import 'package:login_server/features/domain/interactors/params/eks_connect_to_server_params.dart'
    as _i6;
import 'package:login_server/features/domain/repository/eks_session_repository.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeApiResult_0<T> extends _i1.SmartFake implements _i2.ApiResult<T> {
  _FakeApiResult_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [SessionRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockSessionRepository extends _i1.Mock implements _i3.SessionRepository {
  MockSessionRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.ApiResult<_i5.ServerEntity>> connectToServer(
          _i6.ConnectToServerParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #connectToServer,
          [params],
        ),
        returnValue: _i4.Future<_i2.ApiResult<_i5.ServerEntity>>.value(
            _FakeApiResult_0<_i5.ServerEntity>(
          this,
          Invocation.method(
            #connectToServer,
            [params],
          ),
        )),
      ) as _i4.Future<_i2.ApiResult<_i5.ServerEntity>>);
  @override
  _i2.ApiResult<T> parseError<T>(
    _i7.DioError? e, {
    T? data,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #parseError,
          [e],
          {#data: data},
        ),
        returnValue: _FakeApiResult_0<T>(
          this,
          Invocation.method(
            #parseError,
            [e],
            {#data: data},
          ),
        ),
      ) as _i2.ApiResult<T>);
}
