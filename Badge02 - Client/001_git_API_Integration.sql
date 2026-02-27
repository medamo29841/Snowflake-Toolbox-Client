/*****
ROLE - ACCOUNTADMIN
This method works only when installing the application from Snowflake on Github for the repository in question
    https://github.com/apps/snowflakedb
    This handles all the Oath2 requirements

You can use OATH2 without the app, however, it is much more complicated 
*****/

CREATE OR REPLACE API INTEGRATION my_git_integration
    API_PROVIDER = git_https_api
    API_ALLOWED_PREFIXES = ('https://github.com')
    API_USER_AUTHENTICATION = (TYPE = SNOWFLAKE_GITHUB_APP)
    ENABLED = TRUE;

/***************
API Integration for GIT without the app.  get these values from github.

CREATE OR REPLACE API INTEGRATION my_git_api_integration
  API_PROVIDER = git_https_api
  API_ALLOWED_PREFIXES = ('https://example.com/my_account')
  API_USER_AUTHENTICATION = (
    TYPE = OAUTH2
    OAUTH_AUTHORIZATION_ENDPOINT = '<your_oauth_authorization_endpoint>'
    OAUTH_TOKEN_ENDPOINT = '<your_oauth_token_endpoint>'
    OAUTH_CLIENT_ID = '<your_oauth_client_id>'
    OAUTH_CLIENT_SECRET = '<your_oauth_client_secret>'
    OAUTH_ACCESS_TOKEN_VALIDITY = 3600
    OAUTH_REFRESH_TOKEN_VALIDITY = 2592000
    OAUTH_ALLOWED_SCOPES = ( 'read_api', 'read_repository', 'write_repository' )
  )
  ENABLED = TRUE;
***************/