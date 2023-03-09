with idp_users as (
    select * from {{ ref('idp_users') }}
),

service_users as (
    select * from {{ ref('service_users') }}
),

idp_service_users as (
    select distinct idp_users.emails, idp_users.mfa from idp_users
    join service_users on service_users.emails = idp_users.emails
)

select * from idp_service_users
