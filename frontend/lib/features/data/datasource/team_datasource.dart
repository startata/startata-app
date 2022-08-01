import 'package:startata/features/data/model/team_model.dart';

abstract class ITeamDatasource {
  Future<TeamModel> getTeamById(String id);
}

class TeamDatasource implements ITeamDatasource {
  @override
  Future<TeamModel> getTeamById(String id) {
    // TODO: implement getTeamById
    throw UnimplementedError();
  }
}
