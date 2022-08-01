import 'package:startata/features/domain/domain.dart';

abstract class ITeamRepository {
  Future<TeamEntity> getTeamFromId(String id);
}
