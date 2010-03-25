use 5.008;
use strict;
use warnings;

package Class::Value::Net::Exception::MalformedHostname;

# ABSTRACT: Network-related value objects
use parent 'Class::Value::Net::Exception';
__PACKAGE__->mk_scalar_accessors(qw(hostname));
use constant default_message => 'Malformed hostname [%s]';
use constant PROPERTIES      => ('hostname');
1;
