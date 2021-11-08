# Demo Server Checklist

## Documentation

If you come across this documentation, you likely have a custom plugin deployed: The Demo Server Checklist. That plugin
checks the system's configuration for applicability for shared demo installations. 

It's configurable in a few ways: Checks for newer versions can be deactivated by claiming a newer version for this plugin.
That means: You're configuring the highest version you want to ignore an upgrade to, and the system will assume that the
currently installed version is exactly what you configured. 

Downside: Once you actually configure anything on this page, you'll need to follow up after upgrades: If the claimed
(configured) version is lower than the latest available, no matter how much you upgrade, the plugin will complain.

The other configuration is: If you want to see the plugin reassuring you that it's there once it doesn't have any complaint,
set the checkbox here. Instead of a warning label, it will show a checkmark in ControlMenu.
In both cases it'll show the full checklist once you click on its icon.

## Related Topics

* [System Settings](https://learn.liferay.com/dxp/7.x/en/system-administration/system-settings/system-settings.html)
* [Classic configuration file options: portal.properties](https://docs.liferay.com/portal/7.3-latest/propertiesdoc/portal.properties.html)

## Community Resources

* [Demo Checklist on Alexandria](https://sales.liferay.com/web/library/w/demo-checklist)

### Contribute

[Edit this file on github](https://github.com/olafk/controlpanel-documentation-docs/blob/master/md/74en/com_liferay_configuration_admin_web_portlet_SystemSettingsPortlet/com.liferay.sales.checklist.impl.ChecklistConfiguration.md)
