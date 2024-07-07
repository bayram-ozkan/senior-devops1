
############################################################
############################################################

Git : Global Information Tracked
VSC : Version Control System
Dağıtıktır (Distrubuted)
Locking(Kilitlenme)
Conflict(Çakışma)
Linux Torvarls (Linux çekirdeğini yazan kişi) ve ekib iyle 2005 yılında yazılmıştır.
GitHub(Microsoft)
Ücretsizdir
Açık Kaynak kod (Open Source )  

GUI : Graphics User Interface
CLI : Commond Line Interface

Yedekleme yapmak
Proje Takibini sağlamak
Projeyi bitirmeyi hızlandırmak
Önceki versionlara hızlıca erişim sağlamak



#######################################################################################################################
#######################################################################################################################
git --help

git config global -l                
*Kullanıcı düzeyince yapılandırılan ayarları gösterir 

git config --global user.name       
git config --global user.email
*Git kullanıcısının global düzeydeki kullanıcı adı ve e-posta adresini ayarlamak için kullanılır. 
Bu bilgiler, her commit yaptığınızda commitlerinize eklenir.Eğer bu ayarları yapmazsanız, Git her commit işleminde bu bilgileri sizden sorar.

git config core.autocrlf true       
*Çapraz platform geliştirme  ortamlarında uyumululuğu artırır.Windows'da çalıştığı zamanlarda dosyaları CRLF olarak, Unix tabanlı sistemlerde ise LF olarak depolamasını sağlar.


git config --system
*Git'in sistem düzeyindeki yapılandırma dosyasını ayarlamak veya değiştirmek için kullanılır.(Tüm kullanıcılar ve sistemler)


#######################################################################################################################
#######################################################################################################################
-- ALIAS

git log --all --decorate --oneline --graph --all  
#
git config --global alias.graph "log --decorate --oneline --graph --all"
##
git log --all --decorate --oneline --graph --all   -> git graph
*Uzun bir komut yazmak yerine, kısa ve hatırlaması kolay bir komutla aynı işlevi gerçekleştirebilmenizi sağlar.

git config --get-regexp alias
*Tanımlanmış tüm alias'ları ve onların karşılık geldiği komutları listeler.



git log --all --decorate --oneline --graph --all 
--all: Tüm dallardaki commitleri gösterir.
--decorate: Commitlerin yanında dalları ve etiketleri (tags) gösterir.
--oneline: Her commit'i tek bir satırda özetler.
--graph: Commit geçmişini bir grafik olarak gösterir.
*Git deposundaki commit geçmişini daha görsel ve  anlamlı bir şekilde görüntüler

#######################################################################################################################
#######################################################################################################################
-- git normalde 100MB yükleme kapasitesine sahiptir.
Biz bu rakamı artırmı artıraçağız.


#######################################################################################################################
#######################################################################################################################
echo "# senior-devops1" >> README.md
git init
git add . 
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/nakzoo/senior-devops1.git
git push -u origin main


#######################################################################################################################
#######################################################################################################################
-- CLONE
git clone  https://github.com/nakzoo/senior-devops1.git







#######################################################################################################################
#######################################################################################################################
-- ADD (Staging Area Taşıma)

# . (Hepsi)
git add . 


# README.md (Sadece belirtilen dosyayı ekle)
git add README.md

# jav* ("jav" ile başlayan dosyaları ekle)
git add jav*

# çalışma dizininizde jav ile başlayan dosyalarda yapılan değişiklikleri geri almak için kullanılır. 
Henüz commit edilmemiş değişiklikleri iptal eder ve dosyaları en son commit edilmiş hallerine geri döndürür.
git restore jav*

# Aynı anda sadece benim istediğim dosyaları ekle
git add deneme1.txt deneme2.txt deneme3.txt


#######################################################################################################################
#######################################################################################################################
-- COMMIT

git commit -m "JIRA_TASK datebase  crud added"



#######################################################################################################################
#######################################################################################################################
-- ADD ve COMMIT aynı anda

-- 1. YOL
git add . 
git commit -m "first commit"


-- 2. YOL
(Önceden add yapılması gerekiyor)
git commit -a -m "first commit"




#######################################################################################################################
#######################################################################################################################





#######################################################################################################################
#######################################################################################################################





#######################################################################################################################
#######################################################################################################################






#######################################################################################################################
#######################################################################################################################






#######################################################################################################################
#######################################################################################################################




#######################################################################################################################
#######################################################################################################################