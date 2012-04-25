#!/usr/bin/perl
use strict;

$ENV{'EUCALYPTUS'} = "/opt/eucalyptus";
$ENV{'EUCA_INSTANCES'} = "/disk1/storage/eucalyptus/instances";

$ENV{'BACKUP_LOCATION'} = "/disk1/storage/backup";

#create a directory 
#system("mkdir -p /backup/eucalyptus");
#system("chmod 755 /backup/eucalyptus");

#copy the euca directory
#system("cp -ar $ENV{'EUCALYPTUS'}/. /backup/eucalyptus/.");


###create a directory 
system("mkdir -p $ENV{'BACKUP_LOCATION'}");
system("chmod 755 $ENV{'BACKUP_LOCATION'}");

#copy the euca directory
system("cp -Lr $ENV{'EUCALYPTUS'}/. $ENV{'BACKUP_LOCATION'}/.");


### ?? needed ?

#create the backup instance directory
system("mkdir -p /disk1/storage/eucalyptus/backup");

#copy to the backup instance directory
system("cp -ar $ENV{'EUCA_INSTANCES'}/. /disk1/storage/eucalyptus/backup/.");



