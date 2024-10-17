select providername,
providerid,
encounteryear as year,
count(medicinecode) as numberofmedicationsprescribed,
sum(num_meds_per_enc) as numberofunitsdispensed
from (select 
STRFTIME('%Y', e.START) as encounteryear,
e.PROVIDER as providerid,
p.NAME as providername,
m.code as medicinecode,
m.dispenses as num_meds_per_enc
from medications m
left join encounters e 
	on e.Id  = m.encounter
left join providers p 
	on p.Id = e.PROVIDER)
group by providername, providerid, encounteryear

--Would run quicker as CTE but wasn't working in sqlite