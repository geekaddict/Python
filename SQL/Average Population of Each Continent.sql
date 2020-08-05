select country.continent, trunc(avg(city.population)) from
city ,country where city.countrycode=country.code
group by country.continent;