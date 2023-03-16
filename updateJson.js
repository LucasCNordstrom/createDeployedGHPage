const fs = require('fs');
// import { argv } from 'process';

const pathToPackageJSON = process.argv[2];
const nameOfRepo = process.argv[3];

const jsonFileAsObject = JSON.parse(fs.readFileSync(pathToPackageJSON, {encoding:'utf8', flag:'r'}));

const scripts = jsonFileAsObject.scripts;

scripts.build = `tsc && vite build  --base /${nameOfRepo}`;
scripts.predeploy = 'npm run build';
scripts.deploy = 'gh-pages --dist dist';

fs.writeFileSync(pathToPackageJSON,JSON.stringify(jsonFileAsObject));