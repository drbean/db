use utf8;
package DB::Schema::Result::MdlDataContent;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlDataContent - the content introduced in each record/fields

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

=head1 TABLE: C<mdl_data_content>

=cut

__PACKAGE__->table("mdl_data_content");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_data_content_id_seq'

=head2 fieldid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 recordid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 content

  data_type: 'text'
  is_nullable: 1

=head2 content1

  data_type: 'text'
  is_nullable: 1

=head2 content2

  data_type: 'text'
  is_nullable: 1

=head2 content3

  data_type: 'text'
  is_nullable: 1

=head2 content4

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_data_content_id_seq",
  },
  "fieldid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "recordid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "content",
  { data_type => "text", is_nullable => 1 },
  "content1",
  { data_type => "text", is_nullable => 1 },
  "content2",
  { data_type => "text", is_nullable => 1 },
  "content3",
  { data_type => "text", is_nullable => 1 },
  "content4",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:94lIoQNId6eV2JcU/Sl9CQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
