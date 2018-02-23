FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:${THISDIR}/u-boot:"
SRC_URI_append_overo := " file://fw_env.config"
SRC_URI_append_overo := " file://0001-omap3_overo-Update-name-of-Filesystem-MTD-partition.patch"

# override the fw_env.config provided by the default recipe
do_install_append_overo () {
	install -m 0644 ${WORKDIR}/fw_env.config ${D}${sysconfdir}/fw_env.config
}
