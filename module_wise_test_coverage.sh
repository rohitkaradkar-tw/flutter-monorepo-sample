#!/bin/bash

# Set the threshold
THRESHOLD=80
mkdir combined_coverage_report
chmod +x combined_coverage_report
ROOT_DIR=$(pwd)

melos run test_coverage

# Find all lcov.info files
find . -name coverage | while read -r coverage_directory; do
  # Move to directory
  dir=$(realpath "$coverage_directory")
  cd "$dir" || exit
  cd ../
  chmod +x .
  # shellcheck disable=SC2046
  lastField=$(basename $(dirname "$coverage_directory"))
  echo "$lastField"

  rm -rf coverage_report
  mkdir coverage_report
  chmod +x coverage_report
  output=$(genhtml "$dir/lcov.info" -o coverage_report)
  # Extract the overall coverage percentage from the console output
  coverage=$(echo "$output" | awk -F'[:%]' '/lines......:/ { print int($2) }')

  echo "Overall code coverage: $coverage%"

  # Check if coverage is less than the threshold
  if ((coverage < THRESHOLD)); then
    echo "Coverage does not meet the threshold."
    exit 1
  else
    echo "Coverage meets the threshold for this module."
  fi

  cp -r coverage_report "$ROOT_DIR/combined_coverage_report/${lastField}_coverage_report"
  rm -rf coverage_report
  cd "$ROOT_DIR" || exit
done

echo "module wise script execution completed"
exit 0
