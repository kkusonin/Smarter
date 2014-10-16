use utf8;
package Vicidial::Schema::Result::List;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialList

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

=head1 TABLE: C<vicidial_lists>

=cut

__PACKAGE__->table("vicidial_lists");

=head1 ACCESSORS

=head2 list_id

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 list_name

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 campaign_id

  data_type: 'varchar'
  is_nullable: 1
  size: 8

=head2 active

  data_type: 'enum'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 list_description

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 list_changedate

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 list_lastcalldate

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 reset_time

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 agent_script_override

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 10

=head2 campaign_cid_override

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 am_message_exten_override

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 drop_inbound_group_override

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 20

=head2 xferconf_a_number

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 xferconf_b_number

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 xferconf_c_number

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 xferconf_d_number

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 xferconf_e_number

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 50

=head2 web_form_address

  data_type: 'text'
  is_nullable: 1

=head2 web_form_address_two

  data_type: 'text'
  is_nullable: 1

=head2 time_zone_setting

  data_type: 'enum'
  default_value: 'COUNTRY_AND_AREA_CODE'
  extra: {list => ["COUNTRY_AND_AREA_CODE","POSTAL_CODE","NANPA_PREFIX","OWNER_TIME_ZONE_CODE"]}
  is_nullable: 1

=head2 inventory_report

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "list_id",
  { data_type => "bigint", extra => { unsigned => 1 }, is_nullable => 0 },
  "list_name",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "campaign_id",
  { data_type => "varchar", is_nullable => 1, size => 8 },
  "active",
  { data_type => "enum", extra => { list => ["Y", "N"] }, is_nullable => 1 },
  "list_description",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "list_changedate",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "list_lastcalldate",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "reset_time",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "agent_script_override",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 10 },
  "campaign_cid_override",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "am_message_exten_override",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "drop_inbound_group_override",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 20 },
  "xferconf_a_number",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "xferconf_b_number",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "xferconf_c_number",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "xferconf_d_number",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "xferconf_e_number",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 50 },
  "web_form_address",
  { data_type => "text", is_nullable => 1 },
  "web_form_address_two",
  { data_type => "text", is_nullable => 1 },
  "time_zone_setting",
  {
    data_type => "enum",
    default_value => "COUNTRY_AND_AREA_CODE",
    extra => {
      list => [
        "COUNTRY_AND_AREA_CODE",
        "POSTAL_CODE",
        "NANPA_PREFIX",
        "OWNER_TIME_ZONE_CODE",
      ],
    },
    is_nullable => 1,
  },
  "inventory_report",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</list_id>

=back

=cut

__PACKAGE__->set_primary_key("list_id");


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-09-13 13:35:00
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:c1qjVh6TeaDAc/ySzfJLjQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
