select
    prov.NAME as PROVIDERNAME,
    prov.GENDER as PROVIDERGENDER,
    prov.ADDRESS as PROVIDERADDRESS,
    prov.CITY as PROVIDERCITY,
    prov.STATE as PROVIDERSTATE,
    prov.ZIP as PROVIDERZIP,
    prov.SPECIALITY as PROVIDERSPECIALITY,
    o.NAME as ORGANIZATIONNAME
from
{{ ref('providers') }} prov
left join {{ ref('organizations') }} o on prov.ORGANIZATION = o.ID
