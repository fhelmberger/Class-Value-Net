use inc::Module::Install;
name 'Class-Value-Net';
all_from 'lib/Class/Value/Net.pm';
perl_version '5.006';

requires 'Class::Value';
requires 'Error::Hierarchy';
requires 'Net::IP';

build_requires 'Test::CompanionClasses';
build_requires 'Test::More' => '0.70';

use_standard_tests(without => 'pod_coverage');
auto_include;
WriteAll;
