use 5.008;
use strict;
use warnings;

package Class::Value::Net;

# ABSTRACT: Network-related value objects
use Error::Hierarchy::Mixin;    # get UNIVERSAL::record needed in subclasses
use parent 'Class::Value::String';
1;
