use utf8;
package DB::Schema::Result::MdlTagInstance;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlTagInstance

=head1 DESCRIPTION

tag_instance table holds the information of associations between tags and other items

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

=head1 TABLE: C<mdl_tag_instance>

=cut

__PACKAGE__->table("mdl_tag_instance");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_tag_instance_id_seq'

=head2 tagid

  data_type: 'bigint'
  is_nullable: 0

=head2 component

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 itemtype

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 itemid

  data_type: 'bigint'
  is_nullable: 0

=head2 contextid

  data_type: 'bigint'
  is_nullable: 1

=head2 tiuserid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 ordering

  data_type: 'bigint'
  is_nullable: 1

=head2 timecreated

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 timemodified

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
    sequence          => "mdl_tag_instance_id_seq",
  },
  "tagid",
  { data_type => "bigint", is_nullable => 0 },
  "component",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "itemtype",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "itemid",
  { data_type => "bigint", is_nullable => 0 },
  "contextid",
  { data_type => "bigint", is_nullable => 1 },
  "tiuserid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "ordering",
  { data_type => "bigint", is_nullable => 1 },
  "timecreated",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_taginst_comiteitetiuta_uix>

=over 4

=item * L</component>

=item * L</itemtype>

=item * L</itemid>

=item * L</tiuserid>

=item * L</tagid>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "mdl_taginst_comiteitetiuta_uix",
  ["component", "itemtype", "itemid", "tiuserid", "tagid"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:hE6zYIdPB8pjuea6l08H4A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
