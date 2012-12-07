basePath = '../';

files = [
  ANGULAR_SCENARIO,
  ANGULAR_SCENARIO_ADAPTER,
  'client/code/e2e/**/*.ls'
];

autoWatch = false;

browsers = ['Chrome'];

singleRun = true;

proxies = {
  '/': 'http://localhost:4000/'
};

preprocessors ={
  '**/*.ls': 'live'
};

junitReporter = {
  outputFile: 'test_out/e2e.xml',
  suite: 'e2e'
};
