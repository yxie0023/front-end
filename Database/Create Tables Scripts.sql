CREATE TABLE `global-vaccination-coverage` (
  `Entity` text,
  `Code` text,
  `Year` text,
  `BCG (% of one-year-olds immunized)` text,
  `HepB3 (% of one-year-olds immunized)` text,
  `Hib3 (% of one-year-olds immunized)` text,
  `IPV1 (% of one-year-olds immunized)` text,
  `MCV1 (% of one-year-olds immunized)` text,
  `PCV3 (% of one-year-olds immunized)` text,
  `Pol3 (% of one-year-olds immunized)` text,
  `RCV1 (% of one-year-olds immunized)` text,
  `RotaC (% of one-year-olds immunized)` text,
  `YFV (% of one-year-olds immunized)` text,
  `DTP3 (% of one-year-olds immunized)` text,
  `MCV2 (% of children immunized)` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `Overseas migrant arrivals-Australia` (
  `ï»¿Region` text,
  `2013-14` text,
  `2018-19` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `Side-effects-disease-Vaccine` (
  `Vaccine Name` text,
  `Disease` text,
  `Effects of Disease` text,
  `Side Effects of Vaccination` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `trust-healthcare-vs-vaccine-safety` (
  `Entity` text,
  `Code` text,
  `Year` int(11) DEFAULT NULL,
  `trust doctors and nurses` text,
  `disagree vaccines are safe` text,
  `Continent` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `Vaccine 10-19 years Old` (
  `Vaccine` text,
  `Clinicallyrecommended(Funded)` text,
  `LinkedTofamilypayments` text,
  `DosesRequired` text,
  `MinIntervalBetweenDose1and2` text,
  `MinIntervalBetweenDose2and3` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `vaccines-for-refugees-aged-20-years` (
  `Antigen` text,
  `Total doses needed` text,
  `Minimal interval between doses` text,
  `Notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
