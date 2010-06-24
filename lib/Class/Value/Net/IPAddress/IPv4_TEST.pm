use 5.008;
use strict;
use warnings;

package Class::Value::Net::IPAddress::IPv4_TEST;

use Data::Semantic::Net::IPAddress::TestData::IPv4 1.101750;
# ABSTRACT: Network-related value objects
use parent qw(
  Class::Value::Test
  Data::Semantic::Net::IPAddress::TestData::IPv4
);
1;
