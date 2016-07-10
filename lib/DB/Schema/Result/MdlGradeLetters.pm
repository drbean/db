use utf8;
package DB::Schema::Result::MdlGradeLetters;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlGradeLetters

=head1 DESCRIPTION

Repository for grade letters, for courses and other moodle entities that use grades.

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

=head1 TABLE: C<mdl_grade_letters>

=cut

__PACKAGE__->table("mdl_grade_letters");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_grade_letters_id_seq'

=head2 contextid

  data_type: 'bigint'
  is_nullable: 0

=head2 lowerboundary

  data_type: 'numeric'
  is_nullable: 0
  size: [10,5]

=head2 letter

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_grade_letters_id_seq",
  },
  "contextid",
  { data_type => "bigint", is_nullable => 0 },
  "lowerboundary",
  { data_type => "numeric", is_nullable => 0, size => [10, 5] },
  "letter",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_gradlett_conlowlet_uix>

=over 4

=item * L</contextid>

=item * L</lowerboundary>

=item * L</letter>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "mdl_gradlett_conlowlet_uix",
  ["contextid", "lowerboundary", "letter"],
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ffKp9BbGWlk4FdSkUoVFYQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
