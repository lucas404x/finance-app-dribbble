import '../models/profile_model.dart';

abstract class IProfileRepository {
  List<ProfileModel> getAllProfiles();
}
