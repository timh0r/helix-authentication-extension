#!/usr/bin/awk -f
#
# Configure the authentication extension for testing.
#

/^ExtP4USER:/ {
    print "ExtP4USER:\tsuper";
    next;
}

/Service-URL:/ {
    print;
    print "\t\thttps://haproxy.doc/";
    getline;
    next;
}

/enable-logging:/ {
    print;
    print "\t\ttrue";
    getline;
    next;
}

/name-identifier:/ {
    print;
    print "\t\tnameID";
    getline;
    next;
}

/user-identifier:/ {
    print;
    print "\t\temail";
    getline;
    next;
}

/non-sso-groups:/ {
    print;
    print "\t\tno_timeout";
    getline;
    next;
}

{print}
