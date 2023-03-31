versions="2.19.5 3.0.0-290.3.beta 2.12.0"

for DART_VERSION in $versions; do
  curl 'https://pub.dev/api/packages/dio' \
    -H "Accept:application/vnd.pub.v2+json" \
    -H "user-agent: Dart pub $DART_VERSION" | jq > "$0_$DART_VERSION".json
done