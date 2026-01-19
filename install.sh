#!/bin/bash
#
# Ultra Editor Install Script
# Usage: curl -fsSL https://ultra.dev/install.sh | bash
#

set -e

REPO="zorz/ultra-releases"
INSTALL_DIR="${ULTRA_INSTALL_DIR:-/usr/local/bin}"
BINARY_NAME="ultra"

# Detect OS
OS="$(uname -s)"
case "$OS" in
  Darwin) OS="darwin" ;;
  Linux)  OS="linux" ;;
  *)
    echo "Error: Unsupported operating system: $OS"
    exit 1
    ;;
esac

# Detect architecture
ARCH="$(uname -m)"
case "$ARCH" in
  x86_64)  ARCH="x64" ;;
  amd64)   ARCH="x64" ;;
  arm64)   ARCH="arm64" ;;
  aarch64) ARCH="arm64" ;;
  *)
    echo "Error: Unsupported architecture: $ARCH"
    exit 1
    ;;
esac

ARTIFACT="ultra-${OS}-${ARCH}"
DOWNLOAD_URL="https://github.com/${REPO}/releases/latest/download/${ARTIFACT}.tar.gz"

echo "Ultra Editor Installer"
echo "======================"
echo ""
echo "Detected: ${OS} ${ARCH}"
echo "Installing to: ${INSTALL_DIR}"
echo ""

# Check for curl
if ! command -v curl &> /dev/null; then
  echo "Error: curl is required but not installed."
  exit 1
fi

# Create temp directory
TMP_DIR="$(mktemp -d)"
trap "rm -rf $TMP_DIR" EXIT

# Download
echo "→ Downloading ${ARTIFACT}..."
if ! curl -fsSL "$DOWNLOAD_URL" -o "${TMP_DIR}/${ARTIFACT}.tar.gz"; then
  echo "Error: Failed to download from ${DOWNLOAD_URL}"
  exit 1
fi

# Extract
echo "→ Extracting..."
tar -xzf "${TMP_DIR}/${ARTIFACT}.tar.gz" -C "$TMP_DIR"

# Install
echo "→ Installing to ${INSTALL_DIR}..."
if [ -w "$INSTALL_DIR" ]; then
  mv "${TMP_DIR}/${ARTIFACT}" "${INSTALL_DIR}/${BINARY_NAME}"
  chmod +x "${INSTALL_DIR}/${BINARY_NAME}"
else
  echo "→ Requesting sudo access to install to ${INSTALL_DIR}..."
  sudo mv "${TMP_DIR}/${ARTIFACT}" "${INSTALL_DIR}/${BINARY_NAME}"
  sudo chmod +x "${INSTALL_DIR}/${BINARY_NAME}"
fi

# Verify
if command -v ultra &> /dev/null; then
  echo ""
  echo "✓ Ultra installed successfully!"
  echo ""
  echo "Run 'ultra' to start the editor."
  echo ""
else
  echo ""
  echo "✓ Ultra installed to ${INSTALL_DIR}/${BINARY_NAME}"
  echo ""
  if [[ ":$PATH:" != *":${INSTALL_DIR}:"* ]]; then
    echo "Note: ${INSTALL_DIR} is not in your PATH."
    echo "Run: export PATH=\"${INSTALL_DIR}:\$PATH\""
    echo ""
  fi
fi
