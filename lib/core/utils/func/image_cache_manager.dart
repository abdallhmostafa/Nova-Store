
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:nova_store/core/constants/app_constant.dart';

final cacheManager = CacheManager(
  Config(
    AppConstant.imageCacheKey, // Unique key for this cache
    stalePeriod: const Duration(days: 7), // Cache expiration time
    maxNrOfCacheObjects: 100, // Maximum number of cached images
  ),
);
