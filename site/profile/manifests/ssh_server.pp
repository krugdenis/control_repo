class profile::ssh_server {
    package { 'openssh-server':
        ensure => present,
    }
    service { 'sshd':
        ensure => 'running',
        enable => 'true',
    }
    ssh_authorized_key { 'root@master.puppet.vm':
        ensure => present,
        user => 'root',
        type => 'ssh-rsa',
        key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD4vB6qyZIfdbhCda8A53QMKcksEKRQpZVKAeDSkkNZWyW8oZgLFrQIALo/N40uBj16drOvX1pfYZku9dfwQEAjWpumYBwrFu0g868f2weIqyiYCDansh1ZSs/KJ//ce1ISNQAXEAm/tswXHMwdiVlVH5dJF48bQrMPMlz/CB18jiAr7R/eIchBV0AmHmlS34y+ydA1PXN8Fe35QbqKaVfT9jvp8XOTdWUtbxIWf0iJQIxCcCvMX7UEN1fUkfvJlMREOKgP7swsAwJ0PT2IZJGt3U9Sr2k/L2aEzjjdcktdkxitUnezB9+I5gUugzj4aeL3S2Tzb/HUNfqm+Qd/ABpN',
    }
}