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
# Add scripts to server
# "start": "node index.js",
# "server": "nodemon index.js",
# "client": "npm run start --prefix client",
# "dev": "concurrently \"npm run server\" \"npm run client\" \"npm run webhook\""
echo "Creating directories for server..."
sleep 1s
mkdir config middleware models routes services

echo "Adding client dependencies..."
sleep 1s
cd client
npm install --save axios react-redux react-router-dom redux
echo "Appending proxy to create-react-app for local development servers..."
sleep 1s
# "proxy": {
#    "/api/*": {
#      "target": "http://localhost:5000"
#    }
# }
echo "Populating files for first development run..."
sleep 1s
# Populate server/client files