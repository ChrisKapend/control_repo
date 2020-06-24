node default {
    file {'/root/README':
        ensure => file,
        content => 'this is a readme',
        owner => 'josiane',
    }
}

node '192.168.1.61'{
    include role::app_server
}
node '192.168.1.97'{
    include role::db_server
}