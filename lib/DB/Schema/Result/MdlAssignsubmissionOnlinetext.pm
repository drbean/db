use utf8;
package DB::Schema::Result::MdlAssignsubmissionOnlinetext;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlAssignsubmissionOnlinetext - Info about onlinetext submission

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

=head1 TABLE: C<mdl_assignsubmission_onlinetext>

=cut

__PACKAGE__->table("mdl_assignsubmission_onlinetext");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_assignsubmission_onlinetext_id_seq'

=head2 assignment

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 submission

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 onlinetext

  data_type: 'text'
  is_nullable: 1

=head2 onlineformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_assignsubmission_onlinetext_id_seq",
  },
  "assignment",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "submission",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "onlinetext",
  { data_type => "text", is_nullable => 1 },
  "onlineformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WhAKDBWIA6HuAY443NP58g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
