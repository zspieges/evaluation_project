select
    pt.id as PATIENTID,
    pt.FIRST as FIRSTNAME,
    pt.LAST as LASTNAME,
    pt.GENDER as GENDER,
    e.START as ENCOUNTERSTART,
    e.DESCRIPTION as ENCOUNTERDESCRIPTION,
    e.REASONDESCRIPTION as ENCOUNTERREASONDESCRIPTION,
    prov.NAME as PROVIDERNAME,
    prov.SPECIALITY as PROVIDERSPECIALITY,
    o.NAME as ORGANIZATIONNAME,
    o.ADDRESS as ORGANIZATIONADDRESS,
    o.CITY as ORGANIZATIONCITY,
    o.STATE as ORGANIZATIONSTATE,
    o.ZIP as ORGANIZATIONZIP,
    o.PHONE as ORGANIZATIONPHONE
from
    {{ ref('patients') }} pt
    left join {{ ref('encounters') }} e on pt.Id = e.PATIENT
    left join organizations o on e.ORGANIZATION = o.Id
    left join {{ ref('providers') }} prov on e.PROVIDER = prov.Id