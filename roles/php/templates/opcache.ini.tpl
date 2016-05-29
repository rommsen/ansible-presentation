; configuration for php ZendOpcache module
; priority=05
zend_extension=opcache.so

; Enable the Opcache
opcache.enable=1

; In MegaBytes, how much memory can it consume?
opcache.memory_consumption=128

; The number of keys/scripts in the Opcache hash table (how many files can it cache?)
opcache.max_accelerated_files=4000

; How often to check script timestamps for updates, in seconds.
; 0 will result in OPcache checking for updates on every request.
opcache.revalidate_freq=60

; If enabled, OPcache will check for updated scripts every
; opcache.revalidate_freq seconds. When this directive is disabled,
; you must reset OPcache manually
opcache.validate_timestamps=1

; If enabled, a fast shutdown sequence is used that doesn't free
; each allocated block, but relies on the Zend Engine memory manager
; to deallocate the entire set of request variables en masse.
opcache.fast_shutdown=1

; Chances are, you won't need this on the CLI
opcache.enable_cli=0

; If enabled, OPcache appends the current working directory to the
; script key, thereby eliminating possible collisions between files
; with the same base name. Disabling this directive improves performance,
; but may break existing applications
opcache.use_cwd=1