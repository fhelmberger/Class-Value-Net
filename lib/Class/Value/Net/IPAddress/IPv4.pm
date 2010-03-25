use 5.008;
use strict;
use warnings;

package Class::Value::Net::IPAddress::IPv4;

# ABSTRACT: Network-related value objects
use parent 'Class::Value::Net::IPAddress';
use constant dns_rr_type => 'A';
1;
