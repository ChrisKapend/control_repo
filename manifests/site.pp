node default {
    file {'/root/README':
        ensure => file,
        content => 'this is a readme',
        owner => 'josiane',
    }
    user {'josiane':
        name => 'josiane',
        ensure => 'present',
    }
}
node 'srv01'{
    include role::master_server
    file{'/root/README':
      ensure => file,
      content => $fqdn,
    }
}
node 'srv02'{
    include role::app_server
}
node 'srv03'{
    include role::db_server
}