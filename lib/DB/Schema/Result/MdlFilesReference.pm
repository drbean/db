use utf8;
package DB::Schema::Result::MdlFilesReference;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlFilesReference - Store files references

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

=head1 TABLE: C<mdl_files_reference>

=cut

__PACKAGE__->table("mdl_files_reference");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_files_reference_id_seq'

=head2 repositoryid

  data_type: 'bigint'
  is_nullable: 0

=head2 lastsync

  data_type: 'bigint'
  is_nullable: 1

=head2 reference

  data_type: 'text'
  is_nullable: 1

=head2 referencehash

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 40

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_files_reference_id_seq",
  },
  "repositoryid",
  { data_type => "bigint", is_nullable => 0 },
  "lastsync",
  { data_type => "bigint", is_nullable => 1 },
  "reference",
  { data_type => "text", is_nullable => 1 },
  "referencehash",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 40 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_filerefe_refrep_uix>

=over 4

=item * L</referencehash>

=item * L</repositoryid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_filerefe_refrep_uix", ["referencehash", "repositoryid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XI2LH05DArRjR0VbrJIO1w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
