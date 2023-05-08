## This file contains R codes and functions to clean Turkish Household Labor Force Surveys, 2000-2020.


# Initial clean-up
if(!is.null(dev.list())) dev.off()
cat("\014")
rm(list = ls(all=TRUE)) 

setwd("C:/Users/hamza.mutluay/Dropbox/HIA Cleaning-BETAM R Studio")



library(haven)
library(plyr)
library("plyr")
library(dplyr)
library(tidyverse)




Hia_2000 <- read_dta("C:/Users/hamza.mutluay/Dropbox/HIA/ham_veri/2000.dta")

Hia_2000 <- rename(Hia_2000, c(fertno = s1, birimno = formno ,agirlik_katsayisi  = fakyil,
                               cinsiyet = s3, yas_k = s4, yakinlik = s7, okul_biten_k = s9, okur_yazar = s8,
                               egitim_devam_k = s10, medeni_durum = s11, calisma = s12, calisma_bir_saat = s13,
                               calisma_sahip_is = s14, calismama_neden_ref = s15, isco08_esas_k = s22kod,
                               isteki_durum_k = s23, ekis_durum = s26, nace2_ekis_k = s26kod ,
                               nace2_esas_k = s16kod, isyeri_durum = s18, ara_is_durum = s39,
                               calisan_sayi_hh = s21, kayitlilik = s25, esas_hafsaat_genel = s27a, 
                               esas_fiili = s28a, ekis_fiili = s28b, azcal_neden = s29, isara_durum = s33,
                               isara_basla_durum = s34, isara_sure = s40, gecmis_is = s43,
                               isteki_durum_gecmis = s46, durum = durum, fazlacal_istek = s30,
                               ekis_ara_durum = s31, ekis_ara_neden = s32, isaramama_neden = s37,
                               isco08_ara_k = s38kod, isbasi_issiz = s41, nace2_gecmis_k = s44kod, 
                               isco068_gecmis_k = s45kod,is_ayril_neden = s47))



Hia_2000$referans_yil=2000


keeps <- c("fertno", "birimno", "agirlik_katsayisi", "cinsiyet", "yas_k", "yakinlik",
           "okul_biten_k", "okur_yazar", "egitim_devam_k", "medeni_durum", "calisma",
              "isco08_esas_k","isteki_durum_k", "nace2_esas_k", "durum", 
           "isyeri_durum",  "calisan_sayi_hh","kayitlilik",  "esas_fiili", "ekis_fiili",
             "isara_sure", "isteki_durum_gecmis", "isco08_ara_k","is_ayril_neden", "referans_yil")

Hia_2000 <- Hia_2000[ ,keeps]

save(Hia_2000, file = "Hia_2000.RData")




Hia_2001 <- read_dta("C:/Users/hamza.mutluay/Dropbox/HIA/ham_veri/2001.dta")

Hia_2001 <- rename(Hia_2001, c(fertno = s1, birimno = formno ,agirlik_katsayisi  = fakyil,
                               cinsiyet = s3, yas_k = s4, yakinlik = s7, okul_biten_k = s9, okur_yazar = s8,
                               egitim_devam_k = s10, medeni_durum = s11, calisma = s12, calisma_bir_saat = s13,
                               calisma_sahip_is = s14, calismama_neden_ref = s15, isco08_esas_k = s22kod,
                               isteki_durum_k = s23, ekis_durum = s26, nace2_ekis_k = s26kod ,
                               nace2_esas_k = s16kod, isyeri_durum = s18, ara_is_durum = s39,
                               calisan_sayi_hh = s21, kayitlilik = s25, esas_hafsaat_genel = s27a, 
                               esas_fiili = s28a, ekis_fiili = s28b, azcal_neden = s29, isara_durum = s33,
                               isara_basla_durum = s34, isara_sure = s40, gecmis_is = s43,
                               isteki_durum_gecmis = s46, durum = durum, fazlacal_istek = s30,
                               ekis_ara_durum = s31, ekis_ara_neden = s32, isaramama_neden = s37,
                               isco08_ara_k = s38kod, isbasi_issiz = s41, nace2_gecmis_k = s44kod, 
                               isco068_gecmis_k = s45kod,is_ayril_neden = s47))

Hia_2001$referans_yil=2001

keeps <- c("fertno", "birimno", "agirlik_katsayisi", "cinsiyet", "yas_k", "yakinlik",
           "okul_biten_k", "okur_yazar", "egitim_devam_k", "medeni_durum", "calisma",
           "isco08_esas_k","isteki_durum_k", "nace2_esas_k", "durum", 
           "isyeri_durum",  "calisan_sayi_hh","kayitlilik",  "esas_fiili", "ekis_fiili",
           "isara_sure", "isteki_durum_gecmis", "isco08_ara_k","is_ayril_neden", "referans_yil")

Hia_2001 <- Hia_2001[ ,keeps]
save(Hia_2001, file = "Hia_2001.RData")



Hia_2002 <- read_dta("C:/Users/hamza.mutluay/Dropbox/HIA/ham_veri/2002.dta")

Hia_2002 <- rename(Hia_2002, c(fertno = s1, birimno = formno ,agirlik_katsayisi  = fakyil,
                               cinsiyet = s3, yas_k = s4, yakinlik = s7, okul_biten_k = s9, okur_yazar = s8,
                               egitim_devam_k = s10, medeni_durum = s11, calisma = s12, calisma_bir_saat = s13,
                               calisma_sahip_is = s14, calismama_neden_ref = s15, isco08_esas_k = s22kod,
                               isteki_durum_k = s23, ekis_durum = s26, nace2_ekis_k = s26kod ,
                               nace2_esas_k = s16kod, isyeri_durum = s18, ara_is_durum = s39,
                               calisan_sayi_hh = s21, kayitlilik = s25, esas_hafsaat_genel = s27a, 
                               esas_fiili = s28a, ekis_fiili = s28b, azcal_neden = s29, isara_durum = s33,
                               isara_basla_durum = s34, isara_sure = s40, gecmis_is = s43,
                               isteki_durum_gecmis = s46, durum = durum, fazlacal_istek = s30,
                               ekis_ara_durum = s31, ekis_ara_neden = s32, isaramama_neden = s37,
                               isco08_ara_k = s38kod, isbasi_issiz = s41, nace2_gecmis_k = s44kod, 
                               isco068_gecmis_k = s45kod,is_ayril_neden = s47))

Hia_2002$referans_yil = 2002

keeps <- c("fertno", "birimno", "agirlik_katsayisi", "cinsiyet", "yas_k", "yakinlik",
           "okul_biten_k", "okur_yazar", "egitim_devam_k", "medeni_durum", "calisma",
           "isco08_esas_k","isteki_durum_k", "nace2_esas_k", "durum", 
           "isyeri_durum",  "calisan_sayi_hh","kayitlilik",  "esas_fiili", "ekis_fiili",
           "isara_sure", "isteki_durum_gecmis", "isco08_ara_k","is_ayril_neden", "referans_yil")
Hia_2002 <- Hia_2002[ ,keeps]
save(Hia_2002, file = "Hia_2002.RData")



Hia_2003 <- read_dta("C:/Users/hamza.mutluay/Dropbox/HIA/ham_veri/2003.dta")

Hia_2003 <- rename(Hia_2003, c(fertno = s1, birimno = formno ,agirlik_katsayisi  = fakyil,
                               cinsiyet = s3, yas_k = s4, yakinlik = s7, okul_biten_k = s9, okur_yazar = s8,
                               egitim_devam_k = s10, medeni_durum = s11, calisma = s12, calisma_bir_saat = s13,
                               calisma_sahip_is = s14, calismama_neden_ref = s15, isco08_esas_k = s22kod,
                               isteki_durum_k = s23, ekis_durum = s26, nace2_ekis_k = s26kod ,
                               nace2_esas_k = s16kod, isyeri_durum = s18, ara_is_durum = s39,
                               calisan_sayi_hh = s21, kayitlilik = s25, esas_hafsaat_genel = s27a, 
                               esas_fiili = s28a, ekis_fiili = s28b, azcal_neden = s29, isara_durum = s33,
                               isara_basla_durum = s34, isara_sure = s40, gecmis_is = s43,
                               isteki_durum_gecmis = s46, durum = durum, fazlacal_istek = s30,
                               ekis_ara_durum = s31, ekis_ara_neden = s32, isaramama_neden = s37,
                               isco08_ara_k = s38kod, isbasi_issiz = s41, nace2_gecmis_k = s44kod, 
                               isco068_gecmis_k = s45kod,is_ayril_neden = s47))

Hia_2003$referans_yil = 2003

keeps <- c("fertno", "birimno", "agirlik_katsayisi", "cinsiyet", "yas_k", "yakinlik",
           "okul_biten_k", "okur_yazar", "egitim_devam_k", "medeni_durum", "calisma",
           "isco08_esas_k","isteki_durum_k", "nace2_esas_k", "durum", 
           "isyeri_durum",  "calisan_sayi_hh","kayitlilik",  "esas_fiili", "ekis_fiili",
           "isara_sure", "isteki_durum_gecmis", "isco08_ara_k","is_ayril_neden", "referans_yil")
Hia_2003 <- Hia_2003[ ,keeps]
save(Hia_2003, file = "Hia_2003.RData")


Hia_2004 <- read_dta("C:/Users/hamza.mutluay/Dropbox/HIA/ham_veri/2004.dta")

Hia_2004 <- rename(Hia_2004, c(fertno = s1, birimno = formno, ibbs_1 = nuts1, ibbs_2 = nuts2,
                               agirlik_katsayisi = faktor, cinsiyet = s3, okur_yazar = s9, 
                               ara_is_durum = s83, yas = s6, yas_k = s6_grup, durum = durum,
                               yakinlik = s7, okul_biten_k = s10, egitim_devam_k = s13, 
                               okul_devam_k = s14a, kurs = s16, medeni_durum = s15, 
                               calisma = s21, calisma_bir_saat = s22, calisma_sahip_is = s23, 
                               calismama_neden_ref = s24, isteki_durum_k = s34, 
                               nace2_esas_k = s28kodr2, isyeri_durum = s30,
                               calisan_sayi_hh = s32a, isco08_esas_k = s33kod, kayitlilik = s37,
                               is_baslama_yil = s38a, isbul_yontem = s39, calisma_sekli = s40,
                               is_sureklilik = s42, ekis_durum = s51, nace2_ekis_k = s52kod,
                               esas_hafsaat_genel = s54a, esas_fiili = s56a_top, 
                               ekis_fiili = s56b_top, fazlacal_neden = s57, azcal_neden = s58,
                               fazlacal_istek = s59, ekis_ara_durum = s62, ekis_ara_neden = s63,
                               ara_ekis_durum = s64, gelir_gecenay_k = s69, isara_durum = s77,
                               isara_basla_durum = s80, isco08_ara_k = s82kod, 
                               isaramama_neden = s85, isbasi_issiz = s86, isara_sure = s84,
                               gecmis_is = s89, is_ayril_yil = s90a, is_ayril_ay = s90b,
                               is_ayril_neden = s91, nace2_gecmis_k = s92kod, 
                               isco08_gecmis_k = s93kod,isteki_durum_gecmis = s94,
                               faal_durum_gecenyil = s95, isteki_durum_gecenyil = s97,
                               nace2_gecenyil_k = s96kod, calisma_sekli=s40, faal_durum_gecenyil=s95))

Hia_2004$referans_yil = 2004

keeps <- c("fertno", "birimno", "agirlik_katsayisi", "cinsiyet", "yas_k", "yakinlik",
           "okul_biten_k", "okur_yazar", "egitim_devam_k", "medeni_durum", "calisma",
           "isco08_esas_k","isteki_durum_k", "nace2_esas_k", "durum", 
           "isyeri_durum",  "calisan_sayi_hh","kayitlilik",  "esas_fiili", "ekis_fiili",
           "isara_sure", "isteki_durum_gecmis", "isco08_ara_k","is_ayril_neden", "referans_yil",
           "ibbs_1", "ibbs_2", "yas", "isteki_durum_gecenyil","calisma_sekli","faal_durum_gecenyil",
           "is_sureklilik")
Hia_2004 <- Hia_2004[ ,keeps]
save(Hia_2004, file = "Hia_2004.RData")



Hia_2005 <- read_dta("C:/Users/hamza.mutluay/Dropbox/HIA/ham_veri/2005.dta")

Hia_2005 <- rename(Hia_2005, c(fertno = s1, birimno = formno, ibbs_1 = nuts1, ibbs_2 = nuts2,
                               agirlik_katsayisi = faktor, cinsiyet = s3, okur_yazar = s13, 
                               ara_is_durum = s92, yas = s6, yas_k = s6_grup, durum = durum,
                               yakinlik = s11, okul_biten_k = s14, egitim_devam_k = s17, 
                               okul_devam_k = s18a, kurs = s21, medeni_durum = s19, 
                               calisma = s26, calisma_bir_saat = s27, calisma_sahip_is = s28, 
                               calismama_neden_ref = s29, isteki_durum_k = s39, 
                               nace2_esas_k = s33kodr2, isyeri_durum = s35,
                               calisan_sayi_hh = s37a, isco08_esas_k = s38kod, kayitlilik = s43,
                               is_baslama_yil = s44a, isbul_yontem = s45, calisma_sekli = s46,
                               is_sureklilik = s49, ekis_durum = s58, nace2_ekis_k = s59kod,
                               esas_hafsaat_genel = s61a, esas_fiili = s63a_top, 
                               ekis_fiili = s63b_top, fazlacal_neden = s65, azcal_neden = s66,
                               fazlacal_istek = s67, ekis_ara_durum = s70, ekis_ara_neden = s71,
                               ara_ekis_durum = s72, gelir_gecenay_k = s78, isara_durum = s86,
                               isara_basla_durum = s89, isco08_ara_k = s91kod, 
                               isaramama_neden = s94, isbasi_issiz = s96, isara_sure = s93,
                               gecmis_is = s102, is_ayril_yil = s103a, is_ayril_ay = s103b,
                               is_ayril_neden = s104, nace2_gecmis_k = s105kod, 
                               isco08_gecmis_k = s106kod,isteki_durum_gecmis = s107,
                               faal_durum_gecenyil = s108, isteki_durum_gecenyil = s110,
                               nace2_gecenyil_k = s109kod, calisma_sekli=s46,
                               faal_durum_gecenyil=s108))

Hia_2005$referans_yil = 2005

keeps <- c("fertno", "birimno", "agirlik_katsayisi", "cinsiyet", "yas_k", "yakinlik",
           "okul_biten_k", "okur_yazar", "egitim_devam_k", "medeni_durum", "calisma",
           "isco08_esas_k","isteki_durum_k",   "nace2_esas_k", "durum", 
           "isyeri_durum",  "calisan_sayi_hh","kayitlilik",  "esas_fiili", "ekis_fiili",
           "isara_sure", "isteki_durum_gecmis", "isco08_ara_k","is_ayril_neden", "referans_yil",
           "ibbs_1", "ibbs_2", "yas", "isteki_durum_gecenyil","calisma_sekli","faal_durum_gecenyil","is_sureklilik")
Hia_2005 <- Hia_2005[ ,keeps]
save(Hia_2005, file = "Hia_2005.RData")

Hia_2006 <- read_dta("C:/Users/hamza.mutluay/Dropbox/HIA/ham_veri/2006.dta")

Hia_2006 <- rename(Hia_2006, c(fertno = s1, birimno = formno, ibbs_1 = nuts1, ibbs_2 = nuts2,
                               agirlik_katsayisi = faktor, cinsiyet = s3, okur_yazar = s13, 
                               ara_is_durum = s92, yas = s6, yas_k = s6_grup, durum = durum,
                               yakinlik = s11, okul_biten_k = s14, egitim_devam_k = s17, 
                               okul_devam_k = s18a, kurs = s21, medeni_durum = s19, 
                               calisma = s26, calisma_bir_saat = s27, calisma_sahip_is = s28, 
                               calismama_neden_ref = s29, isteki_durum_k = s39, 
                               nace2_esas_k = s33kodr2, isyeri_durum = s35,
                               calisan_sayi_hh = s37a, isco08_esas_k = s38kod, kayitlilik = s43,
                               is_baslama_yil = s44a, isbul_yontem = s45, calisma_sekli = s46,
                               is_sureklilik = s49, ekis_durum = s58, nace2_ekis_k = s59kod,
                               esas_hafsaat_genel = s61a, esas_fiili = s63a_top, 
                               ekis_fiili = s63b_top, fazlacal_neden = s65, azcal_neden = s66,
                               fazlacal_istek = s67, ekis_ara_durum = s70, ekis_ara_neden = s71,
                               ara_ekis_durum = s72, gelir_gecenay_k = s78, isara_durum = s86,
                               isara_basla_durum = s89, isco08_ara_k = s91kod, 
                               isaramama_neden = s94, isbasi_issiz = s96, isara_sure = s93,
                               gecmis_is = s102, is_ayril_yil = s103a, is_ayril_ay = s103b,
                               is_ayril_neden = s104, nace2_gecmis_k = s105kod, 
                               isco08_gecmis_k = s106kod,isteki_durum_gecmis = s107,
                               faal_durum_gecenyil = s108, isteki_durum_gecenyil = s110,
                               nace2_gecenyil_k = s109kod,calisma_sekli=s46,
                               faal_durum_gecenyil=s108))

Hia_2006$referans_yil = 2006

keeps <- c("fertno", "birimno", "agirlik_katsayisi", "cinsiyet", "yas_k", "yakinlik",
           "okul_biten_k", "okur_yazar", "egitim_devam_k", "medeni_durum", "calisma",
           "isco08_esas_k","isteki_durum_k", "nace2_esas_k", "durum", 
           "isyeri_durum",  "calisan_sayi_hh","kayitlilik",  "esas_fiili", "ekis_fiili",
           "isara_sure", "isteki_durum_gecmis", "isco08_ara_k","is_ayril_neden", "referans_yil",
           "ibbs_1", "ibbs_2", "yas", "isteki_durum_gecenyil","calisma_sekli","faal_durum_gecenyil","is_sureklilik")
Hia_2006 <- Hia_2006[ ,keeps]
save(Hia_2006, file = "Hia_2006.RData")


Hia_2007 <- read_dta("C:/Users/hamza.mutluay/Dropbox/HIA/ham_veri/2007.dta")
Hia_2007 <- rename(Hia_2007, c(fertno = s1, birimno = formno, ibbs_1 = nuts1, ibbs_2 = nuts2,
                               agirlik_katsayisi = faktor, cinsiyet = s3, okur_yazar = s13, 
                               ara_is_durum = s92, yas = s6, yas_k = s6_grup, durum = durum,
                               yakinlik = s11, okul_biten_k = s14, egitim_devam_k = s17, 
                               okul_devam_k = s18a, kurs = s21, medeni_durum = s19, 
                               calisma = s26, calisma_bir_saat = s27, calisma_sahip_is = s28, 
                               calismama_neden_ref = s29, isteki_durum_k = s39, 
                               nace2_esas_k = s33kodr2, isyeri_durum = s35,
                               calisan_sayi_hh = s37a, isco08_esas_k = s38kod, kayitlilik = s43,
                               is_baslama_yil = s44a, isbul_yontem = s45, calisma_sekli = s46,
                               is_sureklilik = s49, ekis_durum = s58, nace2_ekis_k = s59kod,
                               esas_hafsaat_genel = s61a, esas_fiili = s63a_top, 
                               ekis_fiili = s63b_top, fazlacal_neden = s65, azcal_neden = s66,
                               fazlacal_istek = s67, ekis_ara_durum = s70, ekis_ara_neden = s71,
                               ara_ekis_durum = s72, gelir_gecenay_k = s78, isara_durum = s86,
                               isara_basla_durum = s89, isco08_ara_k = s91kod, 
                               isaramama_neden = s94, isbasi_issiz = s96, isara_sure = s93,
                               gecmis_is = s102, is_ayril_yil = s103a, is_ayril_ay = s103b,
                               is_ayril_neden = s104, nace2_gecmis_k = s105kod, 
                               isco08_gecmis_k = s106kod,isteki_durum_gecmis = s107,
                               faal_durum_gecenyil = s108, isteki_durum_gecenyil = s110,
                               nace2_gecenyil_k = s109kod,calisma_sekli=s46,
                               faal_durum_gecenyil=s108))

Hia_2007$referans_yil = 2007

keeps <- c("fertno", "birimno", "agirlik_katsayisi", "cinsiyet", "yas_k", "yakinlik",
           "okul_biten_k", "okur_yazar", "egitim_devam_k", "medeni_durum", "calisma",
           "isco08_esas_k","isteki_durum_k", "nace2_esas_k", "durum", 
           "isyeri_durum",  "calisan_sayi_hh","kayitlilik",  "esas_fiili", "ekis_fiili",
           "isara_sure", "isteki_durum_gecmis", "isco08_ara_k","is_ayril_neden", "referans_yil",
           "ibbs_1", "ibbs_2", "yas", "isteki_durum_gecenyil","calisma_sekli","faal_durum_gecenyil","is_sureklilik")
Hia_2007 <- Hia_2007[ ,keeps]
save(Hia_2007, file = "Hia_2007.RData")


Hia_2008 <- read_dta("C:/Users/hamza.mutluay/Dropbox/HIA/ham_veri/2008.dta")
Hia_2008 <- rename(Hia_2008, c(fertno = s1, birimno = formno, ibbs_1 = nuts1, ibbs_2 = nuts2,
                               agirlik_katsayisi = faktor, cinsiyet = s3, okur_yazar = s13, 
                               ara_is_durum = s92, yas = s6, yas_k = s6_grup, durum = durum,
                               yakinlik = s11, okul_biten_k = s14, egitim_devam_k = s17, 
                               okul_devam_k = s18a, kurs = s21, medeni_durum = s19, 
                               calisma = s26, calisma_bir_saat = s27, calisma_sahip_is = s28, 
                               calismama_neden_ref = s29, isteki_durum_k = s39, 
                               nace2_esas_k = s33kodr2, isyeri_durum = s35,
                               calisan_sayi_hh = s37a, isco08_esas_k = s38kod, kayitlilik = s43,
                               is_baslama_yil = s44a, isbul_yontem = s45, calisma_sekli = s46,
                               is_sureklilik = s49, ekis_durum = s58, nace2_ekis_k = s59kod,
                               esas_hafsaat_genel = s61a, esas_fiili = s63a_top, 
                               ekis_fiili = s63b_top, fazlacal_neden = s65, azcal_neden = s66,
                               fazlacal_istek = s67, ekis_ara_durum = s70, ekis_ara_neden = s71,
                               ara_ekis_durum = s72, gelir_gecenay_k = s78, isara_durum = s86,
                               isara_basla_durum = s89, isco08_ara_k = s91kod, 
                               isaramama_neden = s94, isbasi_issiz = s96, isara_sure = s93,
                               gecmis_is = s102, is_ayril_yil = s103a, is_ayril_ay = s103b,
                               is_ayril_neden = s104, nace2_gecmis_k = s105kod, 
                               isco08_gecmis_k = s106kod,isteki_durum_gecmis = s107,
                               faal_durum_gecenyil = s108, isteki_durum_gecenyil = s110,
                               nace2_gecenyil_k = s109kod,calisma_sekli=s46,
                               faal_durum_gecenyil=s108))

Hia_2008$referans_yil = 2008

keeps <- c("fertno", "birimno", "agirlik_katsayisi", "cinsiyet", "yas_k", "yakinlik",
           "okul_biten_k", "okur_yazar", "egitim_devam_k", "medeni_durum", "calisma",
           "isco08_esas_k","isteki_durum_k", "nace2_esas_k", "durum", 
           "isyeri_durum",  "calisan_sayi_hh","kayitlilik",  "esas_fiili", "ekis_fiili",
           "isara_sure", "isteki_durum_gecmis", "isco08_ara_k","is_ayril_neden", "referans_yil",
           "ibbs_1", "ibbs_2", "yas","isteki_durum_gecenyil","calisma_sekli","faal_durum_gecenyil","is_sureklilik")

Hia_2008 <- Hia_2008[ ,keeps]
save(Hia_2008, file = "Hia_2008.RData")

Hia_2009 <- read_dta("C:/Users/hamza.mutluay/Dropbox/HIA/ham_veri/2009.dta")
Hia_2009 <- rename(Hia_2009, c(fertno = s1, birimno = formno, ibbs_1 = nuts1, ibbs_2 = nuts2,
                               agirlik_katsayisi = faktor, cinsiyet = s3, okur_yazar = s14, 
                               ara_is_durum = s80a, yas = s6, yas_k = s6_grup, durum = durum,
                               yakinlik = s11, okul_biten_k = s13, egitim_devam_k = s17, 
                               okul_devam_k = s18, kurs = s21, medeni_durum = s24, 
                               calisma = s26, calisma_bir_saat = s27, calisma_sahip_is = s28, 
                               calismama_neden_ref = s29, isteki_durum_k = s39, 
                               nace2_esas_k = s33kodr2, isyeri_durum = s35,
                               calisan_sayi_hh = s37a, isco08_esas_k = s38kod, kayitlilik = s42,
                               is_baslama_yil = s43a, isbul_yontem = s44, calisma_sekli = s45,
                               is_sureklilik = s48,  nace2_ekis_k = s53kod,
                               esas_hafsaat_genel = s55a, esas_fiili = s56a_top, 
                               ekis_fiili = s56b_top, fazlacal_neden = s57, azcal_neden = s58,
                               fazlacal_istek = s60a, ekis_ara_durum = s62, ekis_ara_neden = s63,
                               ara_ekis_durum = s64a, gelir_gecenay_k = s69, isara_durum = s75,
                               isara_basla_durum = s77, isco08_ara_k = s79kod, 
                               isaramama_neden = s83, isbasi_issiz = s85, isara_sure = s81,
                               gecmis_is = s91, is_ayril_yil = s92a, is_ayril_ay = s92b,
                               is_ayril_neden = s93, nace2_gecmis_k = s94kod, 
                               isco08_gecmis_k = s95kod,isteki_durum_gecmis = s96,
                               faal_durum_gecenyil = s97, isteki_durum_gecenyil = s99,
                               nace2_gecenyil_k = s98kod, ekis_durum = s52, ozel_kamu=s34
                               ,calisma_sekli=s45,faal_durum_gecenyil=s97))

Hia_2009$referans_yil = 2009

keeps <- c("fertno", "birimno", "agirlik_katsayisi", "cinsiyet", "yas_k", "yakinlik",
           "okul_biten_k", "okur_yazar", "egitim_devam_k", "medeni_durum", "calisma",
           "isco08_esas_k","isteki_durum_k", "nace2_esas_k", "durum", 
           "isyeri_durum",  "calisan_sayi_hh","kayitlilik",  "esas_fiili", "ekis_fiili",
           "isara_sure", "isteki_durum_gecmis", "isco08_ara_k","is_ayril_neden", "referans_yil",
           "ibbs_1", "ibbs_2", "yas","isteki_durum_gecenyil", "ozel_kamu","calisma_sekli",
           "faal_durum_gecenyil","is_sureklilik")

Hia_2009 <- Hia_2009[ ,keeps]
save(Hia_2009, file = "Hia_2009.RData")

Hia_2010 <- read_dta("C:/Users/hamza.mutluay/Dropbox/HIA/ham_veri/2010.dta")
Hia_2010 <- rename(Hia_2010, c(fertno = s1, birimno = formno, ibbs_1 = nuts1, ibbs_2 = nuts2,
                               agirlik_katsayisi = faktor, cinsiyet = s3, okur_yazar = s14, 
                               ara_is_durum = s80a, yas = s6, yas_k = s6_grup, durum = durum,
                               yakinlik = s11, okul_biten_k = s13, egitim_devam_k = s17, 
                               okul_devam_k = s18, kurs = s21, medeni_durum = s24, 
                               calisma = s26, calisma_bir_saat = s27, calisma_sahip_is = s28, 
                               calismama_neden_ref = s29, isteki_durum_k = s39, 
                               nace2_esas_k = s33kod, isyeri_durum = s35,
                               calisan_sayi_hh = s37a, isco08_esas_k = s38kod, kayitlilik = s42,
                               is_baslama_yil = s43a, isbul_yontem = s44, calisma_sekli = s45,
                               is_sureklilik = s48, ekis_durum = s52, nace2_ekis_k = s53kod,
                               esas_hafsaat_genel = s55a, esas_fiili = s56a_top, 
                               ekis_fiili = s56b_top, fazlacal_neden = s57, azcal_neden = s58,
                               fazlacal_istek = s60a, ekis_ara_durum = s62, ekis_ara_neden = s63,
                               ara_ekis_durum = s64a, gelir_gecenay_k = s69, isara_durum = s75,
                               isara_basla_durum = s77, isco08_ara_k = s79kod, 
                               isaramama_neden = s83, isbasi_issiz = s85, isara_sure = s81,
                               gecmis_is = s91, is_ayril_yil = s92a, is_ayril_ay = s92b,
                               is_ayril_neden = s93, nace2_gecmis_k = s94kod, 
                               isco08_gecmis_k = s95kod,isteki_durum_gecmis = s96,
                               faal_durum_gecenyil = s97, isteki_durum_gecenyil = s99,
                               nace2_gecenyil_k = s98kod,ozel_kamu=s34,calisma_sekli=s45,
                               faal_durum_gecenyil=s97))

Hia_2010$referans_yil = 2010

keeps <- c("fertno", "birimno", "agirlik_katsayisi", "cinsiyet", "yas_k", "yakinlik",
           "okul_biten_k", "okur_yazar", "egitim_devam_k", "medeni_durum", "calisma",
           "isco08_esas_k","isteki_durum_k", "nace2_esas_k", "durum", 
           "isyeri_durum",  "calisan_sayi_hh","kayitlilik",  "esas_fiili", "ekis_fiili",
           "isara_sure", "isteki_durum_gecmis", "isco08_ara_k","is_ayril_neden", "referans_yil",
           "ibbs_1", "ibbs_2", "yas","isteki_durum_gecenyil","ozel_kamu","calisma_sekli",
           "faal_durum_gecenyil","is_sureklilik")

Hia_2010 <- Hia_2010[ ,keeps]
save(Hia_2010, file = "Hia_2010.RData")

Hia_2011 <- read_dta("C:/Users/hamza.mutluay/Dropbox/HIA/ham_veri/2011.dta")
Hia_2011 <- rename(Hia_2011, c(fertno = s1, birimno = formno, ibbs_1 = nuts1, ibbs_2 = nuts2,
                               agirlik_katsayisi = faktor, cinsiyet = s3, okur_yazar = s14, 
                               ara_is_durum = s80a, yas = s6, yas_k = s6_grup, durum = durum,
                               yakinlik = s11, okul_biten_k = s13, egitim_devam_k = s17, 
                               okul_devam_k = s18, kurs = s21, medeni_durum = s24, 
                               calisma = s26, calisma_bir_saat = s27, calisma_sahip_is = s28, 
                               calismama_neden_ref = s29, isteki_durum_k = s39, 
                               nace2_esas_k = s33kod, isyeri_durum = s35,
                               calisan_sayi_hh = s37a, isco08_esas_k = s38kod, kayitlilik = s42,
                               is_baslama_yil = s43a, isbul_yontem = s44, calisma_sekli = s45,
                               is_sureklilik = s48, ekis_durum = s52, nace2_ekis_k = s53kod,
                               esas_hafsaat_genel = s55a, esas_fiili = s56a_top, 
                               ekis_fiili = s56b_top, fazlacal_neden = s57, azcal_neden = s58,
                               fazlacal_istek = s60a, ekis_ara_durum = s62, ekis_ara_neden = s63,
                               ara_ekis_durum = s64a, gelir_gecenay_k = s69, isara_durum = s75,
                               isara_basla_durum = s77, isco08_ara_k = s79kod, 
                               isaramama_neden = s83, isbasi_issiz = s85, isara_sure = s81,
                               gecmis_is = s91, is_ayril_yil = s92a, is_ayril_ay = s92b,
                               is_ayril_neden = s93, nace2_gecmis_k = s94kod, 
                               isco08_gecmis_k = s95kod,isteki_durum_gecmis = s96,
                               faal_durum_gecenyil = s97, isteki_durum_gecenyil = s99,
                               nace2_gecenyil_k = s98kod,ozel_kamu=s34,calisma_sekli=s45,
                               faal_durum_gecenyil=s97))

Hia_2011$referans_yil = 2011

keeps <- c("fertno", "birimno", "agirlik_katsayisi", "cinsiyet", "yas_k", "yakinlik",
           "okul_biten_k", "okur_yazar", "egitim_devam_k", "medeni_durum", "calisma",
           "isco08_esas_k","isteki_durum_k", "nace2_esas_k", "durum", 
           "isyeri_durum",  "calisan_sayi_hh","kayitlilik",  "esas_fiili", "ekis_fiili",
           "isara_sure", "isteki_durum_gecmis", "isco08_ara_k","is_ayril_neden", "referans_yil",
           "ibbs_1", "ibbs_2", "yas","isteki_durum_gecenyil","ozel_kamu","calisma_sekli",
           "faal_durum_gecenyil","is_sureklilik")

Hia_2011 <- Hia_2011[ ,keeps]
save(Hia_2011, file = "Hia_2011.RData")

Hia_2012 <- read_dta("C:/Users/hamza.mutluay/Dropbox/HIA/ham_veri/2012.dta")
Hia_2012 <- rename(Hia_2012, c(fertno = s1, birimno = formno, ibbs_1 = nuts1, ibbs_2 = nuts2,
                               agirlik_katsayisi = faktor, cinsiyet = s3, okur_yazar = s14, 
                               ara_is_durum = s80a, yas = s6, yas_k = s6_grup, durum = durum,
                               yakinlik = s11, okul_biten_k = s13, egitim_devam_k = s17, 
                               okul_devam_k = s18, kurs = s21, medeni_durum = s24, 
                               calisma = s26, calisma_bir_saat = s27, calisma_sahip_is = s28, 
                               calismama_neden_ref = s29, isteki_durum_k = s39, 
                               nace2_esas_k = s33kod, isyeri_durum = s35,
                               calisan_sayi_hh = s37a, isco08_esas_k = s38kod08, kayitlilik = s42,
                               is_baslama_yil = s43a, isbul_yontem = s44, calisma_sekli = s45,
                               is_sureklilik = s48, ekis_durum = s52, nace2_ekis_k = s53kod,
                               esas_hafsaat_genel = s55a, esas_fiili = s56a_top, 
                               ekis_fiili = s56b_top, fazlacal_neden = s57, azcal_neden = s58,
                               fazlacal_istek = s60a, ekis_ara_durum = s62, ekis_ara_neden = s63,
                               ara_ekis_durum = s64a, gelir_gecenay_k = s69, isara_durum = s75,
                               isara_basla_durum = s77, isco08_ara_k = s79kod, 
                               isaramama_neden = s83, isbasi_issiz = s85, isara_sure = s81,
                               gecmis_is = s91, is_ayril_yil = s92a, is_ayril_ay = s92b,
                               is_ayril_neden = s93, nace2_gecmis_k = s94kod, 
                               isco08_gecmis_k = s95kod,isteki_durum_gecmis = s96,
                               faal_durum_gecenyil = s97, isteki_durum_gecenyil = s99,
                               nace2_gecenyil_k = s98kod,ozel_kamu=s34,calisma_sekli=s45,
                               faal_durum_gecenyil=s97))

Hia_2012$referans_yil = 2012

keeps <- c("fertno", "birimno", "agirlik_katsayisi", "cinsiyet", "yas_k", "yakinlik",
           "okul_biten_k", "okur_yazar", "egitim_devam_k", "medeni_durum", "calisma",
           "isco08_esas_k","isteki_durum_k", "nace2_esas_k", "durum", 
           "isyeri_durum",  "calisan_sayi_hh","kayitlilik",  "esas_fiili", "ekis_fiili",
           "isara_sure", "isteki_durum_gecmis", "isco08_ara_k","is_ayril_neden", "referans_yil",
           "ibbs_1", "ibbs_2", "yas","isteki_durum_gecenyil","ozel_kamu","calisma_sekli",
           "faal_durum_gecenyil","is_sureklilik")
Hia_2012 <- Hia_2012[ ,keeps]
save(Hia_2012, file = "Hia_2012.RData")

Hia_2013 <- read_dta("C:/Users/hamza.mutluay/Dropbox/HIA/ham_veri/2013.dta")
Hia_2013 <- rename(Hia_2013, c(fertno = s1, birimno = formno, ibbs_1 = nuts1, ibbs_2 = nuts2,
                               agirlik_katsayisi = faktor, cinsiyet = s3, okur_yazar = s14, 
                               ara_is_durum = s80a, yas = s6, yas_k = s6_grup, durum = durum,
                               yakinlik = s11, okul_biten_k = s13, egitim_devam_k = s17, 
                               okul_devam_k = s18, kurs = s21, medeni_durum = s24, 
                               calisma = s26, calisma_bir_saat = s27, calisma_sahip_is = s28, 
                               calismama_neden_ref = s29, isteki_durum_k = s39, 
                               nace2_esas_k = s33kod, isyeri_durum = s35,
                               calisan_sayi_hh = s37a, isco08_esas_k = s38kod, kayitlilik = s42,
                               is_baslama_yil = s43a, isbul_yontem = s44, calisma_sekli = s45,
                               is_sureklilik = s48, ekis_durum = s52, nace2_ekis_k = s53kod,
                               esas_hafsaat_genel = s55a, esas_fiili = s56a_top, 
                               ekis_fiili = s56b_top, fazlacal_neden = s57, azcal_neden = s58,
                               fazlacal_istek = s60a, ekis_ara_durum = s62, ekis_ara_neden = s63,
                               ara_ekis_durum = s64a, gelir_gecenay_k = s69, isara_durum = s75,
                               isara_basla_durum = s77, isco08_ara_k = s79kod, 
                               isaramama_neden = s83, isbasi_issiz = s85, isara_sure = s81,
                               gecmis_is = s91, is_ayril_yil = s92a, is_ayril_ay = s92b,
                               is_ayril_neden = s93, nace2_gecmis_k = s94kod, 
                               isco08_gecmis_k = s95kod,isteki_durum_gecmis = s96,
                               faal_durum_gecenyil = s97, isteki_durum_gecenyil = s99,
                               nace2_gecenyil_k = s98kod,ozel_kamu=s34,calisma_sekli=s45,
                               faal_durum_gecenyil=s97))

Hia_2013$referans_yil = 2013 

keeps <- c("fertno", "birimno", "agirlik_katsayisi", "cinsiyet", "yas_k", "yakinlik",
           "okul_biten_k", "okur_yazar", "egitim_devam_k", "medeni_durum", "calisma",
           "isco08_esas_k","isteki_durum_k", "nace2_esas_k", "durum", 
           "isyeri_durum",  "calisan_sayi_hh","kayitlilik",  "esas_fiili", "ekis_fiili",
           "isara_sure", "isteki_durum_gecmis", "isco08_ara_k","is_ayril_neden", "referans_yil",
           "ibbs_1", "ibbs_2", "yas","isteki_durum_gecenyil","ozel_kamu","calisma_sekli",
           "faal_durum_gecenyil","is_sureklilik")

Hia_2013 <- Hia_2013[ ,keeps]
save(Hia_2013, file = "Hia_2013.RData")


Hia_2014 <- read_dta("C:/Users/hamza.mutluay/Dropbox/HIA/ham_veri/2014.dta")

Hia_2014$referans_yil = 2014

Hia_2014$ibbs_1 <- revalue(Hia_2014$ibbs_1, c("TR1"="1", "TR2"="2", "TR3"="3",
                                              "TR4"="4","TR5"="5","TR6"="6",
                                              "TR7"="7", "TR8"="8","TR9"="9",
                                              "TRA"="10", "TRB"="11", "TRC"="12"))

Hia_2014$ibbs_1 <- as.numeric(Hia_2014$ibbs_1)

Hia_2014$ibbs_2 <- revalue(Hia_2014$ibbs_2, c("TR10" = "1", "TR21"="2", "TR22"="3",
                                              "TR31"="4","TR32"="5","TR33"="6","TR41"="7",
                                              "TR42"="8","TR51"="9","TR52"="10",
                                              "TR61"="11", "TR62"="12","TR63"="13",
                                              "TR71"="14","TR72"="15", "TR81"="16","TR82"="17",
                                              "TR83"="18","TR90"="19","TRA1"="20","TRA2"="21",
                                              "TRB1"="22","TRB2"="23","TRC1"="24","TRC2"="25","TRC3"="26"))
Hia_2014$ibbs_2 <- as.numeric(Hia_2014$ibbs_2)

keeps <- c("fertno", "birimno", "agirlik_katsayisi", "cinsiyet", "yas_k", "yakinlik",
           "okul_biten_k", "okur_yazar", "egitim_devam_k", "medeni_durum", "calisma",
           "isco08_esas_k","isteki_durum_k", "nace2_esas_k", "durum", 
           "isyeri_durum",  "calisan_sayi_hh","kayitlilik",  "esas_fiili", "ekis_fiili",
           "isara_sure", "isteki_durum_gecmis", "isco08_ara_k","is_ayril_neden", "referans_yil",
           "ibbs_1", "ibbs_2", "yas","isteki_durum_gecenyil","ozel_kamu","calisma_sekli","ido_neden",
           "faal_durum_gecenyil","is_sureklilik")

Hia_2014 <- Hia_2014[ ,keeps]
save(Hia_2014, file = "Hia_2014.RData")


Hia_2015 <- read_dta("C:/Users/hamza.mutluay/Dropbox/HIA/ham_veri/2015.dta")

Hia_2015$referans_yil = 2015

Hia_2015$ibbs_1 <- revalue(Hia_2015$ibbs_1, c("TR1"="1", "TR2"="2", "TR3"="3",
                                              "TR4"="4","TR5"="5","TR6"="6",
                                              "TR7"="7", "TR8"="8","TR9"="9",
                                              "TRA"="10", "TRB"="11", "TRC"="12"))

Hia_2015$ibbs_1 <- as.numeric(Hia_2015$ibbs_1)

Hia_2015$ibbs_2 <- revalue(Hia_2015$ibbs_2, c("TR10" = "1", "TR21"="2", "TR22"="3",
                                              "TR31"="4","TR32"="5","TR33"="6","TR41"="7",
                                              "TR42"="8","TR51"="9","TR52"="10",
                                              "TR61"="11", "TR62"="12","TR63"="13",
                                              "TR71"="14","TR72"="15", "TR81"="16","TR82"="17",
                                              "TR83"="18","TR90"="19","TRA1"="20","TRA2"="21",
                                              "TRB1"="22","TRB2"="23","TRC1"="24","TRC2"="25","TRC3"="26"))
Hia_2015$ibbs_2 <- as.numeric(Hia_2015$ibbs_2)


keeps <- c("fertno", "birimno", "agirlik_katsayisi", "cinsiyet", "yas_k", "yakinlik",
           "okul_biten_k", "okur_yazar", "egitim_devam_k", "medeni_durum", "calisma",
           "isco08_esas_k","isteki_durum_k",   "nace2_esas_k", "durum", 
           "isyeri_durum",  "calisan_sayi_hh","kayitlilik",  "esas_fiili", "ekis_fiili",
           "isara_sure", "isteki_durum_gecmis", "isco08_ara_k","is_ayril_neden", "referans_yil",
           "ibbs_1", "ibbs_2", "yas","isteki_durum_gecenyil","ozel_kamu","calisma_sekli","ido_neden",
           "faal_durum_gecenyil","is_sureklilik")

Hia_2015 <- Hia_2015[ ,keeps]

save(Hia_2015, file = "Hia_2015.RData")



Hia_2016 <- read_dta("C:/Users/hamza.mutluay/Dropbox/HIA/ham_veri/2016.dta")

Hia_2016$referans_yil = 2016

Hia_2016$ibbs_1 <- revalue(Hia_2016$ibbs_1, c("TR1"="1", "TR2"="2", "TR3"="3",
                                              "TR4"="4","TR5"="5","TR6"="6",
                                              "TR7"="7", "TR8"="8","TR9"="9",
                                              "TRA"="10", "TRB"="11", "TRC"="12"))

Hia_2016$ibbs_1 <- as.numeric(Hia_2016$ibbs_1)

Hia_2016$ibbs_2 <- revalue(Hia_2016$ibbs_2, c("TR10" = "1", "TR21"="2", "TR22"="3",
                                              "TR31"="4","TR32"="5","TR33"="6","TR41"="7",
                                              "TR42"="8","TR51"="9","TR52"="10",
                                              "TR61"="11", "TR62"="12","TR63"="13",
                                              "TR71"="14","TR72"="15", "TR81"="16","TR82"="17",
                                              "TR83"="18","TR90"="19","TRA1"="20","TRA2"="21",
                                              "TRB1"="22","TRB2"="23","TRC1"="24","TRC2"="25","TRC3"="26"))
Hia_2016$ibbs_2 <- as.numeric(Hia_2016$ibbs_2)



keeps <- c("fertno", "birimno", "agirlik_katsayisi", "cinsiyet", "yas_k", "yakinlik",
           "okul_biten_k", "okur_yazar", "egitim_devam_k", "medeni_durum", "calisma",
           "isco08_esas_k","isteki_durum_k",   "nace2_esas_k", "durum", 
           "isyeri_durum",  "calisan_sayi_hh","kayitlilik",  "esas_fiili", "ekis_fiili",
           "isara_sure", "isteki_durum_gecmis", "isco08_ara_k","is_ayril_neden", "referans_yil",
           "ibbs_1", "ibbs_2", "yas","isteki_durum_gecenyil","ozel_kamu","calisma_sekli","ido_neden",
           "faal_durum_gecenyil","is_sureklilik")

Hia_2016 <- Hia_2016[ ,keeps]

save(Hia_2016, file = "Hia_2016.RData")


Hia_2017 <- read_dta("C:/Users/hamza.mutluay/Dropbox/HIA/ham_veri/2017.dta")

Hia_2017$referans_yil = 2017

Hia_2017$ibbs_1 <- revalue(Hia_2017$ibbs_1, c("TR1"="1", "TR2"="2", "TR3"="3",
                                              "TR4"="4","TR5"="5","TR6"="6",
                                              "TR7"="7", "TR8"="8","TR9"="9",
                                              "TRA"="10", "TRB"="11", "TRC"="12"))

Hia_2017$ibbs_1 <- as.numeric(Hia_2017$ibbs_1)

Hia_2017$ibbs_2 <- revalue(Hia_2017$ibbs_2, c("TR10" = "1", "TR21"="2", "TR22"="3",
                                              "TR31"="4","TR32"="5","TR33"="6","TR41"="7",
                                              "TR42"="8","TR51"="9","TR52"="10",
                                              "TR61"="11", "TR62"="12","TR63"="13",
                                              "TR71"="14","TR72"="15", "TR81"="16","TR82"="17",
                                              "TR83"="18","TR90"="19","TRA1"="20","TRA2"="21",
                                              "TRB1"="22","TRB2"="23","TRC1"="24","TRC2"="25","TRC3"="26"))
Hia_2017$ibbs_2 <- as.numeric(Hia_2017$ibbs_2)



keeps <- c("fertno", "birimno", "agirlik_katsayisi", "cinsiyet", "yas_k", "yakinlik",
           "okul_biten_k", "okur_yazar", "egitim_devam_k", "medeni_durum", "calisma",
           "isco08_esas_k","isteki_durum_k", "nace2_esas_k", "durum", 
           "isyeri_durum",  "calisan_sayi_hh","kayitlilik",  "esas_fiili", "ekis_fiili",
           "isara_sure", "isteki_durum_gecmis", "isco08_ara_k","is_ayril_neden", "referans_yil",
           "ibbs_1", "ibbs_2", "yas","isteki_durum_gecenyil","ozel_kamu","calisma_sekli","ido_neden",
           "faal_durum_gecenyil","is_sureklilik")

Hia_2017 <- Hia_2017[ ,keeps]

save(Hia_2017, file = "Hia_2017.RData")


Hia_2018 <- read_dta("C:/Users/hamza.mutluay/Dropbox/HIA/ham_veri/2018.dta")

Hia_2018$referans_yil = 2018

Hia_2018$ibbs_1 <- revalue(Hia_2018$ibbs_1, c("TR1"="1", "TR2"="2", "TR3"="3",
                                              "TR4"="4","TR5"="5","TR6"="6",
                                              "TR7"="7", "TR8"="8","TR9"="9",
                                              "TRA"="10", "TRB"="11", "TRC"="12"))

Hia_2018$ibbs_1 <- as.numeric(Hia_2018$ibbs_1)

Hia_2018$ibbs_2 <- revalue(Hia_2018$ibbs_2, c("TR10" = "1", "TR21"="2", "TR22"="3",
                                              "TR31"="4","TR32"="5","TR33"="6","TR41"="7",
                                              "TR42"="8","TR51"="9","TR52"="10",
                                              "TR61"="11", "TR62"="12","TR63"="13",
                                              "TR71"="14","TR72"="15", "TR81"="16","TR82"="17",
                                              "TR83"="18","TR90"="19","TRA1"="20","TRA2"="21",
                                              "TRB1"="22","TRB2"="23","TRC1"="24","TRC2"="25","TRC3"="26"))
Hia_2018$ibbs_2 <- as.numeric(Hia_2018$ibbs_2)

keeps <- c("fertno", "birimno", "agirlik_katsayisi", "cinsiyet", "yas_k", "yakinlik",
           "okul_biten_k", "okur_yazar", "egitim_devam_k", "medeni_durum", "calisma",
           "isco08_esas_k","isteki_durum_k",   "nace2_esas_k", "durum", 
           "isyeri_durum",  "calisan_sayi_hh","kayitlilik",  "esas_fiili", "ekis_fiili",
           "isara_sure", "isteki_durum_gecmis", "isco08_ara_k","is_ayril_neden", "referans_yil",
           "ibbs_1", "ibbs_2", "yas","isteki_durum_gecenyil","ozel_kamu","calisma_sekli","ido_neden",
           "faal_durum_gecenyil","is_sureklilik")

Hia_2018 <- Hia_2018[ ,keeps]
save(Hia_2018, file = "Hia_2018.RData")

Hia_2019 <- read_dta("C:/Users/hamza.mutluay/Dropbox/HIA/ham_veri/2019.dta")

Hia_2019$referans_yil = 2019

Hia_2019$ibbs_1 <- revalue(Hia_2019$ibbs_1, c("TR1"="1", "TR2"="2", "TR3"="3",
                                              "TR4"="4","TR5"="5","TR6"="6",
                                              "TR7"="7", "TR8"="8","TR9"="9",
                                              "TRA"="10", "TRB"="11", "TRC"="12"))

Hia_2019$ibbs_1 <- as.numeric(Hia_2019$ibbs_1)

Hia_2019$ibbs_2 <- revalue(Hia_2019$ibbs_2, c("TR10" = "1", "TR21"="2", "TR22"="3",
                                              "TR31"="4","TR32"="5","TR33"="6","TR41"="7",
                                              "TR42"="8","TR51"="9","TR52"="10",
                                              "TR61"="11", "TR62"="12","TR63"="13",
                                              "TR71"="14","TR72"="15", "TR81"="16","TR82"="17",
                                              "TR83"="18","TR90"="19","TRA1"="20","TRA2"="21",
                                              "TRB1"="22","TRB2"="23","TRC1"="24","TRC2"="25","TRC3"="26"))
Hia_2019$ibbs_2 <- as.numeric(Hia_2019$ibbs_2)

keeps <- c("fertno", "birimno", "agirlik_katsayisi", "cinsiyet", "yas_k", "yakinlik",
           "okul_biten_k", "okur_yazar", "egitim_devam_k", "medeni_durum", "calisma",
           "isco08_esas_k","isteki_durum_k",   "nace2_esas_k", "durum", 
           "isyeri_durum",  "calisan_sayi_hh","kayitlilik",  "esas_fiili", "ekis_fiili",
           "isara_sure", "isteki_durum_gecmis", "isco08_ara_k","is_ayril_neden", "referans_yil",
           "ibbs_1", "ibbs_2", "yas","isteki_durum_gecenyil","ozel_kamu","calisma_sekli","ido_neden",
           "faal_durum_gecenyil","is_sureklilik")

Hia_2019 <- Hia_2019[ ,keeps]
save(Hia_2019, file = "Hia_2019.RData")

Hia_2020 <- read_dta("C:/Users/hamza.mutluay/Dropbox/HIA/ham_veri/2020.dta")



Hia_2020$referans_yil = 2020

Hia_2020$ibbs_1 <- revalue(Hia_2020$ibbs_1, c("TR1"="1", "TR2"="2", "TR3"="3",
                                              "TR4"="4","TR5"="5","TR6"="6",
                                              "TR7"="7", "TR8"="8","TR9"="9",
                                              "TRA"="10", "TRB"="11", "TRC"="12"))

Hia_2020$ibbs_1 <- as.numeric(Hia_2020$ibbs_1)

Hia_2020$ibbs_2 <- revalue(Hia_2020$ibbs_2, c("TR10" = "1", "TR21"="2", "TR22"="3",
                                              "TR31"="4","TR32"="5","TR33"="6","TR41"="7",
                                              "TR42"="8","TR51"="9","TR52"="10",
                                              "TR61"="11", "TR62"="12","TR63"="13",
                                              "TR71"="14","TR72"="15", "TR81"="16","TR82"="17",
                                              "TR83"="18","TR90"="19","TRA1"="20","TRA2"="21",
                                              "TRB1"="22","TRB2"="23","TRC1"="24","TRC2"="25","TRC3"="26"))
Hia_2020$ibbs_2 <- as.numeric(Hia_2020$ibbs_2)

keeps <- c("fertno", "birimno", "agirlik_katsayisi", "cinsiyet", "yas_k", "yakinlik",
           "okul_biten_k", "okur_yazar", "egitim_devam_k", "medeni_durum", "calisma",
           "isco08_esas_k","isteki_durum_k",   "nace2_esas_k", "durum", 
           "isyeri_durum",  "calisan_sayi_hh","kayitlilik",  "esas_fiili", "ekis_fiili",
           "isara_sure", "isteki_durum_gecmis", "isco08_ara_k","is_ayril_neden", "referans_yil",
           "ibbs_1", "ibbs_2", "yas","isteki_durum_gecenyil","ozel_kamu","calisma_sekli","ido_neden",
           "faal_durum_gecenyil","is_sureklilik")


Hia_2020 <- Hia_2020[ ,keeps]

#saveRDS(Hia_2020,  "HLFS_2020.rds")

save(Hia_2020, file = "Hia_2020.RData")


Append_Data <- bind_rows(Hia_2000, Hia_2001, Hia_2002, Hia_2003, Hia_2004, Hia_2005,
                 Hia_2006, Hia_2007, Hia_2008, Hia_2009, Hia_2010, Hia_2011,
                 Hia_2012, Hia_2013, Hia_2014, Hia_2015, Hia_2016, Hia_2017,
                 Hia_2018, Hia_2019, Hia_2020)

save(Append_Data, file = "Append_Data.RData")




