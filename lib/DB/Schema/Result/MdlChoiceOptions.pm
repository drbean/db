use utf8;
package DB::Schema::Result::MdlChoiceOptions;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlChoiceOptions - available options to choice

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

=head1 TABLE: C<mdl_choice_options>

=cut

__PACKAGE__->table("mdl_choice_options");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_choice_options_id_seq'

=head2 choiceid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 text

  data_type: 'text'
  is_nullable: 1

=head2 maxanswers

  data_type: 'bigint'
  default_value: 0
  is_nullable: 1

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
    sequence          => "mdl_choice_options_id_seq",
  },
  "choiceid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "text",
  { data_type => "text", is_nullable => 1 },
  "maxanswers",
  { data_type => "bigint", default_value => 0, is_nullable => 1 },
  "timemodified",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XyIe6jTGrSzadBIuaHYBFQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
