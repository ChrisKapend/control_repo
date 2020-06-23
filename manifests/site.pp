node default {
    file {'/root/README':
        ensure => file,
        content => 'this is a readme',
        owner => 'josiane',
    }
}
node 'localhost.localdomain'{
    include role::master_server
}