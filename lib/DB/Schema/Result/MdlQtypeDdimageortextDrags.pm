use utf8;
package DB::Schema::Result::MdlQtypeDdimageortextDrags;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQtypeDdimageortextDrags

=head1 DESCRIPTION

Images to drag. Actual file names are not stored here we use the file names as found in the file storage area.

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

=head1 TABLE: C<mdl_qtype_ddimageortext_drags>

=cut

__PACKAGE__->table("mdl_qtype_ddimageortext_drags");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_qtype_ddimageortext_drags_id_seq'

=head2 questionid

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 no

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 draggroup

  data_type: 'bigint'
  default_value: 0
  is_nullable: 0

=head2 infinite

  data_type: 'smallint'
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
    sequence          => "mdl_qtype_ddimageortext_drags_id_seq",
  },
  "questionid",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "no",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "draggroup",
  { data_type => "bigint", default_value => 0, is_nullable => 0 },
  "infinite",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:F38FCb81rE3EBJliby2G1A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
