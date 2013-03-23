use Module::Build;
#copied shamelessly from Pod-PseudoPod-0.18/Build.PL
my $build = Module::Build->new (
    module_name => 'IPC::Transit::Router',
    license => 'perl',
    build_requires => {
        'Test::More'            => 0,
        'IPC::Transit'        => 0,
        'Message::Router'     => 0
    },
    requires => {
        'IPC::Transit'        => 0,
        'Message::Router'     => 0
    },
    recursive_test_files => 1,
    dist_author          => 'Dana M. Diederich <diederich@gmail.com>',
    dist_abstract        => 'Allows fast, simple routing of Transit messages',
    script_files => [],
);
$build->create_build_script;
