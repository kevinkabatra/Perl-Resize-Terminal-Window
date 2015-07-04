#Resize_screen.pm
package Resize_screen;
use warnings;
use strict;

use vars qw(@ISA @EXPORT_OK); #backward compatibility Perls under 5.6
use Exporter;
our @ISA = "Exporter";
our @EXPORT_OK = qw(resize_screen);
  
#/**
# * Resizes terminal window using ANSI escape codes.
# * Confirmed in GNOME Terminal 3.8.4
# * 
# * Example code:
# *     resize_screen(31, 130);
# * 
# * parameters: width
# * 		height
# * returns: void
# */
sub resize_screen($$) {
	my $height = $_[0];
	my $width = $_[1] . "t";
	print "\e[8;$height;$width";
}

1;
