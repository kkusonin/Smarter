use utf8;
package RtDB::Schema::Result::Order;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

RtDB::Schema::Result::Order

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<orders>

=cut

__PACKAGE__->table("orders");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 order_id

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 login

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 account

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 dept_id

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 usl

  data_type: 'varchar'
  default_value: 'ViasatPremiumHD'
  is_nullable: 0
  size: 32

=head2 contract

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 status

  data_type: 'enum'
  default_value: 'NEW'
  extra: {list => ["NEW","PROCESSING","PROCESSED","DENIED"]}
  is_nullable: 0

=head2 req_cnt

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 entry_time

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 1

=head2 update_time

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "bigint",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "order_id",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "login",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "account",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "dept_id",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "usl",
  {
    data_type => "varchar",
    default_value => "ViasatPremiumHD",
    is_nullable => 0,
    size => 32,
  },
  "contract",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "status",
  {
    data_type => "enum",
    default_value => "NEW",
    extra => { list => ["NEW", "PROCESSING", "PROCESSED", "DENIED"] },
    is_nullable => 0,
  },
  "req_cnt",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "entry_time",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 1,
  },
  "update_time",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2014-10-16 11:51:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:DPuFXZWiPPAl8J0xsBWa3g
use Data::Uniqid qw(luniqid);

sub new {
    my ($class, $attrs) = @_;

    $attrs->{order_id}= luniqid;

    my $self = $class->next::method($attrs);

    return $self;
}

__PACKAGE__->meta->make_immutable(inline_constructor => 0);
1;


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
