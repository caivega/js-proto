# npm install
# npm i -g protoc-gen-js
# npm i -g browserify
rm -rf ./src/js
mkdir ./src/js
protoc --js_out=import_style=commonjs,binary:./src/js -I ./src/protos data.proto
browserify exports.js > ./src/js/data.js
echo "generated data.js"
