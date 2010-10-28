use 5.008;
use strict;
use warnings;

package Class::Value::Net::Exception::DNSSEC;

# ABSTRACT: Network-related value objects
use parent 'Class::Value::Net::Exception';
__PACKAGE__->mk_scalar_accessors(qw(recordfield));
use constant default_message => 'DNSSEC error in field [%s]';
use constant PROPERTIES      => (qw/recordfield/);
