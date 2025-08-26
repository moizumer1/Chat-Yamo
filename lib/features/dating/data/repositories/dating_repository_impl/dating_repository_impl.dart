
import '../../../domain/repositories/dating/dating_repository.dart';
import '../../datasources/dating_remote_data_source/dating_remote_data_resource.dart';

class DatingRepositoryImpl implements DatingRepository {
  final DatingRemoteDataSource remoteDataSource;

  DatingRepositoryImpl({required this.remoteDataSource});


}