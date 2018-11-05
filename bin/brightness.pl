#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use Getopt::Long qw(GetOptions);

sub HelpMessage() {
    print "Usage: $0 
          --brighter           brighter on the 1.1
          --darker             darker on the 0.9
          --set_brightness     set brightness (0<X<max)
          --get_status         get current brightness
          --help,-h            Print this help
          ";
    exit 0;
}

GetOptions(
    'brighter' => \(my $brighter=0),
    'darker' => \(my $darker=0),
    'set_brightness' => \(my $set_brightness=undef),
    'get_status' => \(my $get_status=undef),
    'help|?' => sub { HelpMessage(); },
) or die HelpMessage();


# Get maximum and current brightness from `/sys` which is provided by
# the kernel
my $max_brightness = `cat /sys/class/backlight/intel_backlight/max_brightness`;
my $brightness = `cat /sys/class/backlight/intel_backlight/brightness`;
my $min_brightness = 10;
my $step = 0.2;    # 0.1-0.9

sub brighter() {
  # Failsafe
  if ( $brightness > $max_brightness ) {
    $brightness = $max_brightness;
  }  
  # Start with a little light
  elsif ( $brightness < $min_brightness ) {
    $brightness = $min_brightness;
  }
  else { $brightness = int($brightness * (1.0 + $step)); }
  # print "inside: $brightness" . "\n";
}

sub darker() {
  if ($brightness < $min_brightness) {
    $brightness = 0;
  } 
  else { $brightness = int($brightness * (1.0 - $step)); }
  # print "inside: $brightness" . "\n";
}

# Note: This needs passwordless sudo privileges
sub set_brightness() {
  `sudo sh -c "echo '$brightness' > /sys/class/backlight/intel_backlight/brightness"`;
  # print "$brightness";
}

sub get_status() {
  print int(int($brightness)/((int($max_brightness))/100));
}

if ( $brighter ) {
  brighter();
  set_brightness();
}

if ( $darker ) {
  darker();
  set_brightness();
}

if ( $get_status ) {
  get_status();
}