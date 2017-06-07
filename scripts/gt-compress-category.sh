#!/bin/bash
# Compress a directory for a given category-name that indicates a subdirectory in ~/gt/events directory.
# USAGE: gt-compress-category.sh <category-name>
# It should be copied to $HOME/bin directory.

# Read the <category-name> parameter.
CATEGORY_NAME="$1"
if [ -z "$CATEGORY_NAME" ] ; then
    exit 1;
fi

# Where category directories start
ROOT_GT_EVENTS="gt/events"
# Category directory that should be compressed
CATEGORY_DIR="${ROOT_GT_EVENTS}/${CATEGORY_NAME}"
# Temporary ZIP filename that is used for the compression
TMP_ZIP_FILE="$HOME/gc_www_root/gt-events-${CATEGORY_NAME}-tmp.zip"
# ZIP filename to which CATEGORY_DIR is compressed
ZIP_FILE="$HOME/gc_www_root/gt-events-${CATEGORY_NAME}.zip"

# remove duplicated files
# Fdupes -q -r -d -N ~/gt

# remove old temporary file, if it exists
rm -f "$TMP_ZIP_FILE"
# compress to the temporary file, then move to the ZIP_FILE on success
cd "$HOME" \
    && zip -uqr "$TMP_ZIP_FILE" "$CATEGORY_DIR" \
    && mv "$TMP_ZIP_FILE" "$ZIP_FILE"
