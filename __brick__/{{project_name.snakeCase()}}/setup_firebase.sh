# make this script also with mustache syntax

flutterfire configure \
  --project={{project_name.snakeCase()}} \
  --out=lib/firebase_options_production.dart \
  --ios-bundle-id={{org_name}}.{{project_name.snakeCase()}} \
  --android-package-name={{application_id}}

