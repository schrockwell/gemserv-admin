# gemserv-admin

A few utility scripts, written in Ruby, for setting up and managing multiple virtual hosts on Gemini with `gemserv`.

## Installation

This is on a new Ubuntu 20.x LTS image hosted on DigitalOcean.

```bash
apt install ruby
./install-gemserv
```

## Adding a site

```
./add-site example.com
```

A user account will be created for that hostname - periods are replaced with underscores, e.g. `foo.example.org` will have the user `foo_example_org`. Get the user's public key and stick it in `/home/foo_example_org/.ssh/authorized_keys`.

## Resources

- [gemserv](https://davidtsadler.com/posts/gemini/2021-02-08/how-to-host-your-own-gemini-site-in-the-cloud/)
- [How to Host Your Own Gemini Site in the Cloud](https://davidtsadler.com/posts/gemini/2021-02-08/how-to-host-your-own-gemini-site-in-the-cloud/)