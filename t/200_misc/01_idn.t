use strict;
use warnings;
use utf8;
use t::Util;
use Test::More;
use Furl;

skip_if_offline();

my $url = 'http://例え.テスト/';

my $furl = Furl->new();
my ($code, $msg, $headers, $content) = $furl->get($url);
is $code, 200;

done_testing;
