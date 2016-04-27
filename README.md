analytics.muni.org
==================

A project to publish website analytics for the Municipality of Anchorage forked from [analytics.usa.gov](https://github.com/18F/analytics.usa.gov).

For a detailed description of how the site works, read [18F's blog post on analytics.usa.gov](https://18f.gsa.gov/2015/03/19/how-we-built-analytics-usa-gov/).

Other government agencies have reused [analytics.usa.gov](https://github.com/18F/analytics.usa.gov) for their analytics dashboard. [This blog post details their implementations and lessons learned](https://18f.gsa.gov/2016/01/05/tips-for-adapting-analytics-usa-gov/).  

## Setup

### Windows servers

Install [GNU Make for Windows] (http://gnuwin32.sourceforge.net/packages/make.htm) (optional)

Install Ruby using [RubyInstaller for Windows](http://rubyinstaller.org/).

Install [Bundler] (http://bundler.io)

```bash
gem install bundle
```

This app uses [Jekyll](http://jekyllrb.com) to build the site, and [Sass](http://sass-lang.com/), [Bourbon](http://bourbon.io), and [Neat](http://neat.bourbon.io) for CSS. Install them all (from the directory containing the local copy of this github repository):

```bash
bundle install
```

*NOTE: The above items are not required for setup on a production server.*

[`analytics-reporter`](https://github.com/MunicipalityOfAnchorage/analytics-reporter) is the code that powers the analytics dashboard.
Please clone the `analytics-reporter` next to a local copy of this github repository.

### Linux servers

See [analytics.usa.gov README.md] (https://github.com/18F/analytics.usa.gov/blob/18f-pages/README.md) for Linux setup instructions.

## Adding Additional Agencies

See [analytics.usa.gov README.md] (https://github.com/18F/analytics.usa.gov/blob/18f-pages/README.md) for agency setup instructions.

## Developing

Development build using fake data:

```bash
make dev
```

The development settings assume data is available at `/fakedata`. You can change this in `_development.yml`.

## Test

Test build using real data:

```bash
make test
```

This assumes you have already set up `analytics-reporter` in an adjacent directory.

## Production

Set an environment variable for the path to a file share on the production server:

```bash
export ANALYTICS_PROD_SHARE="\\prod_server\share"
```

Production build that deploys to production share:

```bash
make deploy
```

In production, the site's base URL is set to `https://analytics.usa.gov` and the data's base URL is set to `https://analytics.usa.gov/data`.

### Public domain

This project is in the worldwide [public domain](LICENSE.md). As stated in [CONTRIBUTING](CONTRIBUTING.md):

> This project is in the public domain within the United States, and copyright and related rights in the work worldwide are waived through the [CC0 1.0 Universal public domain dedication](https://creativecommons.org/publicdomain/zero/1.0/).
>
> All contributions to this project will be released under the CC0 dedication. By submitting a pull request, you are agreeing to comply with this waiver of copyright interest.
