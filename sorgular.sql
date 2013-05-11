----1-Adi soyadi verilen kisinin aldigi dersler

select ders_adi from ders where ders_id in (select ders_ders_id from derssecimi where kursiyer_kursiyer_id = (select kursiyer_id from kursiyer where kursiyer_ad = 'abdullah' and kursiyer_soyad = 'elipek'));

----------------------
----2-kursiyerin aldigi derlere giren hocalar
select calisan_adi ,calisanc_soyadi from calisan where calisan_id in (select calisan_calisan_id from derssecimi where kursiyer_kursiyer_id= (select kursiyer_id from kursiyer where kursiyer_ad = 'abdullah' and kursiyer_soyad = 'elipek'));
-----
----3-Trafik dersini alan kursiyerler
select kursiyer_ad,kursiyer_soyad from kursiyer where kursiyer_id in (select kursiyer_kursiyer_id from derssecimi where  ders_ders_id=(select ders_id from ders where ders_adi='Trafik'));
----------------------
----4-kimin direksiyon egitmeni kim ?

select k.kursiyer_ad,k.kursiyer_soyad, c.calisan_adi, c.calisanc_soyadi from kursiyer k inner join `direksiyoneÄŸitimi` d on k.kursiyer_id = d.kursiyer_kursiyer_id inner join calisan c on c.calisan_id = d.egitim_calisan_id;
----------------------
----5-Derslerden geçen kişiler

select (select (select kursiyer_ad from kursiyer where kursiyer.kursiyer_id = sinav.kursiyer_sinav_id) from sinav where sinav.sinav_id = sonuc.sinav_id), sonuc from sonuc where sonuc >= 70 and sinav_id in 
(select sinav_id from sinav where kursiyer_sinav_id in 
(select ders_id from ders));
