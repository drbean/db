use utf8;
package DB::Schema::Result::MdlQtypeDdimageortextDrops;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQtypeDdimageortextDrops - Drop boxes

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

=head1 TABLE: C<mdl_qtype_ddimageortext_drops>

=cut

__PACKAGE__->table("mdl_qtype_ddimageortext_drops");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_qtype_ddimageortext_drops_id_seq'

=head2 questionid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 no

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 xleft

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 ytop

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 choice

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 label

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_qtype_ddimageortext_drops_id_seq",
  },
  "questionid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "no",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "xleft",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "ytop",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "choice",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "label",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:vTw2nMvWTmoxeBukADOBaA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
