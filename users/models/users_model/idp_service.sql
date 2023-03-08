with idp_users as (
    select * from {{ ref('idp_users') }}
),

service_users as (
    select * from {{ ref('service_users') }}
),

idp_service_users as (
    select iu.emails, iu.mfa from idp_users as iu
    join service_users as su on iu.emails = su.emails
)

select * from idp_service_users
