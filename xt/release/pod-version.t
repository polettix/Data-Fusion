use strict;
use Test::More tests => 1;
use Data::Fusion;

(my $filename = $INC{'Data/Fusion.pm'}) =~ s{pm$}{pod};

my $pod_version;

{
   open my $fh, '<', $filename
     or BAIL_OUT "can't open '$filename'";
   binmode $fh, ':raw';
   local $/;
   my $module_text = <$fh>;
   ($pod_version) = $module_text =~ m{
      ^This\ document\ describes\ Data::Fusion\ version\ (.*?)\.$
   }mxs;
}

is $pod_version, $Data::Fusion::VERSION, 'version in POD';
