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
4. Open the `.env` / `.Renviron` file - if you don't see either file in your (RStudio) explorer, ask for help
5. Copy the content to the `.Renviron` / `.env` file 
6. Run `code/00-setup.R` 



# Developer information

## Definition of Done

Default Definition of Done can be found
[here](https://github.com/CorrelAid/definition-of-done). Adapt if
needed.

