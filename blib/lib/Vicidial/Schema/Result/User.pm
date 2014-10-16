use utf8;
package Vicidial::Schema::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Vicidial::Schema::Result::VicidialUser

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

=head1 TABLE: C<vicidial_users>

=cut

__PACKAGE__->table("vicidial_users");

=head1 ACCESSORS

=head2 user_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 user

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 pass

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 full_name

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 user_level

  data_type: 'tinyint'
  default_value: 1
  extra: {unsigned => 1}
  is_nullable: 1

=head2 user_group

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 phone_login

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 phone_pass

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 delete_users

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 delete_user_groups

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 delete_lists

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 delete_campaigns

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 delete_ingroups

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 delete_remote_agents

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 load_leads

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 campaign_detail

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 ast_admin_access

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 ast_delete_phones

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 delete_scripts

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 modify_leads

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 hotkeys_active

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 change_agent_campaign

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 agent_choose_ingroups

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 closer_campaigns

  data_type: 'text'
  is_nullable: 1

=head2 scheduled_callbacks

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 agentonly_callbacks

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 agentcall_manual

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 vicidial_recording

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 vicidial_transfers

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 delete_filters

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 alter_agent_interface_options

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 closer_default_blended

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 delete_call_times

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 modify_call_times

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 modify_users

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 modify_campaigns

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 modify_lists

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 modify_scripts

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 modify_filters

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 modify_ingroups

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 modify_usergroups

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 modify_remoteagents

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 modify_servers

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 view_reports

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 vicidial_recording_override

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["DISABLED","NEVER","ONDEMAND","ALLCALLS","ALLFORCE"]}
  is_nullable: 1

=head2 alter_custdata_override

  data_type: 'enum'
  default_value: 'NOT_ACTIVE'
  extra: {list => ["NOT_ACTIVE","ALLOW_ALTER"]}
  is_nullable: 1

=head2 qc_enabled

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 qc_user_level

  data_type: 'integer'
  default_value: 1
  is_nullable: 1

=head2 qc_pass

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 qc_finish

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 qc_commit

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 add_timeclock_log

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 modify_timeclock_log

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 delete_timeclock_log

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 alter_custphone_override

  data_type: 'enum'
  default_value: 'NOT_ACTIVE'
  extra: {list => ["NOT_ACTIVE","ALLOW_ALTER"]}
  is_nullable: 1

=head2 vdc_agent_api_access

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 modify_inbound_dids

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 delete_inbound_dids

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 active

  data_type: 'enum'
  default_value: 'Y'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 alert_enabled

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 download_lists

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 agent_shift_enforcement_override

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["DISABLED","OFF","START","ALL"]}
  is_nullable: 1

=head2 manager_shift_enforcement_override

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 shift_override_flag

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 export_reports

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 delete_from_dnc

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 email

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 user_code

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 territory

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 allow_alerts

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 agent_choose_territories

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 custom_one

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 custom_two

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 custom_three

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 custom_four

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 custom_five

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 100

=head2 voicemail_id

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 agent_call_log_view_override

  data_type: 'enum'
  default_value: 'DISABLED'
  extra: {list => ["DISABLED","Y","N"]}
  is_nullable: 1

=head2 callcard_admin

  data_type: 'enum'
  default_value: 0
  extra: {list => [1,0]}
  is_nullable: 1

=head2 agent_choose_blended

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 realtime_block_user_info

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 custom_fields_modify

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 force_change_password

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
  is_nullable: 1

=head2 agent_lead_search_override

  data_type: 'enum'
  default_value: 'NOT_ACTIVE'
  extra: {list => ["NOT_ACTIVE","ENABLED","DISABLED"]}
  is_nullable: 1

=head2 modify_shifts

  data_type: 'enum'
  default_value: 0
  extra: {list => [1,0]}
  is_nullable: 1

=head2 modify_phones

  data_type: 'enum'
  default_value: 0
  extra: {list => [1,0]}
  is_nullable: 1

=head2 modify_carriers

  data_type: 'enum'
  default_value: 0
  extra: {list => [1,0]}
  is_nullable: 1

=head2 modify_labels

  data_type: 'enum'
  default_value: 0
  extra: {list => [1,0]}
  is_nullable: 1

=head2 modify_statuses

  data_type: 'enum'
  default_value: 0
  extra: {list => [1,0]}
  is_nullable: 1

=head2 modify_voicemail

  data_type: 'enum'
  default_value: 0
  extra: {list => [1,0]}
  is_nullable: 1

=head2 modify_audiostore

  data_type: 'enum'
  default_value: 0
  extra: {list => [1,0]}
  is_nullable: 1

=head2 modify_moh

  data_type: 'enum'
  default_value: 0
  extra: {list => [1,0]}
  is_nullable: 1

=head2 modify_tts

  data_type: 'enum'
  default_value: 0
  extra: {list => [1,0]}
  is_nullable: 1

=head2 preset_contact_search

  data_type: 'enum'
  default_value: 'NOT_ACTIVE'
  extra: {list => ["NOT_ACTIVE","ENABLED","DISABLED"]}
  is_nullable: 1

=head2 modify_contacts

  data_type: 'enum'
  default_value: 0
  extra: {list => [1,0]}
  is_nullable: 1

=head2 modify_same_user_level

  data_type: 'enum'
  default_value: 1
  extra: {list => [0,1]}
  is_nullable: 1

=head2 admin_hide_lead_data

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1]}
  is_nullable: 1

=head2 admin_hide_phone_data

  data_type: 'enum'
  default_value: 0
  extra: {list => [0,1,"2_DIGITS","3_DIGITS","4_DIGITS"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "user_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "user",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "pass",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "full_name",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "user_level",
  {
    data_type => "tinyint",
    default_value => 1,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "user_group",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "phone_login",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "phone_pass",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "delete_users",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "delete_user_groups",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "delete_lists",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "delete_campaigns",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "delete_ingroups",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "delete_remote_agents",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "load_leads",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "campaign_detail",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "ast_admin_access",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "ast_delete_phones",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "delete_scripts",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "modify_leads",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "hotkeys_active",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "change_agent_campaign",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "agent_choose_ingroups",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "closer_campaigns",
  { data_type => "text", is_nullable => 1 },
  "scheduled_callbacks",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "agentonly_callbacks",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "agentcall_manual",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "vicidial_recording",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "vicidial_transfers",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "delete_filters",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "alter_agent_interface_options",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "closer_default_blended",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "delete_call_times",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "modify_call_times",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "modify_users",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "modify_campaigns",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "modify_lists",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "modify_scripts",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "modify_filters",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "modify_ingroups",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "modify_usergroups",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "modify_remoteagents",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "modify_servers",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "view_reports",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "vicidial_recording_override",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => {
      list => ["DISABLED", "NEVER", "ONDEMAND", "ALLCALLS", "ALLFORCE"],
    },
    is_nullable => 1,
  },
  "alter_custdata_override",
  {
    data_type => "enum",
    default_value => "NOT_ACTIVE",
    extra => { list => ["NOT_ACTIVE", "ALLOW_ALTER"] },
    is_nullable => 1,
  },
  "qc_enabled",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "qc_user_level",
  { data_type => "integer", default_value => 1, is_nullable => 1 },
  "qc_pass",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "qc_finish",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "qc_commit",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "add_timeclock_log",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "modify_timeclock_log",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "delete_timeclock_log",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "alter_custphone_override",
  {
    data_type => "enum",
    default_value => "NOT_ACTIVE",
    extra => { list => ["NOT_ACTIVE", "ALLOW_ALTER"] },
    is_nullable => 1,
  },
  "vdc_agent_api_access",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "modify_inbound_dids",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "delete_inbound_dids",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "active",
  {
    data_type => "enum",
    default_value => "Y",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "alert_enabled",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "download_lists",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "agent_shift_enforcement_override",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => { list => ["DISABLED", "OFF", "START", "ALL"] },
    is_nullable => 1,
  },
  "manager_shift_enforcement_override",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "shift_override_flag",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "export_reports",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "delete_from_dnc",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "email",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "user_code",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "territory",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "allow_alerts",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "agent_choose_territories",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "custom_one",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "custom_two",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "custom_three",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "custom_four",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "custom_five",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 100 },
  "voicemail_id",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "agent_call_log_view_override",
  {
    data_type => "enum",
    default_value => "DISABLED",
    extra => { list => ["DISABLED", "Y", "N"] },
    is_nullable => 1,
  },
  "callcard_admin",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [1, 0] },
    is_nullable => 1,
  },
  "agent_choose_blended",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "realtime_block_user_info",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "custom_fields_modify",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "force_change_password",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 1,
  },
  "agent_lead_search_override",
  {
    data_type => "enum",
    default_value => "NOT_ACTIVE",
    extra => { list => ["NOT_ACTIVE", "ENABLED", "DISABLED"] },
    is_nullable => 1,
  },
  "modify_shifts",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [1, 0] },
    is_nullable => 1,
  },
  "modify_phones",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [1, 0] },
    is_nullable => 1,
  },
  "modify_carriers",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [1, 0] },
    is_nullable => 1,
  },
  "modify_labels",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [1, 0] },
    is_nullable => 1,
  },
  "modify_statuses",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [1, 0] },
    is_nullable => 1,
  },
  "modify_voicemail",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [1, 0] },
    is_nullable => 1,
  },
  "modify_audiostore",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [1, 0] },
    is_nullable => 1,
  },
  "modify_moh",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [1, 0] },
    is_nullable => 1,
  },
  "modify_tts",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [1, 0] },
    is_nullable => 1,
  },
  "preset_contact_search",
  {
    data_type => "enum",
    default_value => "NOT_ACTIVE",
    extra => { list => ["NOT_ACTIVE", "ENABLED", "DISABLED"] },
    is_nullable => 1,
  },
  "modify_contacts",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [1, 0] },
    is_nullable => 1,
  },
  "modify_same_user_level",
  {
    data_type => "enum",
    default_value => 1,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "admin_hide_lead_data",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1] },
    is_nullable => 1,
  },
  "admin_hide_phone_data",
  {
    data_type => "enum",
    default_value => 0,
    extra => { list => [0, 1, "2_DIGITS", "3_DIGITS", "4_DIGITS"] },
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</user_id>

=back

=cut

__PACKAGE__->set_primary_key("user_id");

=head1 UNIQUE CONSTRAINTS

=head2 C<user>

=over 4

=item * L</user>

=back

=cut

__PACKAGE__->add_unique_constraint("user", ["user"]);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-09-13 13:35:01
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:dL5sdiBJuzgn9LEBQefLRw
__PACKAGE__->belongs_to(
                        'user_group',
                        'Vicidial::Schema::Result::VicidialUserGroup',
                        { 'foreign.user_group' => 'self.user_group'}
                       ); 

# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
