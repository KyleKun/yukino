import 'package:yukino_app/core/extractor/manga/mangadex_org.dart';
import '../tester.dart' as tester;

void main() => tester.getInfo(
      MangaDexOrg(),
      'https://api.mangadex.org/manga/afa0770f-4648-4c12-94c6-78cb96da3cb3',
    );
