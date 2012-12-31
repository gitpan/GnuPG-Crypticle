use 5.006;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'GnuPG::Crypticle',
    license             => 'perl',
    dist_author         => q{Brad Barden <iamb@mifflinet.net>},
    dist_version_from   => 'lib/GnuPG/Crypticle.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'perl' => 5.006,
        'Moose' => 2,
        'MooseX::Role::Tempdir' => 0,
        'Fcntl' => 0,
        'File::Copy' => 0,
        'File::Path' => 0,
        'File::Spec' => 0,
        'File::stat' => 0,
        'IO::Handle' => 0,
    },
    add_to_cleanup      => [ 'GnuPG-Crypticle-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
