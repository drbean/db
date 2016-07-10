use utf8;
package DB::Schema::Result::MdlTaskAdhoc;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlTaskAdhoc - List of adhoc tasks waiting to run.

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

=head1 TABLE: C<mdl_task_adhoc>

=cut

__PACKAGE__->table("mdl_task_adhoc");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_task_adhoc_id_seq'

=head2 component

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 classname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 nextruntime

  data_type: 'bigint'
  is_nullable: 0

=head2 faildelay

  data_type: 'bigint'
  is_nullable: 1

=head2 customdata

  data_type: 'text'
  is_nullable: 1

=head2 blocking

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
    sequence          => "mdl_task_adhoc_id_seq",
  },
  "component",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "classname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "nextruntime",
  { data_type => "bigint", is_nullable => 0 },
  "faildelay",
  { data_type => "bigint", is_nullable => 1 },
  "customdata",
  { data_type => "text", is_nullable => 1 },
  "blocking",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YUQj6KGqGRsEsZuZJr9jcg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
