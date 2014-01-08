description
==========
This Vagrant Box provides a build system VM for building RPM's. Quick and crude in lieu of using something like OBS or Koji build systems provided by upstream projects.

This VM utilizes the MOCK environments in order to build. See the following to see the mock configurations setup per the bootstrap.sh file.

   ```
   ls /etc/mock/*
   ```

1. Clone this repo.
   ```bash
   git clone URL https://github.com/dkiser/vagrants.git
   ```

2. Navigate to the vagrant area for the builder VM.
   ```bash
    cd rpm-builder
    ```

3. Bring up the rpm-builder VM.
   ```bash
   vagrant up
   ```

4. SSH to the rpm-builder VM.
   ```bash
   vagrant ssh
   ```

5. Clone or Copy over a RPM project to build a source RPM out of.
   ```bash
   git clone <url with .spec and sources>
   ```

6. Copy sources needed to ~/rpmbuild/SOURCES/
   ```bash
   cp <sources> ~/rpmbuild/SOURCES/
   ```

7. Build the SRPM we will use with the MOCK builds.
   ```bash
   rpmbuild -bs <spec filename>.spec
   ```

8. Perform Mock build for Centos6 x86_64
   ```bash
   mock -r epel-6-x86_64 ~/rpmbuild/SRPMS/<spec filename>*.src.rpm
   ```

9. Check out the results of what we built!
   ```bash
   ls /var/lib/mock/*/result/
   ```
