CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `vw_GlobalVaccinationCoverage` AS select `p`.`CountryName` AS `CountryName`,`p`.`CountryCode` AS `CountryCode`,`p`.`Year` AS `Year`,`p`.`VaccineRate` AS `VaccineRate`,`p`.`VaccineCode` AS `VaccineCode`,`p`.`VaccineName` AS `VaccineName` from (select `projectfit5120`.`global-vaccination-coverage`.`Entity` AS `CountryName`,`projectfit5120`.`global-vaccination-coverage`.`Code` AS `CountryCode`,cast(`projectfit5120`.`global-vaccination-coverage`.`Year` as unsigned) AS `Year`,cast(`projectfit5120`.`global-vaccination-coverage`.`BCG (% of one-year-olds immunized)` as decimal(10,0)) AS `VaccineRate`,'BBG' AS `VaccineCode`,'Tuberculosis' AS `VaccineName` from `projectfit5120`.`global-vaccination-coverage` where (`projectfit5120`.`global-vaccination-coverage`.`Code` <> '') union all select `projectfit5120`.`global-vaccination-coverage`.`Entity` AS `CountryName`,`projectfit5120`.`global-vaccination-coverage`.`Code` AS `CountryCode`,cast(`projectfit5120`.`global-vaccination-coverage`.`Year` as unsigned) AS `Year`,cast(`projectfit5120`.`global-vaccination-coverage`.`HepB3 (% of one-year-olds immunized)` as decimal(10,0)) AS `VaccineRate`,'HepB3' AS `VaccineCode`,'Hepatitis B' AS `VaccineName` from `projectfit5120`.`global-vaccination-coverage` where (`projectfit5120`.`global-vaccination-coverage`.`Code` <> '') union all select `projectfit5120`.`global-vaccination-coverage`.`Entity` AS `CountryName`,`projectfit5120`.`global-vaccination-coverage`.`Code` AS `CountryCode`,cast(`projectfit5120`.`global-vaccination-coverage`.`Year` as unsigned) AS `Year`,cast(`projectfit5120`.`global-vaccination-coverage`.`Hib3 (% of one-year-olds immunized)` as decimal(10,0)) AS `VaccineRate`,'Hib' AS `VaccineCode`,'Haemophilus influenzae type b' AS `VaccineName` from `projectfit5120`.`global-vaccination-coverage` where (`projectfit5120`.`global-vaccination-coverage`.`Code` <> '') union all select `projectfit5120`.`global-vaccination-coverage`.`Entity` AS `CountryName`,`projectfit5120`.`global-vaccination-coverage`.`Code` AS `CountryCode`,cast(`projectfit5120`.`global-vaccination-coverage`.`Year` as unsigned) AS `Year`,cast(`projectfit5120`.`global-vaccination-coverage`.`IPV1 (% of one-year-olds immunized)` as decimal(10,0)) AS `VaccineRate`,'IPV1' AS `VaccineCode`,'Poliovirus' AS `VaccineName` from `projectfit5120`.`global-vaccination-coverage` where (`projectfit5120`.`global-vaccination-coverage`.`Code` <> '') union all select `projectfit5120`.`global-vaccination-coverage`.`Entity` AS `CountryName`,`projectfit5120`.`global-vaccination-coverage`.`Code` AS `CountryCode`,cast(`projectfit5120`.`global-vaccination-coverage`.`Year` as unsigned) AS `Year`,cast(`projectfit5120`.`global-vaccination-coverage`.`MCV1 (% of one-year-olds immunized)` as decimal(10,0)) AS `VaccineRate`,'MMR1' AS `VaccineCode`,'Measles-containing-vaccine first-dose' AS `VaccineName` from `projectfit5120`.`global-vaccination-coverage` where (`projectfit5120`.`global-vaccination-coverage`.`Code` <> '') union all select `projectfit5120`.`global-vaccination-coverage`.`Entity` AS `CountryName`,`projectfit5120`.`global-vaccination-coverage`.`Code` AS `CountryCode`,cast(`projectfit5120`.`global-vaccination-coverage`.`Year` as unsigned) AS `Year`,cast(`projectfit5120`.`global-vaccination-coverage`.`PCV3 (% of one-year-olds immunized)` as decimal(10,0)) AS `VaccineRate`,'PCV' AS `VaccineCode`,'Pneumococcal Conjugate' AS `VaccineName` from `projectfit5120`.`global-vaccination-coverage` where (`projectfit5120`.`global-vaccination-coverage`.`Code` <> '') union all select `projectfit5120`.`global-vaccination-coverage`.`Entity` AS `CountryName`,`projectfit5120`.`global-vaccination-coverage`.`Code` AS `CountryCode`,cast(`projectfit5120`.`global-vaccination-coverage`.`Year` as unsigned) AS `Year`,cast(`projectfit5120`.`global-vaccination-coverage`.`Pol3 (% of one-year-olds immunized)` as decimal(10,0)) AS `VaccineRate`,'Pol3' AS `VaccineCode`,'Polio 1 Year Old' AS `VaccineName` from `projectfit5120`.`global-vaccination-coverage` where (`projectfit5120`.`global-vaccination-coverage`.`Code` <> '') union all select `projectfit5120`.`global-vaccination-coverage`.`Entity` AS `CountryName`,`projectfit5120`.`global-vaccination-coverage`.`Code` AS `CountryCode`,cast(`projectfit5120`.`global-vaccination-coverage`.`Year` as unsigned) AS `Year`,cast(`projectfit5120`.`global-vaccination-coverage`.`RCV1 (% of one-year-olds immunized)` as decimal(10,0)) AS `VaccineRate`,'RCV1' AS `VaccineCode`,'Rubella 1 Year Old' AS `VaccineName` from `projectfit5120`.`global-vaccination-coverage` where (`projectfit5120`.`global-vaccination-coverage`.`Code` <> '') union all select `projectfit5120`.`global-vaccination-coverage`.`Entity` AS `CountryName`,`projectfit5120`.`global-vaccination-coverage`.`Code` AS `CountryCode`,cast(`projectfit5120`.`global-vaccination-coverage`.`Year` as unsigned) AS `Year`,cast(`projectfit5120`.`global-vaccination-coverage`.`RotaC (% of one-year-olds immunized)` as decimal(10,0)) AS `VaccineRate`,'RotaC' AS `VaccineCode`,'Rotavirus' AS `VaccineName` from `projectfit5120`.`global-vaccination-coverage` where (`projectfit5120`.`global-vaccination-coverage`.`Code` <> '') union all select `projectfit5120`.`global-vaccination-coverage`.`Entity` AS `CountryName`,`projectfit5120`.`global-vaccination-coverage`.`Code` AS `CountryCode`,cast(`projectfit5120`.`global-vaccination-coverage`.`Year` as unsigned) AS `Year`,cast(`projectfit5120`.`global-vaccination-coverage`.`YFV (% of one-year-olds immunized)` as decimal(10,0)) AS `VaccineRate`,'YFV' AS `VaccineCode`,'Yellow Fever Vaccine' AS `VaccineName` from `projectfit5120`.`global-vaccination-coverage` where (`projectfit5120`.`global-vaccination-coverage`.`Code` <> '') union all select `projectfit5120`.`global-vaccination-coverage`.`Entity` AS `CountryName`,`projectfit5120`.`global-vaccination-coverage`.`Code` AS `CountryCode`,cast(`projectfit5120`.`global-vaccination-coverage`.`Year` as unsigned) AS `Year`,cast(`projectfit5120`.`global-vaccination-coverage`.`DTP3 (% of one-year-olds immunized)` as decimal(10,0)) AS `VaccineRate`,'DTP3' AS `VaccineCode`,'Diphtheria, tetanus, pertussis' AS `VaccineName` from `projectfit5120`.`global-vaccination-coverage` where (`projectfit5120`.`global-vaccination-coverage`.`Code` <> '') union all select `projectfit5120`.`global-vaccination-coverage`.`Entity` AS `CountryName`,`projectfit5120`.`global-vaccination-coverage`.`Code` AS `CountryCode`,cast(`projectfit5120`.`global-vaccination-coverage`.`Year` as unsigned) AS `Year`,cast(`projectfit5120`.`global-vaccination-coverage`.`MCV2 (% of children immunized)` as decimal(10,0)) AS `VaccineRate`,'MMR2' AS `VaccineCode`,'Measles-containing-vaccine second-dose' AS `VaccineName` from `projectfit5120`.`global-vaccination-coverage` where (`projectfit5120`.`global-vaccination-coverage`.`Code` <> '')) `p` where ((`p`.`Year` = 2019) and (`p`.`VaccineCode` not in ('YFV','BBG','MMR2')));
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `vw_HealthcareTrust` AS select `trust-healthcare-vs-vaccine-safety`.`Code` AS `CountryCode`,`trust-healthcare-vs-vaccine-safety`.`Entity` AS `CountryName`,cast(`trust-healthcare-vs-vaccine-safety`.`Year` as unsigned) AS `Year`,cast(`trust-healthcare-vs-vaccine-safety`.`trust doctors and nurses` as decimal(10,0)) AS `DoctorsANursesTrustRate`,cast(`trust-healthcare-vs-vaccine-safety`.`disagree vaccines are safe` as decimal(10,0)) AS `DisagreeVaccineSafeRate`,cast((100 - `trust-healthcare-vs-vaccine-safety`.`disagree vaccines are safe`) as decimal(10,0)) AS `AgreeVaccineSafeRate` from `trust-healthcare-vs-vaccine-safety` where ((`trust-healthcare-vs-vaccine-safety`.`Continent` = '') and (`trust-healthcare-vs-vaccine-safety`.`Code` <> '') and (`trust-healthcare-vs-vaccine-safety`.`Entity` <> 'World'));
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `vw_Side-effects-disease-Vaccine` AS select `Side-effects-disease-Vaccine`.`Vaccine Name` AS `VaccineName`,`Side-effects-disease-Vaccine`.`Disease` AS `Disease`,`Side-effects-disease-Vaccine`.`Effects of Disease` AS `EffectsofDisease`,`Side-effects-disease-Vaccine`.`Side Effects of Vaccination` AS `SideEffectsOfVaccination`,(case when (`Side-effects-disease-Vaccine`.`Vaccine Name` = 'Diphtheria') then 'DTP3' when (`Side-effects-disease-Vaccine`.`Vaccine Name` = 'Pertussis') then 'DTP3' when (`Side-effects-disease-Vaccine`.`Vaccine Name` = 'Tetanus') then 'DTP3' when (`Side-effects-disease-Vaccine`.`Vaccine Name` = 'Poliomyelitis') then 'IPV1' when (`Side-effects-disease-Vaccine`.`Vaccine Name` = 'mumps, Measles, rubella') then 'MMR' when (`Side-effects-disease-Vaccine`.`Vaccine Name` = 'Hepatitis A') then 'HepA' when (`Side-effects-disease-Vaccine`.`Vaccine Name` = 'Hepatitis B') then 'HepB3' when (`Side-effects-disease-Vaccine`.`Vaccine Name` = 'Mumps') then 'MMR' when (`Side-effects-disease-Vaccine`.`Vaccine Name` = 'HIB') then 'Hib' when (`Side-effects-disease-Vaccine`.`Vaccine Name` = 'HPV') then 'HPV' when (`Side-effects-disease-Vaccine`.`Vaccine Name` = 'Measles') then 'MMR' when (`Side-effects-disease-Vaccine`.`Vaccine Name` = 'Rubella') then 'MMR' when (`Side-effects-disease-Vaccine`.`Vaccine Name` = 'Influenza') then 'Influenza' when (`Side-effects-disease-Vaccine`.`Vaccine Name` = 'Meningococcal') then 'MenCCV' when (`Side-effects-disease-Vaccine`.`Vaccine Name` = 'Varicella') then 'Varicella' end) AS `VaccineCode` from `Side-effects-disease-Vaccine`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `vw_TotalDeathByCause` AS select `total-number-of-deaths-by-cause`.`Entity` AS `CountryName`,`total-number-of-deaths-by-cause`.`Code` AS `Code`,cast(`total-number-of-deaths-by-cause`.`Year` as unsigned) AS `Year`,cast(`total-number-of-deaths-by-cause`.`Deaths - Communicable-maternal-neonatal-nutritional diseases` as decimal(10,0)) AS `TotalDeaths_Communicable` from `total-number-of-deaths-by-cause` where ((`total-number-of-deaths-by-cause`.`Code` <> '') and (`total-number-of-deaths-by-cause`.`Entity` <> 'World'));
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `vw_Vaccine10To19` AS select `Vaccine 10-19 years Old`.`Vaccine` AS `Vaccine`,`Vaccine 10-19 years Old`.`Clinicallyrecommended(Funded)` AS `Clinicallyrecommended(Funded)`,`Vaccine 10-19 years Old`.`LinkedTofamilypayments` AS `LinkedTofamilypayments`,`Vaccine 10-19 years Old`.`DosesRequired` AS `DosesRequired`,`Vaccine 10-19 years Old`.`MinIntervalBetweenDose1and2` AS `MinIntervalBetweenDose1and2`,`Vaccine 10-19 years Old`.`MinIntervalBetweenDose2and3` AS `MinIntervalBetweenDose2and3`,(case when (`Vaccine 10-19 years Old`.`Vaccine` in ('dT *','Pertussis')) then 'Diphtheria, Pertussis, Tetanus' when (`Vaccine 10-19 years Old`.`Vaccine` = 'MMR') then 'Mumps, Measles, Rubella' when (`Vaccine 10-19 years Old`.`Vaccine` like 'Poliomyelitis%') then 'Poliomyelitis' when (`Vaccine 10-19 years Old`.`Vaccine` like 'Hepatitis B%') then 'Hepatitis B' when (`Vaccine 10-19 years Old`.`Vaccine` = 'MenCCV') then 'Mningococcal' when (`Vaccine 10-19 years Old`.`Vaccine` like '%Varicella%') then 'Varicella' when (`Vaccine 10-19 years Old`.`Vaccine` like '%Pneumoccocal%') then 'Pneumoccocal' when (`Vaccine 10-19 years Old`.`Vaccine` = 'Hib') then 'Haemophilus influenzae type b' when (`Vaccine 10-19 years Old`.`Vaccine` = 'Rotavirus') then 'Rotavirus' end) AS `VaccineName`,(case when (`Vaccine 10-19 years Old`.`Vaccine` in ('dT *','Pertussis')) then 'DTP3' when (`Vaccine 10-19 years Old`.`Vaccine` = 'MMR') then 'MMR' when (`Vaccine 10-19 years Old`.`Vaccine` like 'Poliomyelitis%') then 'IPV1' when (`Vaccine 10-19 years Old`.`Vaccine` like 'Hepatitis B%') then 'HepB3' when (`Vaccine 10-19 years Old`.`Vaccine` = 'MenCCV') then 'MenCCV' when (`Vaccine 10-19 years Old`.`Vaccine` like '%Varicella%') then 'Varicella' when (`Vaccine 10-19 years Old`.`Vaccine` like '%Pneumoccocal%') then 'PCV' when (`Vaccine 10-19 years Old`.`Vaccine` = 'Hib') then 'Hib' when (`Vaccine 10-19 years Old`.`Vaccine` = 'Rotavirus') then 'RotaC' end) AS `VaccineCode` from `Vaccine 10-19 years Old`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `vw_VaccineOver20` AS select `vaccines-for-refugees-aged-20-years`.`Antigen` AS `Antigen`,`vaccines-for-refugees-aged-20-years`.`Total doses needed` AS `TotalDoses`,`vaccines-for-refugees-aged-20-years`.`Minimal interval between doses` AS `MinInterval`,`vaccines-for-refugees-aged-20-years`.`Notes` AS `Notes`,(case when (`vaccines-for-refugees-aged-20-years`.`Antigen` in ('Pertussis','Diphtheria, tetanus')) then 'Pertussis, Diphtheria, tetanus' when (`vaccines-for-refugees-aged-20-years`.`Antigen` = 'Poliomyelitis') then 'Poliomyelitis' when (`vaccines-for-refugees-aged-20-years`.`Antigen` = 'mumps, Measles, rubella') then 'mumps, Measles, rubella' when (`vaccines-for-refugees-aged-20-years`.`Antigen` = 'Hepatitis B') then 'Hepatitis B' when (`vaccines-for-refugees-aged-20-years`.`Antigen` = 'Varicella') then 'Varicella' end) AS `VaccineName`,(case when (`vaccines-for-refugees-aged-20-years`.`Antigen` in ('Pertussis','Diphtheria, tetanus')) then 'DTP3' when (`vaccines-for-refugees-aged-20-years`.`Antigen` = 'Poliomyelitis') then 'IPV1' when (`vaccines-for-refugees-aged-20-years`.`Antigen` = 'mumps, Measles, rubella') then 'MMR' when (`vaccines-for-refugees-aged-20-years`.`Antigen` = 'Hepatitis B ') then 'HepB' when (`vaccines-for-refugees-aged-20-years`.`Antigen` = 'Varicella') then 'Varicella' end) AS `VaccineCode` from `vaccines-for-refugees-aged-20-years`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `vw_Country` AS select distinct `global-vaccination-coverage`.`Entity` AS `CountryName`,`global-vaccination-coverage`.`Code` AS `CountryCode` from `global-vaccination-coverage` where (`global-vaccination-coverage`.`Code` <> '');
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `vw_Top10CountriesHealthTrust` AS select `vw_HealthcareTrust`.`CountryName` AS `CountryName`,`vw_HealthcareTrust`.`DoctorsANursesTrustRate` AS `DoctorsANursesTrustRate` from `vw_HealthcareTrust` order by `vw_HealthcareTrust`.`DoctorsANursesTrustRate` desc limit 10;CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `vw_CombinedVaccineDescEffects` AS select distinct `p`.`VaccineName` AS `VaccineName`,`p`.`Disease` AS `Description`,`p`.`SideEffectsOfVaccination` AS `SideEffect`,1 AS `VaccineAgeType` from (`vw_Side-effects-disease-Vaccine` `p` join `vw_VaccineOver20` `t` on((`p`.`VaccineCode` = `t`.`VaccineCode`))) union all select distinct `p`.`VaccineName` AS `VaccineName`,`p`.`Disease` AS `Description`,`p`.`SideEffectsOfVaccination` AS `SideEffect`,0 AS `VaccineAgeType` from (`vw_Side-effects-disease-Vaccine` `p` join `vw_Vaccine10To19` `t` on((`p`.`VaccineCode` = `t`.`VaccineCode`)));



