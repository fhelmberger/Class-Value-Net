use 5.008;
use strict;
use warnings;

package Class::Value::Net::Exception::InvalidIPAddress;

# ABSTRACT: Network-related value objects
use parent 'Class::Value::Net::Exception';
__PACKAGE__->mk_scalar_accessors(qw(ipaddr));
use constant default_message => 'Invalid IP address [%s]';
use constant PROPERTIES      => (qw/ipaddr/);
1;
