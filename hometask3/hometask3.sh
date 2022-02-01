# Find and print names of all soft-links on your VM
find / -type l -exec ls -la '{}' \; 1>> /var/softlinks.txt 2> /dev/null

# Find and print count of block and character devices
find / -type b -or -type c | wc -l 1>> /var/bc_count.txt 2> /dev/null

# Find all folders with Sticky bit
find / -type d -perm -1000 -exec ls -ld {} \; 1>> /var/sticky_dirs.txt 2> /dev/null

# Make soft link for /etc/hostname in /tmp folder
ln -s /etc/hostname /tmp/new_host_name

# Create user “testuser”
useradd testuser

# Create file in home directory “testuser_data” owned by “testuser”
touch /home/testuser/testuser_data
chown testuser:testuser /home/testuser/testuser_data