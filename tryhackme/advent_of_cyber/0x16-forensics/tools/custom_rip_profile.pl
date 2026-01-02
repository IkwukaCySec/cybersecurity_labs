# RegRipper Profile - AoC2025 DroneManager Detection
package aoc2025_dronemanager;
use strict;

sub getConfig { return %pluginconfig; }
sub getShortDescr { return "Detect DroneManager Updater installation and persistence"; }
sub getVersion { return "1.0"; }

my %pluginconfig = (
    hive => "Software,NTUSER\\.DAT",
    category => "Malware",
);

sub pluginmain {
    my $class = shift;
    my $hive = shift;
    ::logMsg("Launching aoc2025_dronemanager...");
    
    # Check Uninstall keys
    my $reg = Parse::Win32Registry->new($hive);
    my $root_key = $reg->get_root_key;
    
    # Add checks for DisplayName, InstallLocation, Run keys
}
1;
