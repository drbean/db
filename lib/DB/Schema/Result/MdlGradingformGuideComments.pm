use utf8;
package DB::Schema::Result::MdlGradingformGuideComments;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlGradingformGuideComments - frequently used comments used in marking guide

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

=head1 TABLE: C<mdl_gradingform_guide_comments>

=cut

__PACKAGE__->table("mdl_gradingform_guide_comments");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_gradingform_guide_comments_id_seq'

=head2 definitionid

  data_type: 'bigint'
  is_nullable: 0

=head2 sortorder

  data_type: 'bigint'
  is_nullable: 0

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 descriptionformat

  data_type: 'smallint'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_gradingform_guide_comments_id_seq",
  },
  "definitionid",
  { data_type => "bigint", is_nullable => 0 },
  "sortorder",
  { data_type => "bigint", is_nullable => 0 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "descriptionformat",
  { data_type => "smallint", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ltBm8WUjVa+aN3T37E0O0g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
