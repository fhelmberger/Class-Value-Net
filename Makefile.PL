use inc::Module::Install;
include 'Module::AutoInstall';

name 'Class-Value-Net';
all_from 'lib/Class/Value/Net.pm';
perl_version '5.006';

requires 'Class::Value';
requires 'Class::Value::SemanticAdapter';
requires 'Data::Semantic::Net';
requires 'Error::Hierarchy';

test_requires 'Test::CompanionClasses' => '0.03';
test_requires 'Test::More' => '0.70';
extra_tests;

auto_install;
auto_include;
WriteAll;
