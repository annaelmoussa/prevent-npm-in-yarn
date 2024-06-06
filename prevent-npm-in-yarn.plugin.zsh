prevent_npm_in_yarn() {
  if [ -f "yarn.lock" ]; then
    echo "⚠️  Warning: This project uses Yarn. Using 'npm' is not recommended."
    echo -n "Do you still want to proceed with 'npm' command? (y/N) "
    read -r REPLY
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
      echo "Operation canceled."
      return 1
    fi
  fi
}

npm() {
  prevent_npm_in_yarn || return $?
  command npm "$@"
}
