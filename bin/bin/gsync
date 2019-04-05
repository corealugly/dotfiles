#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use Getopt::Long qw(GetOptions);
use Log::Any qw($log);
use Log::Any::Adapter ('Stdout');

sub HelpMessage() {
    print "Usage: $0 
          --sync               'sync dir ~/keepass/ AND remote:/keepass/'
          --help, -h           Print this help
          ";
    exit 0;
}

# --sync_to_remote     'sync dir ~/keepass/ TO remote:/keepass/'
# --sync_to_local      'sync dir remote:/keepass/ TO ~/keepass/'

GetOptions(
    'sync' => \(my $sync=undef),
    # 'sync_to_remote' => \(my $sync_to_remote=undef),
    # 'sync_to_local' => \(my $sync_to_local=undef),
    'help|?' => sub { HelpMessage(); },
) or die HelpMessage();

my $remote_system = 'gdrive';
my $remote_dir = '/keepass/';
my $local_dir= '~/keepass/';

if ( $sync ) {
  my @output;
  $log->info("INFO: sync remote to local");
  @output = `rclone sync -v -u  ${remote_system}:${remote_dir} ${local_dir}`;
  foreach (@output) {
    print $_ . "\n";
  }

  $log->info("INFO: sync local to remote");
  @output = `rclone sync -v -u  ${local_dir} ${remote_system}:${remote_dir}`;
  foreach (@output) {
    print $_ . "\n";
  }
}