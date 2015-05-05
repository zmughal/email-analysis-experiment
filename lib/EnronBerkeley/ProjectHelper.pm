package EnronBerkeley::ProjectHelper;

use Modern::Perl;

use Path::Tiny;
use Env qw(@PATH);
use FindBin::libs qw(export scalar base=lib);

sub top_level_directory_path {
	path( $lib )->parent;
}

sub output_directory_path {
	my ($self) = @_;
	$self->top_level_directory_path->child( qw(output) );
}

sub output_file {
	my ($self, @children) = @_;
	$self->output_directory_path->child( @children );
}

1;
