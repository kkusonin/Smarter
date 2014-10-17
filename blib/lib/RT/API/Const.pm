package RT::API::Const;
use strict;
use warnings;
use Const::Fast;
use base qw(Exporter);

our @EXPORT = qw($ERROR_OK $ERROR_FAIL $ERROR_BUSY $ERROR_BAD_REQ $ERROR_BAD_PARAM
                $ERROR_ACC_NOT_FOUND $ERROR_LOGIN_NOT_FOUND $ERROR_PACKAGE_ALREADY_EXISTS 
                $ERROR_REQUEST_ALREADY_EXISTS $ERROR_PACKAGE_NOT_EXISTS 
                $ERROR_PACKAGE_EXISTS_EARLIER $ERROR_STB_NOT_SUPPORT_HDARLIER);


const our $ERROR_OK                       => 0;
const our $ERROR_FAIL                     => 1;
const our $ERROR_BUSY                     => 2;
const our $ERROR_BAD_REQ                  => 4;
const our $ERROR_BAD_PARAM                => 5;
const our $ERROR_ACC_NOT_FOUND            => 6;
const our $ERROR_LOGIN_NOT_FOUND          => 7;
const our $ERROR_ORDER_NOT_FOUND          => 8;
const our $ERROR_PACKAGE_ALREADY_EXISTS   => 9;
const our $ERROR_REQUEST_ALREADY_EXISTS   => 10;
const our $ERROR_PACKAGE_NOT_EXISTS       => 11;
const our $ERROR_PACKAGE_EXISTS_EARLIER   => 12;
const our $ERROR_STB_NOT_SUPPORT_HDARLIER => 13;

1;
