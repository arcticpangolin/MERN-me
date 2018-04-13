# build.sh - Claudio Herrera
echo "Initializing new project..."
sleep 1s
npm init

echo "Bootstrapping create-react-app..."
sleep 1s
npx create-react-app client

echo "Adding server dependencies..."
sleep 1s
npm install --save body-parser cookie-session express mongoose path-parser
echo "Adding server dev dependencies..."
sleep 1s
npm install --save-dev concurrently nodemon
echo "Adding script helpers to server..."
sleep 1s

echo "Creating directories for server..."
sleep 1s
mkdir config middleware models routes services

echo "Adding client dependencies..."
sleep 1s
cd client
npm install --save axios react-redux react-router-dom redux

echo "That's it! Checkout the README for further setup."