#!/bin/bash

rm cs-studio/icon.png cs-studio/icon.xpm cs-studio/configuration/org.eclipse.equinox.launcher/se.ess.ics.csstudio.product_4.6.1.7/splash.bmp
rm cs-studio/features/org.csstudio.ess.product.configuration.feature_4.6.1.7/rootfiles/icon.png
cp images/icon.png cs-studio/
cp images/splash.bmp cs-studio/configuration/org.eclipse.equinox.launcher/se.ess.ics.csstudio.product_4.6.1.7/
cp images/icon.xpm cs-studio/
cp images/icon.png cs-studio/features/org.csstudio.ess.product.configuration.feature_4.6.1.7/rootfiles/

