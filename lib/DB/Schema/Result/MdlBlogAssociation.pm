use utf8;
package DB::Schema::Result::MdlBlogAssociation;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DB::Schema::Result::MdlBlogAssociation

=head1 DESCRIPTION

Associations of blog entries with courses and module instances

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

=head1 TABLE: C<mdl_blog_association>

=cut

__PACKAGE__->table("mdl_blog_association");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  is_auto_increment: 1
  is_nullable: 0
  sequence: 'mdl_blog_association_id_seq'

=head2 contextid

  data_type: 'bigint'
  is_nullable: 0

=head2 blogid

  data_type: 'bigint'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type         => "bigint",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "mdl_blog_association_id_seq",
  },
  "contextid",
  { data_type => "bigint", is_nullable => 0 },
  "blogid",
  { data_type => "bigint", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-07-09 17:08:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xgmVsV8fewWEJLbfy1trTg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
