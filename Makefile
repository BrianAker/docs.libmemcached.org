# vim:ft=automake

install: /etc/httpd/conf.d/docs.libmemcached.org.conf
/etc/httpd/conf.d/docs.libmemcached.org.conf:
	@sudo install -m 644 conf/docs.libmemcached.org.conf $@
	@sudo chown root.root $@
	@service httpd restart

/usr/local/share/doc/libmemcached/html/:
	bzr clone lp:libmemcached
	cd libmemcached && ./bootstrap && make install-html
