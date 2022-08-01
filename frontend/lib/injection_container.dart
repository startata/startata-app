import 'package:get_it/get_it.dart';
import 'package:startata/features/data/datasource/person_datasource.dart';
import 'package:startata/features/data/datasource/team_datasource.dart';
import 'package:startata/features/data/repository/person_repository_implementation.dart';
import 'package:startata/features/data/repository/team_repository_implementation.dart';
import 'package:startata/features/domain/repositories/person_repository.dart';
import 'package:startata/features/domain/repositories/team_repository.dart';
import 'package:startata/features/domain/usecases/get_persons_usecase.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features - Number Trivia
  // Bloc
  // sl.registerFactory(
  //   () => NumberTriviaBloc(
  //     concrete: sl(),
  //     inputConverter: sl(),
  //     random: sl(),
  //   ),
  // );

  // Use cases
  sl.registerLazySingleton(() => GetPersonsUsecase(sl()));

  // Repository
  sl.registerLazySingleton<IPersonRepository>(
    () => PersonRepositoryImplementation(sl(), sl()),
  );
  sl.registerLazySingleton<ITeamRepository>(
    () => TeamRepositoryImplementation(sl()),
  );

  // Data sources
  sl.registerLazySingleton<IPersonDatasource>(
    () => PersonDatasource(),
  );
  sl.registerLazySingleton<ITeamDatasource>(
    () => TeamDatasource(),
  );

  // //! Core
  // sl.registerLazySingleton(() => InputConverter());
  // sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  // //! External
  // final sharedPreferences = await SharedPreferences.getInstance();
  // sl.registerLazySingleton(() => sharedPreferences);
  // sl.registerLazySingleton(() => http.Client());
  // sl.registerLazySingleton(() => DataConnectionChecker());
}
