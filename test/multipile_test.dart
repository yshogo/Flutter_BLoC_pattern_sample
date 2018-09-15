import 'package:bloc_sample_app/minimum/IncrementBloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  IncrementBloc bloc;
  setUp(() async {
    bloc = IncrementBloc();
  });

  test("３の倍数なテスト", () {
    expect(bloc.isMultiplesThree(33), "Flutter");
  });

  test("３の倍数でないテスト", () {
    expect(bloc.isMultiplesThree(500), "500");
  });
}