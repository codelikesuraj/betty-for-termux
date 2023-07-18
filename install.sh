#!/bin/bash

TERMUX_PATH="/data/data/com.termux/files"

BETTY_STYLE="betty-style"
BETTY_DOC="betty-doc"
BETTY_WRAPPER="betty"

APP_PATH="${TERMUX_PATH}/opt/betty"
BIN_PATH="${TERMUX_PATH}/usr/bin"
MAN_PATH="${TERMUX_PATH}/usr/share/man/man1"

echo -e "Removing any previous installations.."

# remove any files & dir from previous
# installations to avoid conflict
if [ -e ${APP_PATH} ]
then
	rm -r "${APP_PATH}"
fi

for file in "${BETTY_DOC}" "${BETTY_STYLE}" "${BETTY_WRAPPER}"
do
	file="${BIN_PATH}/${file}"
	if [ -L ${file} ]
	then
		unlink ${file}
	fi
done

for file in "betty.1" "${BETTY_DOC}.1" "${BETTY_STYLE}.1"
do
	file="${MAN_PATH}/${file}"
	if [ -e ${file} ]
	then
		rm ${file}
	fi
done

echo -e "Installing binaries.."

mkdir -p "${APP_PATH}"

cp "${BETTY_STYLE}.pl" "${APP_PATH}/${BETTY_STYLE}"
cp "${BETTY_DOC}.pl" "${APP_PATH}/${BETTY_DOC}"
cp "${BETTY_WRAPPER}.sh" "${APP_PATH}/${BETTY_WRAPPER}"

chmod +x "${APP_PATH}/${BETTY_STYLE}"
chmod +x "${APP_PATH}/${BETTY_DOC}"
chmod +x "${APP_PATH}/${BETTY_WRAPPER}"

ln -s "${APP_PATH}/${BETTY_STYLE}" "${BIN_PATH}/${BETTY_STYLE}"
ln -s "${APP_PATH}/${BETTY_DOC}" "${BIN_PATH}/${BETTY_DOC}"
ln -s "${APP_PATH}/${BETTY_WRAPPER}" "${BIN_PATH}/${BETTY_WRAPPER}"

echo -e "Installing man pages.."

mkdir -p "${MAN_PATH}"

cp "man/betty.1" "${MAN_PATH}"
cp "man/${BETTY_STYLE}.1" "${MAN_PATH}"
cp "man/${BETTY_DOC}.1" "${MAN_PATH}"

echo -e "All set."
