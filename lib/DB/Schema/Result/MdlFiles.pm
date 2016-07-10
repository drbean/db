use utf8;
package DB::Schema::Result::MdlFiles;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlFiles - description of files, content is stored in sha1 file pool

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

=head1 TABLE: C<mdl_files>

=cut

__PACKAGE__->table("mdl_files");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_files_id_seq'

=head2 contenthash

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=head2 pathnamehash

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=head2 contextid

  data_type: 'bigint'
  is_nullable: 0

=head2 component

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 filearea

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=head2 itemid

  data_type: 'bigint'
  is_nullable: 0

=head2 filepath

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 filename

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 userid

  data_type: 'bigint'
  is_nullable: 1

=head2 filesize

  data_type: 'bigint'
  is_nullable: 0

=head2 mimetype

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 status

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 source

  data_type: 'text'
  is_nullable: 1

=head2 author

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 license

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 0

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 0

=head2 sortorder

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 referencefileid

  data_type: 'bigint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_files_id_seq",
  },
  "contenthash",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "pathnamehash",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
  "contextid",
  { data_type => "bigint", is_nullable => 0 },
  "component",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "filearea",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
  "itemid",
  { data_type => "bigint", is_nullable => 0 },
  "filepath",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "filename",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "userid",
  { data_type => "bigint", is_nullable => 1 },
  "filesize",
  { data_type => "bigint", is_nullable => 0 },
  "mimetype",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "status",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "source",
  { data_type => "text", is_nullable => 1 },
  "author",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "license",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "timecreated",
  { data_type => "bigint", is_nullable => 0 },
  "timemodified",
  { data_type => "bigint", is_nullable => 0 },
  "sortorder",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "referencefileid",
  { data_type => "bigint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_file_pat_uix>

=over 4

=item * L</pathnamehash>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_file_pat_uix", ["pathnamehash"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:j5dEwaCT+wEGI+foi/FCRg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
