s|?>$|?>\n<!DOCTYPE server [\n<!ENTITY i3e-service SYSTEM "../../conf/i3e-service.xml">\n]>|
s|<!DOCTYPE server>||
s|<server>|<server>\n\&i3e-service;|
s| ./deploy$|./deploy0, ./deploy, ./deploy1|
s|[^/a-zA-Z]deploy/|deploy0/, deploy/, deploy1/|
s|ScanPeriod">.*</attribute>|ScanPeriod">60000</attribute>\n<attribute name="ScanEnabled">false</attribute>|
s|VerifierVerbose">true</attr|VerifierVerbose">false</attr|
s|TransactionTimeout">.*</attr|TransactionTimeout">3000</attr|