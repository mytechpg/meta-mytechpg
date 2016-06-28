FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " file://6001_mptcp_4.1.21.patch "
#SRC_URI += " file://6002_mptcp.cfg "
SRC_URI += " file://defconfig "

do_kernel_configme_prepend() {
	touch ${WORKDIR}/ANDY_APPEND

}

# netfilter stuff is missing from beaglebone kernel
#SRC_URI_append_linux-raspberry += "file://netfilter.cfg"
#
#do_configure_append_linux-raspberry () {
#	for i in ${S}/../*.cfg; do
#		echo "Adding ${i} to ${S}/.config"
#		cat ${i} >> ${S}/.config
#	done
#
#	yes '' | oe_runmake oldconfig
#}

