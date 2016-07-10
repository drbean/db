use utf8;
package DB::Schema::Result::MdlQtypeEssayOptions;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlQtypeEssayOptions - Extra options for essay questions.

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

=head1 TABLE: C<mdl_qtype_essay_options>

=cut

__PACKAGE__->table("mdl_qtype_essay_options");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_qtype_essay_options_id_seq'

=head2 questionid

  data_type: 'bigint'
  is_nullable: 0

=head2 responseformat

  data_type: 'varchar'
  default_value: 'editor'
  is_nullable: 0
  size: 16

=head2 responserequired

  data_type: 'smallint'
  default_value: 1
  is_nullable: 0

=head2 responsefieldlines

  data_type: 'smallint'
  default_value: 15
  is_nullable: 0

=head2 attachments

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 attachmentsrequired

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 graderinfo

  data_type: 'text'
  is_nullable: 1

=head2 graderinfoformat

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 responsetemplate

  data_type: 'text'
  is_nullable: 1

=head2 responsetemplateformat

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
    sequence          => "mdl_qtype_essay_options_id_seq",
  },
  "questionid",
  { data_type => "bigint", is_nullable => 0 },
  "responseformat",
  {
    data_type => "varchar",
    default_value => "editor",
    is_nullable => 0,
    size => 16,
  },
  "responserequired",
  { data_type => "smallint", default_value => 1, is_nullable => 0 },
  "responsefieldlines",
  { data_type => "smallint", default_value => 15, is_nullable => 0 },
  "attachments",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "attachmentsrequired",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "graderinfo",
  { data_type => "text", is_nullable => 1 },
  "graderinfoformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "responsetemplate",
  { data_type => "text", is_nullable => 1 },
  "responsetemplateformat",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<mdl_qtypessaopti_que_uix>

=over 4

=item * L</questionid>

=back

=cut

__PACKAGE__->add_unique_constraint("mdl_qtypessaopti_que_uix", ["questionid"]);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:kmJvXN1yOhW1S6cn0pA6CQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
