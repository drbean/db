use utf8;
package DB::Schema::Result::MdlScormScoes;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlScormScoes - each SCO part of the SCORM module

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

=head1 TABLE: C<mdl_scorm_scoes>

=cut

__PACKAGE__->table("mdl_scorm_scoes");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_scorm_scoes_id_seq'

=head2 scorm

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 manifest

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 organization

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 parent

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 identifier

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 launch

  data_type: 'text'
  is_nullable: 0

=head2 scormtype

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 5

=head2 title

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 sortorder

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
    sequence          => "mdl_scorm_scoes_id_seq",
  },
  "scorm",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "manifest",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "organization",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "parent",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "identifier",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "launch",
  { data_type => "text", is_nullable => 0 },
  "scormtype",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 5 },
  "title",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "sortorder",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nuMBd1tW3dTfBqgxp7AOfw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
