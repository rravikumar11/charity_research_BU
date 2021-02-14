use "C:\Data\charity_data_2.csv"

estat summarize

lmhreg3

reg ceo_salary contributions founder ceo_duration i.degree1 i.gender1 i.state1 i.sector1

estat hettest

reg3 (contributions ceo_salary ceo_duration) (ceo_salary contributions charity_age)

reg3 (contributions ceo_salary charity_age i.state1 i.sector1) (ceo_salary contributions founder ceo_duration i.degree1 i.gender 1 i.state1 i.sector1)

help 2sls

reg3 (contributions ceo_salary charity_age i.state1 i.sector1) (ceo_salary contributions founder ceo_duration i.degree1 i.gender1 i.state1 i.sector1), 2sls

reg3 (contributions ceo_salary charity_age i.state1 i.sector1) (ceo_salary contributions founder ceo_duration i.degree1 i.gender1 i.state1 i.sector1)

bootstrap reg3 (contributions ceo_salary charity_age i.state1 i.sector1) (ceo_salary contributions founder ceo_duration i.degree1 i.gender1 i.state1 i.sector1), trace

scatter contributions ceo_salary

reg3 (contributions ceo_salary charity_age i.state1 i.sector1) (ceo_salary contributions founder ceo_duration i.degree1 i.gender1 i.state1 i.sector1)

reg contributions ceo_salary charity_age i.state1 i.sector1

ivregress 2sls contributions charity_age i.state1 i.sector1 (ceo_salary = i.degree1 i.state1 i.gender1 i.sector1 ceo_duration founder)

ivregress 2sls contributions charity_age i.state1 i.sector1 (ceo_salary = i.degree1 i.gender1 i.sector1 ceo_duration founder)

ivregress 2sls contributions charity_age i.state1 i.sector1 (ceo_salary = i.degree1 i.gender1 ceo_duration founder)

ivregress 2sls contributions charity_age i.state1 i.sector1 (ceo_salary = i.degree1 i.gender1 ceo_duration founder), vce(robust)