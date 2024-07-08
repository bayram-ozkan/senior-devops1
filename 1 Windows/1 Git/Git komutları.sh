#######################################################################################################################
#######################################################################################################################


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
*Git kullanıcısının global düzeydeki kullanıcı adı ve e-posta adresini ayarlamak için kullanılır. Bu bilgiler, her commit
 yaptığınızda commitlerinize eklenir.Eğer bu ayarları yapmazsanız, Git her commit işleminde bu bilgileri sizden sorar.

git config core.autocrlf true       
*Çapraz platform geliştirme  ortamlarında uyumululuğu artırır.Windows'da çalıştığı zamanlarda dosyaları CRLF olarak, 
Unix tabanlı sistemlerde ise LF olarak depolamasını sağlar.

git config --system
*Git'in sistem düzeyindeki yapılandırma dosyasını ayarlamak veya değiştirmek için kullanılır.(Tüm kullanıcılar ve sistemler)



#######################################################################################################################
#######################################################################################################################
-- INIT / REMOTE

echo "# senior-devops1" >> README.md
git init
git add . 
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/nakzoo/senior-devops1.git
git push -u origin main
# git push origon --set upstream origin main


# Remeto Addresini göster
git remote -v 
* Git deposunda yapılandırlılmış tüm repository lerin detaylarını listeler

git remote    ==> origin remote name
git remote  set url https://github.com/nakzoo/senior-devops1.git
*Uzak repository URL sini günceller



#######################################################################################################################
#######################################################################################################################
-- CLONE

git clone  https://github.com/nakzoo/senior-devops1.git



#######################################################################################################################
#######################################################################################################################
-- ADD (Staging Area Taşıma)

# . (Hepsi)
git add . 

git add README.md
$ README.md (Sadece belirtilen dosyayı ekle)

git add jav*
$ jav* ("jav" ile başlayan dosyaları ekle)


git restore jav*
*Çalışma dizininizde jav ile başlayan dosyalarda yapılan değişiklikleri geri almak için kullanılır. Henüz commit edilmemiş değişiklikleri 
iptal eder ve dosyaları en son commit edilmiş hallerine geri döndürür.


git add deneme1.txt deneme2.txt deneme3.txt
*Aynı anda sadece benim istediğim dosyaları ekle



#######################################################################################################################
#######################################################################################################################
-- STATUS

git status
*Mevcut Git deposunun durumunu gösterir. Çalışma Dizinindede ve staging area da  yapılan değişlikleri listeler ve hangi dosyaların
takip edilip eğilmediğini, hangi değişikliklerin stage edilip edilmediğini gösterir.

git restore --staged f5e0847cf157d96a734f476820d59b899ddc7d0b 
* staging area'dan bir dosyayı çıkararak onu tekrar çalışma dizinine geri alır. "git add" komutu ile stage edilmiş değişiklikleri
geri almak için kullanılır.



#######################################################################################################################
#######################################################################################################################
-- ALIAS

*Uzun bir komut yazmak yerine, kısa ve hatırlaması kolay bir komutla aynı işlevi gerçekleştirebilmenizi sağlar.



#1
git config --global alias.graph "log --decorate --oneline --graph --all"
##2
git log --all --decorate --oneline --graph --all   


$Uzun komut ->>  "git log --all --decorate --oneline --graph --all"  
$Kısa komut ->>  "git graph"


git config --get-regexp alias
*Tanımlanmış tüm alias'ları ve onların karşılık geldiği komutları listeler.



#######################################################################################################################
#######################################################################################################################
 -- LOG

*Git deposundaki commit geçmişini görüntülemek için kullanılır. Yapılan commit'ler hakkında ayrıntılı bilgiler sağlar ve 
commit mesajları, tarih, yazar bilgileri gibi önemli detayları içerir.

git log



#######################################################################################################################
#######################################################################################################################
 -- DIFF

*İki commit arasındaki farkları gösterir.

 git log
 git diff commitID1 commitID2


#######################################################################################################################
#######################################################################################################################
-- COMMIT

*Staging area daki  değişiklikleri yerel repository ye kaydetmek için kullanılır.


git commit -m "JIRA_TASK datebase  crud added"


-- Commit (aynı anda add  ve commit)


#1. YOL
git add . 
git commit -m "first commit"


#2. YOL(Önceden add yapılması gerekiyor)
git commit -a -m "first commit"


#Commit Message 
git log
git commit -amend -m "commit sonrası"



#######################################################################################################################
#######################################################################################################################
.gitignore

*Git deposunda takip edilmemesi gereken dosya ve dizinleri belirtmek için kullanılır. Bu dosya, hangi dosyaların Git tarafından izlenmeyeceğini tanımlar.


git rm --cached dosya_adı
*Git'in belirli dosyaları veya dizinleri izlemeyi bırakmasını sağlar, ancak bu dosyaları çalışma dizininde bırakır. 
Başka bir deyişle, dosyalar silinmiş gibi işaretlenir ve bir sonraki commit'te depodan kaldırılır, ancak dosyalar fiziksel olarak diskten silinmez.

git rm -r --cached dizin_adı
*dizin_adı adlı dizini ve içindeki tüm dosyaları izlemeyi bırakır.



#######################################################################################################################
#######################################################################################################################
-- STASH

*Çalışma dizininde yaptığınız değişiklikleri geçici olarak kaydederek,çalışma dizinini temiz hale getirir ve değişiklikleri ileride geri almak üzere saklar. 
Bu komut, henüz commit yapmak istemediğiniz değişiklikleri kaydetmek ve farklı bir branch'e geçmek ya da başka bir iş yapmak için kullanışlıdır.
Stash öncesi mutlaka " git add . " yapılmalıdır.

git statsh --help
git stash list

#Senaryo-1 
git add .
git stash => stash@{0}
gitt stash list
git stash apply stash@{0}
git stash drop stash@{0}


#Senaryo-2 
git add .
git stash save  "stash_name"
git stash list
git stash pop  ->  Stash edilen değişikleri geri almak ve listeden kaldırmak için kullanılır.



#######################################################################################################################
#######################################################################################################################
-- CONFLICT(Çakışma)

*İki farklı değişiklik aynı dosyanın aynı bölgesinde yapıldığında meydana gelir. Çakışmalar, Git'in hangi değişikliklerin 
korunacağına karar verememesi durumunda oluşur ve manuel olarak çözülmesi gerekir.

git reset HEAD~1
git add .
git commit -m "Çakışma sonrası"
git push --force


**Conflict yememek için
git add . 
git stash
git chech out main
git pull
git rebase main
git stash apply stash@{0}



#######################################################################################################################
#######################################################################################################################
--  TAG

*Belirli bir noktadaki proje durumunu işaretlemek için kullanılan bir referanstır. Etiketler genellikle sürüm numaralarını belirtmek için kullanılır

git tag --help 

#Senaryo-1 
git add . 
git tag v1.0.0
git tag
git show v1.0.0
git push <remoteAlias> v1.0.0
git push origin v1.0.0


#Senaryo-2
git add . 
git tag v2.0.0
git tag
git push <remoteAlias> v2.0.0
git push origin v2.0.0


# switch /delete
git chechout v1.0.0
git checkout main
git chechout v2.0.0 
git tag --delete v1.0.0
git tag --delete v2.0.0
git push origin --tags



#######################################################################################################################
#######################################################################################################################
-- BRANCH

*Git'te branch (dal) oluşturmak, listelemek, yeniden adlandırmak ve silmek için kullanılır. 
Branch'ler, projede paralel geliştirme yapmayı ve yeni özellikler eklemeyi kolaylaştıran bağımsız çalışma alanları sağlar.
*Branch yapmadan önce mutlaka "git add"  ve "git commit" yapmalıyız.

git branch -M main
git branch --help

git branch
git branch --all
git branch -a 



#Senaryo-1
git add . 
git commit -m "Senaryo-1 "
git branch  backend                  -> Branch oluştur
git chechout backend                 -> Branch e geçiş yapar.
cat >> backend.txt
git add .
git commit -m "backend branch"
git push -u origin backend
git switch main 
git merge backend
git branch -D backend               -> Belirtilen branch i siler.



#Senaryo-2
git add . 
git commit -m "Senaryo-2 "
git checkout -b frontend            -> Yeni bir branch oluşturur ve o branch e geçiş yapar.
cat >> frontend.txt
git add .
git commit -m "frontend branch"
git push -u origin frontend
git switch main  
git merge --no-ff frontend
git branch -D frontend  

 
#Merge çeşitleri
fast-forward
no fast-forward
squash

# Merge  ve  Rebase Arasındaki farklar




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




#######################################################################################################################
#######################################################################################################################
-- 100 MB 

*Git normalde 100MB yükleme kapasitesine sahiptir.

#Senaryo-1
remote: error: GH001: Large files detected. You may want to try Git Large File Storage  -> ÇÖZÜMÜ

git lfs install --force
git lfs track "*.exe"
git push origin master
git push origin --force --all 

git log
git commit --amend --reset-author 
git push origin --force --all 
git reset --hard CommitID
git log
git show commitID
