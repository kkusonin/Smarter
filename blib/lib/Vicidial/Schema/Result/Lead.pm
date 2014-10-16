use utf8;
package Vicidial::Schema::Result::Lead;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialLead

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

=head1 TABLE: C<vicidial_list>

=cut

__PACKAGE__->table("vicidial_list");

=head1 ACCESSORS

=head2 lead_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 entry_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 modify_date

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 status

  data_type: 'varchar'
  is_nullable: 1
  size: 6

=head2 user

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 vendor_lead_code

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 source_id

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 list_id

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 gmt_offset_now

  data_type: 'decimal'
  default_value: 0.00
  is_nullable: 1
  size: [4,2]

=head2 called_since_last_reset

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N","Y1","Y2","Y3","Y4","Y5","Y6","Y7","Y8","Y9","Y10"]}
  is_nullable: 1

=head2 phone_code

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 phone_number

  data_type: 'varchar'
  is_nullable: 0
  size: 18

=head2 title

  data_type: 'varchar'
  is_nullable: 1
  size: 4

=head2 first_name

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 middle_initial

  data_type: 'varchar'
  is_nullable: 1
  size: 1

=head2 last_name

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 address1

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 address2

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 address3

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 city

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 state

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 province

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 postal_code

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 country_code

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 gender

  data_type: 'enum'
  default_value: 'U'
  extra: {list => ["M","F","U"]}
  is_nullable: 1

=head2 date_of_birth

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 alt_phone

  data_type: 'varchar'
  is_nullable: 1
  size: 12

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 70

=head2 security_phrase

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 comments

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 called_count

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 last_local_call_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 rank

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 owner

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 entry_list_id

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "lead_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "entry_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "modify_date",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "status",
  { data_type => "varchar", is_nullable => 1, size => 6 },
  "user",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "vendor_lead_code",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "source_id",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "list_id",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "gmt_offset_now",
  {
    data_type => "decimal",
    default_value => "0.00",
    is_nullable => 1,
    size => [4, 2],
  },
  "called_since_last_reset",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N", "Y1" .. "Y9", "Y10"] },
    is_nullable => 1,
  },
  "phone_code",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "phone_number",
  { data_type => "varchar", is_nullable => 0, size => 18 },
  "title",
  { data_type => "varchar", is_nullable => 1, size => 4 },
  "first_name",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "middle_initial",
  { data_type => "varchar", is_nullable => 1, size => 1 },
  "last_name",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "address1",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "address2",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "address3",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "city",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "state",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "province",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "postal_code",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "country_code",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "gender",
  {
    data_type => "enum",
    default_value => "U",
    extra => { list => ["M", "F", "U"] },
    is_nullable => 1,
  },
  "date_of_birth",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "alt_phone",
  { data_type => "varchar", is_nullable => 1, size => 12 },
  "email",
  { data_type => "varchar", is_nullable => 1, size => 70 },
  "security_phrase",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "comments",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "called_count",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "last_local_call_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "rank",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "owner",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "entry_list_id",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</lead_id>

=back

=cut

__PACKAGE__->set_primary_key("lead_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-09-13 13:35:00
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:MLp02XmhhxHTtBAE6iQE1g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
