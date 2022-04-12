FROM fedora:35

# https://docs.fedoraproject.org/de/package-maintainers/Installing_Packager_Tools/
RUN dnf install -y fedora-packager fedora-review

COPY ./entrypoint.sh /entrypoint.sh
COPY ./hello.spec /hello.spec

ENTRYPOINT [ "/entrypoint.sh" ]