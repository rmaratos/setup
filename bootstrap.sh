
WORKSPACE_DIR="$HOME/workspace"

echo "Installing XCode command line tools"
xcode-select --install

echo "Making workspace: $WORKSPACE_DIR"
mkdir -p $WORKSPACE_DIR

echo "Cloning setup repo"
git clone https://github.com/rmaratos/setup.git $WORKSPACE_DIR/setup

echo "Running setup script"
$WORKSPACE_DIR/setup/setup
