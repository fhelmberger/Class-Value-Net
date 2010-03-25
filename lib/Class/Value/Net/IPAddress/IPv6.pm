use 5.008;
use strict;
use warnings;

package Class::Value::Net::IPAddress::IPv6;

# ABSTRACT: Network-related value objects
use parent 'Class::Value::Net::IPAddress';
use constant dns_rr_type => 'AAAA';
1;
