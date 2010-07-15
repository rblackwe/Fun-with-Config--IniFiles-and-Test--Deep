use Test::More qw(no_plan);
use Config::IniFiles;
use Test::Deep;
use File::Next;
use Data::Dumper;
use strict;

my $iter = File::Next::files( { file_filter => sub { /\.ini$/ } }, './ini' );

my %SECTIONS;

while ( defined ( my $file = $iter->() ) ) {
	my %ini;
	tie %ini, 'Config::IniFiles', ( -file => $file );
	foreach my $section (keys %ini) {
		push @{ $SECTIONS{$section} },  $file;
		cmp_deeply( $ini{$section} , superhashof({status => 'closed' }), "$section in $file" );
	}
}


#Sections names should be unique accross all files
foreach my $section (keys %SECTIONS) {
	cmp_ok( scalar @{ $SECTIONS{ $section } }, '==', 1, "[$section] is in " . join " ", @{ $SECTIONS{$section} } ); 
}
























































__END__
cmp_deeply( { name => 'John', random => 'ignore', address => ['5 A street', 'a town', 'a country'] },
            { name => 'John', random => ignore(), address => ['5 A street', 'a town', 'a country'] }  );

warn Dumper \%ini;
