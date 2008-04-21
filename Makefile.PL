use inc::Module::Install;
include 'Module::AutoInstall';

name 'Class-Value-Net';
all_from 'lib/Class/Value/Net.pm';
perl_version '5.006';

requires 'Class::Value';
requires 'Class::Value::SemanticAdapter';
requires 'Data::Semantic::Net';
requires 'Error::Hierarchy';

build_requires 'Test::CompanionClasses' => '0.03';
build_requires 'Test::More' => '0.70';

process_templates(
    first_year    => 2004,
    rest_from     => "$ENV{HOME}/.mitlib/standard_pod",
    start_tag     => '{%',
    end_tag       => '%}',
    other_authors => [
        'Heinz Ekker C<< <ek@univie.ac.at> >>',
    ],
);

use_standard_tests(without => 'pod_coverage');
auto_install;
auto_include;
WriteAll;
