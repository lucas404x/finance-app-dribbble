import '../interfaces/repository_interface.dart';
import '../models/activity_model.dart';

class ActivityRepository implements IRepository<ActivityModel> {
  @override
  List<ActivityModel> getAll() {
    // TODO: Create JSON and load all objects
    return [
      ActivityModel('Max A.', '7655', 'Aug 23', '+\$3 500'),
      ActivityModel('Max A.', '7655', 'Aug 23', '+\$3 500'),
      ActivityModel('Max A.', '7655', 'Aug 23', '+\$3 500')
    ];
  }
}
