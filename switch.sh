#!/bin/bash

# The placeholders and their replacements
DEVELOPMENT_APP="unique_string"
DEVELOPMENT_DESCRIPTION="unique_string"

APP_MUSTACHE="{{project_name.snakeCase()}}"
DESCRIPTION_MUSTACHE="{{{description}}}"

# Choose action based on input argument
case "$1" in
    "development")
        APP_CURRENT=$APP_MUSTACHE
        DESCRIPTION_CURRENT=$DESCRIPTION_MUSTACHE
        APP_REPLACEMENT=$DEVELOPMENT_APP
        DESCRIPTION_REPLACEMENT=$DEVELOPMENT_DESCRIPTION
        ;;
    "production")
        APP_CURRENT=$DEVELOPMENT_APP
        DESCRIPTION_CURRENT=$DEVELOPMENT_DESCRIPTION
        APP_REPLACEMENT=$APP_MUSTACHE
        DESCRIPTION_REPLACEMENT=$DESCRIPTION_MUSTACHE
        ;;
    *)
        echo "Invalid argument. Use 'development' or 'production'."
        exit 1
        ;;
esac

# Navigate to the project directory (update this if needed)
cd "__brick__/{{project_name.snakeCase()}}"

# Recursively search and replace within the files (including pubspec.yaml)
find . -type f \( -name '*.dart' -o -name 'pubspec.yaml' \) -exec sed -i '' "s/${APP_CURRENT}/${APP_REPLACEMENT}/g; s/${DESCRIPTION_CURRENT}/${DESCRIPTION_REPLACEMENT}/g" {} \;
