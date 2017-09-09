# OmniAuth Strava

This is the official OmniAuth strategy for authenticating to GitHub. To
use it, you'll need to sign up for an OAuth2 Application ID and Secret
on the [Strava Applications Page](https://strava.com/developers).

Forked from rubygems.

## Basic Usage

    use OmniAuth::Builder do
      provider :strava, ENV['STRAVA_KEY'], ENV['STRAVA_SECRET']
    end

## Scopes

Strava API v3 lets you set scopes to provide granular access to different types of data:

	use OmniAuth::Builder do
      provider :strava, ENV['STRAVA_KEY'], ENV['STRAVA_SECRET'], scope: "public"
    end

## Auth Hash

Here is an example Auth Hash in `request.env['omniauth.auth']`

    {
      "provider" => "strava",
      "uid" => 12345678,
      "info" => {
        "firstname" => "Strava",
      },
      "credentials" => {
        "token" => "123-321",
        "expires" => false
      },
      "extra" => {
        "raw_info" => {
          "id" => 12345678,
          "firstname" => "Strava Athlete",
        }
      }
    }

More info on [Scopes](http://strava.github.io/api/v3/oauth/).

