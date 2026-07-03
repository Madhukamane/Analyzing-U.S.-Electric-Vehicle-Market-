CREATE TABLE vehicle(
    state TEXT,
    electric_ev INTEGER,
    phev INTEGER,
    hev INTEGER,
    biodiesel INTEGER,
    ethanol_e85 INTEGER,
    cng INTEGER,
    propane INTEGER,
    hydrogen INTEGER,
    methanol INTEGER,
    gasoline INTEGER,
    diesel INTEGER,
    unknown_fuel INTEGER
);


select * from public.vehicle;

---Find total state

select count(state) as Total_State from vehicle;

---finding null values

select * from vehicle 
where state is null;


---preview the data
select * from vehicle 
limit 5;


----Check zeros Values
select * from vehicle
where electric_ev=0;

--ToTal_Vehicle per state

select state,(electric_ev+ phev + hev + biodiesel + ethanol_e85 + cng + propane+ hydrogen
                  +methanol + gasoline + diesel + unknown_fuel) as Total_Vehicle
from vehicle ;

----Market Share Analysis

---What percentage of vehicles in each state are Electric Vehicles (EVs)

select state ,Round((CAST(electric_ev AS DECIMAL)/(electric_ev+ phev + hev + biodiesel + ethanol_e85 + cng + propane+ hydrogen
                  +methanol + gasoline + diesel + unknown_fuel)*100),2) 
				  as Ev_percentage
from vehicle;				  


--Which are the Top 5 states with the highest EV adoption rate?
		
select state,round(((cast(electric_ev As Decimal)/(electric_ev+ phev + hev + biodiesel + ethanol_e85 + cng + propane+ hydrogen
                  +methanol + gasoline + diesel + unknown_fuel))*100),2)
				as Ev_percentage
from vehicle 
order by Ev_percentage desc 
limit 5;


----Which are the Top 5 states with the highest EV adoption rate?
select state,round(((cast(electric_ev As Decimal)/(electric_ev+ phev + hev + biodiesel + ethanol_e85 + cng + propane+ hydrogen
                  +methanol + gasoline + diesel + unknown_fuel))*100),2)
				as Ev_percentage
from vehicle 
order by Ev_percentage asc
limit 5;



---Compare California, Texas, Florida, and New York by:
--EV %
--PHEV %
--HEV %
--Gasoline %				  


select state,round(((cast(electric_ev As Decimal)/(electric_ev+ phev + hev + biodiesel + ethanol_e85 + cng + propane+ hydrogen
                  +methanol + gasoline + diesel + unknown_fuel))*100),2)
				as Ev_percentage,
			round(((cast(phev As Decimal)/(electric_ev+ phev + hev + biodiesel + ethanol_e85 + cng + propane+ hydrogen
                  +methanol + gasoline + diesel + unknown_fuel))*100),2)
				as Phev_percentage,
			round(((cast(hev As Decimal)/(electric_ev+ phev + hev + biodiesel + ethanol_e85 + cng + propane+ hydrogen
                  +methanol + gasoline + diesel + unknown_fuel))*100),2)
				as hev_percentage,
			round(((cast(gasoline As Decimal)/(electric_ev+ phev + hev + biodiesel + ethanol_e85 + cng + propane+ hydrogen
                  +methanol + gasoline + diesel + unknown_fuel))*100),2)
				as gasoline_percentage	

from vehicle 
where state in ('California', 'Texas', 'Florida',  'New York');


--or---

WITH vehicle_totals AS (
    SELECT
        *,
        (electric_ev + phev + hev + biodiesel + ethanol_e85 + cng +
         propane + hydrogen + methanol + gasoline + diesel + unknown_fuel)
        AS total_vehicles
    FROM vehicle
)
SELECT
    state,
    ROUND(electric_ev * 100.0 / total_vehicles, 2) AS ev_percentage,
    ROUND(phev * 100.0 / total_vehicles, 2) AS phev_percentage,
    ROUND(hev * 100.0 / total_vehicles, 2) AS hev_percentage,
    ROUND(gasoline * 100.0 / total_vehicles, 2) AS gasoline_percentage
FROM vehicle_totals
WHERE state IN ('California', 'Texas', 'Florida', 'New York');


---Which alternative fuels are significant and which are niche?

select sum(electric_ev) as EV,sum(phev) as PHEV,sum(hev) as HEV,
				sum(biodiesel ) as BIODIESEL ,sum(ethanol_e85) as ETHANOL_E85,
				sum(cng) as CNG,sum(propane) as PROPANE,sum(hydrogen) as HYDROGEN,
				sum(methanol) as METHANOL, sum(gasoline) as GASOLINE,
				sum(diesel) as DIESEL
from vehicle;


---top 5 state by gasoline

select state, round(((cast(gasoline As Decimal)/(electric_ev+ phev + hev + biodiesel + ethanol_e85 + cng + propane+ hydrogen
                  +methanol + gasoline + diesel + unknown_fuel))*100),2)
				as gasoline_percentage	
from vehicle	
order by gasoline_percentage desc
limit 5;


--top 5 state by HEV

select state,
round(((cast(hev As Decimal)/(electric_ev+ phev + hev + biodiesel + ethanol_e85 + cng + propane+ hydrogen
                  +methanol + gasoline + diesel + unknown_fuel))*100),2)
				as hev_percentage
from vehicle 
order by hev_percentage desc
limit 5;


---Top 5 state by PHEV
select state,
round(((cast(phev As Decimal)/(electric_ev+ phev + hev + biodiesel + ethanol_e85 + cng + propane+ hydrogen
                  +methanol + gasoline + diesel + unknown_fuel))*100),2)
				as phev_percentage
from vehicle 
order by phev_percentage desc
limit 5;


