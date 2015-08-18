# Install debi

install-core:
	install -dm755 $(DESTDIR)/usr/bin/
	install -dm755 $(DESTDIR)/usr/share/debi/

	for f in *; do [[ $$f != "plugins" ]] && cp -pr $$f $(DESTDIR)/usr/share/debi/; done

	install -Dpm 0755 debi.exec $(DESTDIR)/usr/bin/debi

	install -Dpm 0644 debi.desktop $(DESTDIR)/usr/share/applications/org.ozonos.debi.desktop
	install -Dpm 0644 debi.appdata.xml $(DESTDIR)/usr/share/appdata/debi.appdata.xml

	install -Dpm 0644 debi.svg $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/debi.svg
	install -Dpm 0644 debi-symbolic.svg $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/debi-symbolic.svg

	install -Dpm 0644 run-as-root.policy $(DESTDIR)/usr/share/polkit-1/actions/org.ozonos.pkexec.run-as-root.policy

	@-if test -z $(DESTDIR); then gtk-update-icon-cache -f -t $(DESTDIR)/usr/share/icons/hicolor; fi


install-plugins:
	install -dm755 $(DESTDIR)/usr/share/debi/plugins

	cp -pr plugins/* $(DESTDIR)/usr/share/debi/plugins/


install: install-core install-plugins


uninstall:
	rm -rf $(DESTDIR)/usr/share/debi/

	rm -f $(DESTDIR)/usr/bin/debi

	rm -f $(DESTDIR)/usr/share/applications/org.ozonos.debi.desktop
	rm -f $(DESTDIR)/usr/share/appdata/debi.appdata.xml

	rm -f $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/debi.svg
	rm -f $(DESTDIR)/usr/share/icons/hicolor/scalable/apps/debi-symbolic.svg

	rm -f $(DESTDIR)/usr/share/polkit-1/actions/org.ozonos.pkexec.run-as-root.policy

	@-if test -z $(DESTDIR); then gtk-update-icon-cache -f -t $(DESTDIR)/usr/share/icons/hicolor; fi
