use utf8;
package DB::Schema::Result::MdlTagCorrelation;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlTagCorrelation

=head1 DESCRIPTION

The rationale for the 'tag_correlation' table is performance.   It works as a cache for a potentially heavy load query done at the 'tag_instance' table.   So, the 'tag_correlation' table stores redundant information derived from the 'tag_instance' ta

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

=head1 TABLE: C<mdl_tag_correlation>

=cut

__PACKAGE__->table("mdl_tag_correlation");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_tag_correlation_id_seq'

=head2 tagid

  data_type: 'bigint'
  is_nullable: 0

=head2 correlatedtags

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_tag_correlation_id_seq",
  },
  "tagid",
  { data_type => "bigint", is_nullable => 0 },
  "correlatedtags",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:EjA/sddvFtI47He4gMCzMQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
