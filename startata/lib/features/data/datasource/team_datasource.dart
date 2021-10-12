import 'package:startata/features/data/model/team_model.dart';

abstract class ITeamDatasource {
  Future<TeamModel> getTeamById(String id);
}
