requires 'Mo',              '0.39';
requires 'Module::Runtime', '0.014';
requires 'JSON::PP',        '2.27202';

on 'test' => sub {
   requires 'Test::More',      '0';
   requires 'Test::Exception', '0.32';
   requires 'Path::Tiny',      '0.076';
};

on 'develop' => sub {
   requires 'Test::Pod::Coverage', '1.04';
   requires 'Test::Pod',           '1.41';
};
