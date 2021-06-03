import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:split_it/modules/login/login_controller.dart';
import 'package:split_it/modules/login/login_services.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/models/user_model.dart';

class LoginServiceMock extends Mock implements LoginService {}

void main() {
  //todo procurar esse late a explicação
  late LoginController controller;
  late LoginService service;
  setUp(() {
    service = LoginServiceMock();
    controller = LoginController(service: service, onUpdate: () {});
  });

  test("Testando o Google SignIn retornando sucesso", () async {
    expect(controller.state, isInstanceOf<LoginStateEmpty>());
    final states = <LoginState>[];

    controller.listen((state) => states.add(state));
    when(service.googleSignIn)
        .thenAnswer((_) async => UserModel(email: 'enzo@gmail.com', id: 'id'));
    await controller.googleSignIn();

    expect(states[0], isInstanceOf<LoginStateLoading>());
    expect(states[1], isInstanceOf<LoginStateSucess>());
    expect(states.length, 2);
  });

  test("Testando o Google SignIn retornando erro", () async {
    expect(controller.state, isInstanceOf<LoginStateEmpty>());
    final states = <LoginState>[];
    controller.listen((state) => states.add(state));
    when(service.googleSignIn).thenThrow("Deu erro");
    await controller.googleSignIn();
    expect(states[0], isInstanceOf<LoginStateLoading>());
    expect(states[1], isInstanceOf<LoginStateFailure>());
    expect((states[1] as LoginStateFailure).message, "Deu erro");
    expect(states.length, 2);
  });

  test("Testando o metodo listen", () async {
    controller.state = LoginStateLoading();
    controller
        .listen((state) => expect(state, isInstanceOf<LoginStateLoading>()));
    controller.update();
  });

  test("Testando o metodo update", () async {
    controller.state = LoginStateLoading();
    controller
        .listen((state) => expect(state, isInstanceOf<LoginStateLoading>()));
    controller.update();
  });
}
