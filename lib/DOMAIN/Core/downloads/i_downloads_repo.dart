import 'package:untitled/DOMAIN/Core/downloads/models/downloads.dart';

import '../failures/main_failure.dart';

abstract class IDownloadsRepo {
Future<Either<MainFailure,List<Downloads>>> getDownloadsImages();
}
