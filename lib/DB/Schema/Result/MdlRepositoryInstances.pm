use utf8;
package DB::Schema::Result::MdlRepositoryInstances;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlRepositoryInstances

=head1 DESCRIPTION

This table contains one entry for every configured external repository instance.

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

=head1 TABLE: C<mdl_repository_instances>

=cut

__PACKAGE__->table("mdl_repository_instances");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_repository_instances_id_seq'

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 typeid

  data_type: 'bigint'
  is_nullable: 0

=head2 userid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 contextid

  data_type: 'bigint'
  is_nullable: 0

=head2 username

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 password

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 timecreated

  data_type: 'bigint'
  is_nullable: 1

=head2 timemodified

  data_type: 'bigint'
  is_nullable: 1

=head2 readonly

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
    sequence          => "mdl_repository_instances_id_seq",
  },
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "typeid",
  { data_type => "bigint", is_nullable => 0 },
  "userid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "contextid",
  { data_type => "bigint", is_nullable => 0 },
  "username",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "password",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "timecreated",
  { data_type => "bigint", is_nullable => 1 },
  "timemodified",
  { data_type => "bigint", is_nullable => 1 },
  "readonly",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mww+wBAGxCnEL7LCvswh0g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
