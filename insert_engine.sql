kursiyer

INSERT INTO `mydb`.`kursiyer` (`kursiyer_id`, `kursiyer_ad`, `kursiyer_soyad`, `kayit_tarihi`, `tc`, `d_tarihi`, `cinsiyet`, `telefon`, `e_sinifi`) VALUES (1, 'abdullah', 'elipek', '13.11.2011', 43526218947, '13.11.1990', 'Erkek', 53729291297, 'B');
INSERT INTO `mydb`.`kursiyer` (`kursiyer_id`, `kursiyer_ad`, `kursiyer_soyad`, `kayit_tarihi`, `tc`, `d_tarihi`, `cinsiyet`, `telefon`, `e_sinifi`) VALUES (2, 'suleyman', 'kaba', '24.09.2011', 21985803177, '24.04.1989', 'Erkek', 5326770900, 'E');
INSERT INTO `mydb`.`kursiyer` (`kursiyer_id`, `kursiyer_ad`, `kursiyer_soyad`, `kayit_tarihi`, `tc`, `d_tarihi`, `cinsiyet`, `telefon`, `e_sinifi`) VALUES (3, 'ahmet', 'gokce', '21.03.2010', 32480528879, '18.04.1989', 'Erkek', 5446743979, 'B');
INSERT INTO `mydb`.`kursiyer` (`kursiyer_id`, `kursiyer_ad`, `kursiyer_soyad`, `kayit_tarihi`, `tc`, `d_tarihi`, `cinsiyet`, `telefon`, `e_sinifi`) VALUES (4, 'tugba', 'dinc', '10.12.2010', 54536892081, '23.12.1991', 'Kadin', 5437862433, 'B');
kursiyer
-----------------
calisan

INSERT INTO `mydb`.`calisan` (`calisan_id`, `calisan_adi`, `calisanc_soyadi`, `tc`, `SSN`, `cinsiyet`, `maas`, `telefon`, `calisan_ders_id`) VALUES (1, 'merve', 'caliskan', 34538759075, 34538759075, 'Kadin', 2000, 5448762895, 1);
INSERT INTO `mydb`.`calisan` (`calisan_id`, `calisan_adi`, `calisanc_soyadi`, `tc`, `SSN`, `cinsiyet`, `maas`, `telefon`, `calisan_ders_id`) VALUES (2, 'ahmet', 'varli', 34521896306, 34521896306, 'Erkek', 1800, 5398764807, 1);
INSERT INTO `mydb`.`calisan` (`calisan_id`, `calisan_adi`, `calisanc_soyadi`, `tc`, `SSN`, `cinsiyet`, `maas`, `telefon`, `calisan_ders_id`) VALUES (5, 'sema', 'oynak', 34521896306, 34521896306, 'K', 1800, 5398764807, 2);
INSERT INTO `mydb`.`calisan` (`calisan_id`, `calisan_adi`, `calisanc_soyadi`, `tc`, `SSN`, `cinsiyet`, `maas`, `telefon`, `calisan_ders_id`) VALUES (3, 'guler', 'elipek', 34526427994, 34526427994, 'K', 2400, 5078654639, 2);
INSERT INTO `mydb`.`calisan` (`calisan_id`, `calisan_adi`, `calisanc_soyadi`, `tc`, `SSN`, `cinsiyet`, `maas`, `telefon`, `calisan_ders_id`) VALUES (4, 'can', 'mert', 65743897230, 65743897230, 'E', 2200, 5306579768, 3);
INSERT INTO `mydb`.`calisan` (`calisan_id`, `calisan_adi`, `calisanc_soyadi`, `tc`, `SSN`, `cinsiyet`, `maas`, `telefon`, `calisan_ders_id`) VALUES (5, 'ferhat', 'abk', 45653785467, 45653785467, 'E', 2800, 5434567656, 3);

------------------
ders
INSERT INTO `mydb`.`ders` (`ders_id`, `ders_adi`) VALUES (1, 'Trafik');
INSERT INTO `mydb`.`ders` (`ders_id`, `ders_adi`) VALUES (2, 'Motor');
INSERT INTO `mydb`.`ders` (`ders_id`, `ders_adi`) VALUES (3, 'Saglik');

------------------

ders secimi

INSERT INTO `mydb`.`derssecimi` (`ders_secimi_id`, `kursiyer_kursiyer_id`, `calisan_calisan_id`, `ders_ders_id`) VALUES (1, 1, 1, 1);
INSERT INTO `mydb`.`derssecimi` (`ders_secimi_id`, `kursiyer_kursiyer_id`, `calisan_calisan_id`, `ders_ders_id`) VALUES (2, 1, 5, 2);
INSERT INTO `mydb`.`derssecimi` (`ders_secimi_id`, `kursiyer_kursiyer_id`, `calisan_calisan_id`, `ders_ders_id`) VALUES (3, 2, 2, 1);
INSERT INTO `mydb`.`derssecimi` (`ders_secimi_id`, `kursiyer_kursiyer_id`, `calisan_calisan_id`, `ders_ders_id`) VALUES (4, 2, 4, 3);

--------------

direksiyon egitimi

INSERT INTO `mydb`.`direksiyoneÄŸitimi` (`direksiyon_eÄŸitimi_id`, `arac_no`, `egitim_calisan_id`, `kursiyer_kursiyer_id`) VALUES (1, 1, 1, 1);
INSERT INTO `mydb`.`direksiyoneÄŸitimi` (`direksiyon_eÄŸitimi_id`, `arac_no`, `egitim_calisan_id`, `kursiyer_kursiyer_id`) VALUES (2, 2, 4, 2);
INSERT INTO `mydb`.`direksiyoneÄŸitimi` (`direksiyon_eÄŸitimi_id`, `arac_no`, `egitim_calisan_id`, `kursiyer_kursiyer_id`) VALUES (3, 1, 2, 1);
INSERT INTO `mydb`.`direksiyoneÄŸitimi` (`direksiyon_eÄŸitimi_id`, `arac_no`, `egitim_calisan_id`, `kursiyer_kursiyer_id`) VALUES (4, 3, 3, 2);

----------------

direksiyon sÄ±navÄ±

INSERT INTO `mydb`.`direksiyonsinavi` (`direksiyonsinav_id`, `direksiyonsinav_sonuc`, `calisan_id`, `kursiyer_kursiyer_id`) VALUES (1, 72, 1, 1);
INSERT INTO `mydb`.`direksiyonsinavi` (`direksiyonsinav_id`, `direksiyonsinav_sonuc`, `calisan_id`, `kursiyer_kursiyer_id`) VALUES (2, 65, 3, 2);
------------------

sinav

INSERT INTO `mydb`.`sinav` (`sinav_id`, `kursiyer_sinav_id`, `sinav_calisan_id`, `tarih`, `sinav_ders_id`) VALUES (2, 1, 1, '12-10-2011', 1);
INSERT INTO `mydb`.`sinav` (`sinav_id`, `kursiyer_sinav_id`, `sinav_calisan_id`, `tarih`, `sinav_ders_id`) VALUES (3, 2, 2, '10-10-2011', 1);
INSERT INTO `mydb`.`sinav` (`sinav_id`, `kursiyer_sinav_id`, `sinav_calisan_id`, `tarih`, `sinav_ders_id`) VALUES (4, 2, 3, '13-10-2011', 3);
INSERT INTO `mydb`.`sinav` (`sinav_id`, `kursiyer_sinav_id`, `sinav_calisan_id`, `tarih`, `sinav_ders_id`) VALUES (1, 1, 5, '11-10-2011', 2);

---------------

sonuc

INSERT INTO `mydb`.`sonuc` (`sinav_id`, `sonuc`) VALUES (2, 70);
INSERT INTO `mydb`.`sonuc` (`sinav_id`, `sonuc`) VALUES (1, 75);
INSERT INTO `mydb`.`sonuc` (`sinav_id`, `sonuc`) VALUES (3, 64);
INSERT INTO `mydb`.`sonuc` (`sinav_id`, `sonuc`) VALUES (4, 57);
