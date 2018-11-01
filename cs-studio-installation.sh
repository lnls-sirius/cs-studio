#!/bin/bash
source envs.sh

wget https://artifactory.esss.lu.se/artifactory/CS-Studio/production/4.6.1.7/cs-studio-ess-4.6.1.7-linux.gtk.x86_64.tar.gz
tar -xvzf cs-studio-ess-4.6.1.7-linux.gtk.x86_64.tar.gz
rm cs-studio-ess-4.6.1.7-linux.gtk.x86_64.tar.gz
sed -i -e '26cFULL = .* ' cs-studio/configuration/authorization.conf
sed -i -e '21calarm_config = .*' cs-studio/configuration/authorization.conf
sed -i -e '26iFULL=.* ' cs-studio/configuration/authorization.conf

sed -i -e '145corg.csstudio.security/authorization_provider=FileBased' cs-studio/configuration/plugin_customization.ini
sed -i -e '146corg.csstudio.security/authorization_file_name=platform:/config/authorization.conf' cs-studio/configuration/plugin_customization.ini
sed -i -e "40corg.csstudio.diirt.util.core.preferences/diirt.ca.addr.list=${CA_ADDR_LIST_IP}" cs-studio/configuration/plugin_customization.ini
sed -i -e "130corg.csstudio.trends.databrowser3/urls=pbraw://${RETRIEVAL}" cs-studio/configuration/plugin_customization.ini
sed -i -e '131corg.csstudio.trends.databrowser3/use_default_archives=true' cs-studio/configuration/plugin_customization.ini
sed -i -e '132corg.csstudio.trends.databrowser3/automatic_history_refresh=true' cs-studio/configuration/plugin_customization.ini
sed -i -e '134corg.csstudio.trends.databrowser3/archive_rescale=NONE' cs-studio/configuration/plugin_customization.ini
sed -i -e '149corg.csstudio.alarm.beast/root_component=LNLS_Alarms' cs-studio/configuration/plugin_customization.ini
sed -i -e '150corg.csstudio.alarm.beast.ui.areapanel/columns=2' cs-studio/configuration/plugin_customization.ini
sed -i -e "151corg.csstudio.alarm.beast/rdb_url=jdbc:postgresql://${POSTGRE}" cs-studio/configuration/plugin_customization.ini
sed -i -e '152corg.csstudio.alarm.beast/rdb_user=lnls_alarm_user' cs-studio/configuration/plugin_customization.ini
sed -i -e '153corg.csstudio.alarm.beast/rdb_password=controle' cs-studio/configuration/plugin_customization.ini
sed -i -e "154corg.csstudio.alarm.beast/jms_url=failover:(tcp://${JMS})" cs-studio/configuration/plugin_customization.ini
sed -i -e '155corg.csstudio.alarm.beast.ui.areapanel/hierarchy_level=2' cs-studio/configuration/plugin_customization.ini
sed -i -e '157corg.csstudio.utility.channelfinder/channel_finder_url=http://channelfinder.gov:8080/ChannelFinder/' cs-studio/configuration/plugin_customization.ini
sed -i -e '158corg.csstudio.utility.channelfinder/user=username' cs-studio/configuration/plugin_customization.ini
sed -i -e '159corg.csstudio.utility.channelfinder/password=password' cs-studio/configuration/plugin_customization.ini
sed -i -e "138corg.csstudio.trends.databrowser3/archives=All|1|pbraw://${RETRIEVAL}" cs-studio/configuration/plugin_customization.ini
sed -i -e "117corg.csstudio.email/smtp_host=${SMTP}" cs-studio/configuration/plugin_customization.ini
sed -i -e '41iorg.csstudio.diirt.util.core.preferences/diirt.ca.pure.java=true' cs-studio/configuration/plugin_customization.ini
sed -i -e '42iorg.csstudio.diirt.util.core.preferences/diirt.datasource.default=ca' cs-studio/configuration/plugin_customization.ini
sed -i -e '43iorg.csstudio.diirt.util.core.preferences/diirt.datasource.delimiter=\://' cs-studio/configuration/plugin_customization.ini
