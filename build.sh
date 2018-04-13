# build.sh
npm init
npx create-react-app client
echo "Appending proxy to create-react-app for local development servers..."
cd client
# add proxy to package.json
echo "Adding server dependencies..."
# npm install --save...
echo "Creating directories for server..."
mkdir config middleware models routes services
echo "Adding client dependencies..."
cd client
# npm install --save...
