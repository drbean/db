use utf8;
package DB::Schema::Result::MdlEnrolPaypal;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlEnrolPaypal - Holds all known information about PayPal transactions

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=item * L<DBIx::Class::TimeStamp>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime", "TimeStamp");

=head1 TABLE: C<mdl_enrol_paypal>

=cut

__PACKAGE__->table("mdl_enrol_paypal");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_enrol_paypal_id_seq'

=head2 business

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 receiver_email

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 receiver_id

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 item_name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 courseid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 instanceid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 memo

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 tax

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 option_name1

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 option_selection1_x

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 option_name2

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 option_selection2_x

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 payment_status

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 pending_reason

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 reason_code

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 30

=head2 txn_id

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 parent_txn_id

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 payment_type

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 30

=head2 timeupdated

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_enrol_paypal_id_seq",
  },
  "business",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "receiver_email",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "receiver_id",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "item_name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "courseid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "instanceid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "memo",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "tax",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "option_name1",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "option_selection1_x",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "option_name2",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "option_selection2_x",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "payment_status",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "pending_reason",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "reason_code",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 30 },
  "txn_id",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "parent_txn_id",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "payment_type",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 30 },
  "timeupdated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:FFpSAedhHrZ6O3dIuWnbSA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
