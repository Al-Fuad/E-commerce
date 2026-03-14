import 'package:get/get.dart';
import 'package:test_project/core/network/api_client.dart';
import 'package:test_project/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:test_project/features/auth/data/datasources/auth_remote_datasource_impl.dart';
import 'package:test_project/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:test_project/features/auth/domain/usecases/signin_usecase.dart';
import 'package:test_project/features/auth/domain/usecases/signup_usecase.dart';
import 'package:test_project/features/auth/presentation/controllers/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApiClient>(() => ApiClient());

    Get.lazyPut<AuthRemoteDatasource>(
      () => AuthRemoteDatasourceImpl(dio: Get.find<ApiClient>().dio),
    );

    Get.lazyPut<AuthRepositoryImpl>(
      () => AuthRepositoryImpl(authRemoteDatasource: Get.find()),
    );

    Get.lazyPut<SigninUsecase>(
      () => SigninUsecase(Get.find<AuthRepositoryImpl>()),
    );

    Get.lazyPut<SignupUsecase>(
      () => SignupUsecase(Get.find<AuthRepositoryImpl>()),
    );

    Get.lazyPut<AuthController>(
      () => AuthController(
        signinUsecase: Get.find(),
        signupUsecase: Get.find(),
        forgotPasswordUsecase: Get.find(),
      ),
    );
  }
}
