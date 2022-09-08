Track [X] Challenge [Y]
================


# Setup

## Dependencies

install `renv`:

```
install.packages("renv")
```

### Install/update dependencies
```
renv::restore()
```

### Adding new dependencies
1. install package as usual (with `install.packages`)
2. run `renv::snapshot()`
3. commit and push the updated `renv.lock`

## Access data
To access the data for this challenge, proceed as follows:

1. Check the Slack channel for the "secret link" for your challenge
2. We'll share the password to decrypt the message on-site 
3. Click on the link and enter the password to decrypt the message
4. Follow the specific instructions for your data below.

### Supabase/Postgres

To connect to the Supabase Postgres database, you need to store your credentials in the `.Renviron` file:

```
# set up passwords in .Renviron
usethis::edit_r_environ()
```

Copy the content from the decrypted secret link. It should look something like this:

```
# logins for supabase
SUPAB_NAME='postgres'
SUPAB_HOST='your-supabase-url' 
SUPAB_PORT='5432'
SUPAB_USER='postgres'
SUPAB_PASSWORD='your-supabase-pw'
```

Run `code/00-connect-postgres.R`

# Developer information

## Definition of Done

Default Definition of Done can be found
[here](https://github.com/CorrelAid/definition-of-done). Adapt if
needed.

