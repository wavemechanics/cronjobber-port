# $FreeBSD$

PORTNAME=	cronjobber
DISTVERSION=	1.6.1
CATEGORIES=	sysutils
USE_GITHUB=	yes
GH_ACCOUNT=	wavemechanics
GH_TAGNAME=	4ab9519

MAINTAINER=	dl-ports@perfec.to
COMMENT=	Wrapper for cron scripts
LICENSE=	BSD2CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE.txt

do-build:
	cd ${WRKSRC} && make cronjobber && cp cronjobber.mandoc cronjobber.8

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cronjobber ${STAGEDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/cronjobber.8 ${STAGEDIR}${MANPREFIX}/man/man8

.include <bsd.port.mk>
