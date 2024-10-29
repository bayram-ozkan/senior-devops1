#######################################################################################################################
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
 *Git işlemlerini görsel bir arayüz aracılığıyla gerçekleştirmenizi sağlar. GUI araçları, Git komutlarını grafiksel butonlar ve menüler aracılığıyla kullanmanıza olanak tanır.

CLI : Commond Line Interface
*Komut satırı üzerinden Git komutlarını girerek Git işlemlerini gerçekleştirmeyi ifade eder. Git in en temel ve güçlü kullanım şeklidir.


Yedekleme yapmak
Proje Takibini sağlamak
Projeyi bitirmeyi hızlandırmak
Önceki versionlara hızlıca erişim sağlamak



#######################################################################################################################
#######################################################################################################################
git --help

git config global -l                
*Kullanıcı düzeyince yapılandırılan ayarları gösterir

git config --global user.name  "name" 
git config --global user.email "email"
*Git kullanıcısının global düzeydeki kullanıcı adı ve e-posta adresini ayarlamak için kullanılır. Bu bilgiler, her commit
 yaptığınızda commitlerinize eklenir.Eğer bu ayarları yapmazsanız, Git her commit işleminde bu bilgileri sizden sorar.

git config core.autocrlf true       
*Çapraz platform geliştirme  ortamlarında uyumululuğu artırır.Windows da çalıştığı zamanlarda dosyaları CRLF olarak, 
Unix tabanlı sistemlerde ise LF olarak depolamasını sağlar.

git config --system
*Git in sistem düzeyindeki yapılandırma dosyasını ayarlamak veya değiştirmek için kullanılır.(Tüm kullanıcılar ve sistemler)



#######################################################################################################################
#######################################################################################################################
Staged Area

* Git teki staged area (hazırlık alanı), genellikle değişikliklerin commit işlemine dahil edilmeden önce hazırlandığı alandır
ve bazen index olarak da  adlandırılır.Ancak, hazırlık alanı terimi, günümüzde daha yaygın ve standart hale gelmiştir.


Unstaged Area
* Çalışma dizinindeki ve staged area daki değişiklikler arasında bulunan alandır. Bu aşama, henüz staged area ya eklenmemiş,
dolayısıyla commit işlemine dahil edilmemiş değişiklikleri içerir.


git status
* unstaged değişiklikleri gösterir.


git ls-files --stage
*Staged area daki dosyaları ve durumlarını listeler.



#######################################################################################################################
#######################################################################################################################
-- STATUS

git status
*Mevcut Git deposunun durumunu gösterir. Çalışma Dizinindede ve staging area da  yapılan değişlikleri listeler ve hangi dosyaların
takip edilip eğilmediğini, hangi değişikliklerin stage edilip edilmediğini gösterir.

git restore --staged f5e0847cf157d96a734f476820d59b899ddc7d0b 
* staging area dan bir dosyayı çıkararak onu tekrar çalışma dizinine geri alır. "git add" komutu ile stage edilmiş değişiklikleri
geri almak için kullanılır.



#######################################################################################################################
#######################################################################################################################
-- INIT / REMOTE

echo "# senior-devops1" >> README.md
git init
git add . 
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/nakzoo/senior-devops1.git

#git remote set-url origin git@github.com:nakzoo/senior-devops1.git

git push -u origin main
# git push origon --set upstream origin main


# Remeto Addresini göster
git remote -v   
*Mevcut Git deposunda tanımlı uzak depoları (remote) ve bu uzak depoların URL lerini gösterir. Bu komut, uzak depoların kısa ,adlarını 
(örneğin, origin) ve bu kısa adlara karşılık gelen fetch ve push URL lerini listeler. 



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
-- SHOW

git show 
*Belirli bir nesnenin (commit, tag, tree, blob, vb.) detaylarını görüntülemek için kullanılır. Genellikle commit lerin, 
tag lerin veya diğer Git nesnelerinin içeriğini ve metadata sını incelemek için kullanılır.

git show HEAD
*HEAD olarak adlandırılan güncel commit in (en son commit in) detaylarını gösterir. Bu commit in içeriği, metadata 
(yazar, tarih, mesaj) ve değişiklikleri (diff) hakkında bilgi sağlar.

git checkout HEAD file_name
*Belirtilen dosyayı  HEAD referansındaki (en son commit teki) haliyle geri yükler. Bu, dosyada yapılmış olan ve 
henüz commit edilmemiş değişiklikleri iptal eder ve dosyayı en son commit teki durumuna geri döndürür.



#######################################################################################################################
#######################################################################################################################
-- RESET 

git reset
*Bu komut dosyanın aşamalarını kaldırır ancak dosya içeriğini korur. Resetleme yöntemi sayesinde yeni bir işlem yapmadan 
ve bilgilerini kaybetmeden değişimleri geri alabilmen mümkün olur.

git reset file_name
*Dosyayı staging area dan (index) çıkararak commit edilmek üzere işaretlenmiş değişiklikleri geri alır. Bu komut, --soft, 
--mixed, veya --hard modları ile kullanılmaz


git reset HEAD filename
*Belirtilen dosyayı (veya dosyaları) staging area dan (index) çıkarır, ancak çalışma dizinindeki değişiklikleri etkilemez.
Dosyanın staging area da (index te) yapılan değişikliklerini geri alır ve bu değişiklikleri sadece çalışma dizininde bırakır.


git reset comment_id
*Git branch inin HEAD ini belirtilen commit e taşır. Bu komut, commit-id ile belirttiğiniz commit teki duruma geri döner
ve bu işlemi çeşitli modlarda gerçekleştirebilir.


    # -- mixed (default)
    git reset --mixed comment_id  -> commite  geri döner, staging area değişikliklerini geri alır.

    # --soft
    git reset --soft comment_id   -> commit e  geri döner, staging area değişikliklerini korur.

  
    # --hard
    git reset --hard commend_id   -> commit e geri döner, staging area ve çalışma dizinindeki değişiklikleri kaybeder.

    #git reset HEAD~1             -> Bir önceki commit e geri döner, staging area değişikliklerini geri alır.



#######################################################################################################################
#######################################################################################################################
-- REVART 

git revert
*Yapılan bir değişikliği geri almak için kullanılır. Bu işlem, yeni bir commit oluşturarak yapılan değişikliği tersine çevirir.
Revert, diğer geliştiricilerle çalışırken daha güvenli bir seçenektir çünkü commit geçmişini korur ve başkalarının çalışmalarını etkilemez.

git revert commit_id



#######################################################################################################################
#######################################################################################################################
--- RESET ve REVERT FARKI

* Commit Geçmişi:
Revert, commit geçmişini korur ve yeni bir commit oluşturarak değişiklikleri geri alır. 
Reset ise commit geçmişini yeniden yazarak işlemleri geri alır.


* Güvenlik: 
Revert, diğer geliştiricilerle çalışırken daha güvenli bir seçenektir çünkü başkalarının çalışmalarını etkilemez. 
Reset, diğer geliştiricilerin geçmişi kaybetmesine ve çalışmalarının çakışmasına neden olabilir.


* Kullanım Senaryoları:
Revert, yanlışlıkla yapılan değişiklikleri geri almak veya başkalarıyla çalışırken yapılan değişiklikleri düzeltmek için kullanılabilir.
Reset, daha çok yerel değişikliklerinizi düzenlemek ve commit geçmişini temizlemek için kullanılabilir.



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
*Tanımlanmış tüm alias ları ve onların karşılık geldiği komutları listeler.



#######################################################################################################################
#######################################################################################################################
 -- LOG

git log
*Git deposundaki commit geçmişini görüntülemek için kullanılır. Yapılan commit ler hakkında ayrıntılı bilgiler sağlar ve 
commit mesajları, tarih, yazar bilgileri gibi önemli detayları içerir.

git log -S "keyword"
*Git depolarında belirli bir kelime veya cümleyi içeren değişiklikleri aramak için kullanılır. Belirttiğiniz 
keyword kelimesinin veya cümlesinin eklenmiş veya çıkarılmış olduğu commit leri gösterir. 


git log -S "refactor" -- path/to/file.txt                               -> path/to/file.txt dosyasında refactor kelimesini içeren commit leri arar.


git log -S "performance" --since="2023-01-01" --until="2023-12-31"      ->2023 yılı boyunca performance kelimesini içeren commit leri arar.


git log -S "bug" --grep "fix"                                            ->bug kelimesini içeren değişiklikleri ve commit mesajlarında fix kelimesini içeren commit leri arar.


git log -S "optimization" --all                                          ->optimization kelimesini içeren değişiklikleri tüm branch lerde arar.



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



git commit -amend -m "commit sonrası"
*Son yapılan commit i düzenlemek veya değiştirmek için kullanılır. Bu komut, mevcut commit i yeni bir
commit ile değiştirir,böylece commit mesajını, eklenen veya çıkarılan dosyaları değiştirebilirsiniz. --amend bayrağı, bu işlemi sağlar.


git commit --amend --no-edit
*Mevcut commit i düzenler ve commit mesajını değiştirmeden bırakır. commit mesajını düzenlemek istemediğinizde 
ancak commit e yeni değişiklikler eklemek veya mevcut değişiklikleri güncellemek istediğinizde kullanışlıdır.



#######################################################################################################################
#######################################################################################################################
.gitignore

*Git deposunda takip edilmemesi gereken dosya ve dizinleri belirtmek için kullanılır. Bu dosya, hangi dosyaların Git tarafından izlenmeyeceğini tanımlar.


git rm --cached dosya_adı
*Git in belirli dosyaları veya dizinleri izlemeyi bırakmasını sağlar, ancak bu dosyaları çalışma dizininde bırakır. 
Başka bir deyişle, dosyalar silinmiş gibi işaretlenir ve bir sonraki commit te depodan kaldırılır, ancak dosyalar fiziksel olarak diskten silinmez.

git rm -r --cached dizin_adı
*dizin_adı adlı dizini ve içindeki tüm dosyaları izlemeyi bırakır.



#######################################################################################################################
#######################################################################################################################
README.md

*Bir proje hakkında bilgi veren bir Markdown dosyasıdır. Bu dosya genellikle bir yazılım projesinin kök dizininde bulunur 
ve projenin ne olduğu, nasıl kurulduğu, nasıl kullanıldığı, katkıda bulunma yönergeleri ve diğer önemli bilgiler hakkında bilgi verir. 

   # Başlık
   # Özet
   # Örnek kod parçaçığı



#######################################################################################################################
#######################################################################################################################
LICENSE.md

*Bir projenin lisansını belirtmek için kullanılan LICENSE.md dosyası, projenin kullanım, dağıtım ve değiştirme koşullarını tanımlar. 

# https://choosealicense.com/



#######################################################################################################################
#######################################################################################################################
CODE_OF_CONDUCT.md

*Bir CODE_OF_CONDUCT.md dosyası, projeye katkıda bulunan herkesin uyması gereken davranış kurallarını belirler. Bu, katılımcılar
arasında saygılı ve profesyonel bir ortam oluşturmayı amaçlar.

# https://www.contributor-covenant.org/



#######################################################################################################################
#######################################################################################################################
-- STASH

*Çalışma dizininde yaptığınız değişiklikleri geçici olarak kaydederek,çalışma dizinini temiz hale getirir ve değişiklikleri ileride geri almak üzere saklar. 
Bu komut, henüz commit yapmak istemediğiniz değişiklikleri kaydetmek ve farklı bir branch e geçmek ya da başka bir iş yapmak için kullanışlıdır.
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

*İki farklı değişiklik aynı dosyanın aynı bölgesinde yapıldığında meydana gelir. Çakışmalar, Git in hangi değişikliklerin 
korunacağına karar verememesi durumunda oluşur ve manuel olarak çözülmesi gerekir.

git reset HEAD~1
git add .
git commit -m "Çakışma sonrası"
git push --force


**Conflict yememek için
git add . 
git stash
git checkout main
git pull
git rebase main
git stash apply stash@{0}



#######################################################################################################################
#######################################################################################################################
-- TAG

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

*Git te branch (dal) oluşturmak, listelemek, yeniden adlandırmak ve silmek için kullanılır. 
Branch ler, projede paralel geliştirme yapmayı ve yeni özellikler eklemeyi kolaylaştıran bağımsız çalışma alanları sağlar.
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
git branch -D backend               -> Belirtilen branch i siler. (Birleştirilip birleştirilmediğini kontrol etmez)


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
git branch -d  frontend             -> Belirtilen branch i siler.



#######################################################################################################################
#######################################################################################################################
-- MERGE

*iki dalı birleştirir ve birleştirme işlemini gerçekleştiren yeni bir commit (merge commit) oluşturur. Mevcut dal üzerinde 
çalışır ve diğer dalın değişikliklerini mevcut dala ekler.



git checkout master
git merge feature-branch

 
#Merge çeşitleri
fast-forward
no fast-forward
squash



#######################################################################################################################
#######################################################################################################################
-- REBASE

*Bir dalın tabanını başka bir dalın en son commit ine taşıyan bir Git komutudur. Bu işlem, commit geçmişinizi daha 
temiz ve doğrusal hale getirir, çünkü commit lerinizi yeniden oluşturur ve diğer dalın üstüne uygular.


#Senaryo
git status
git checkout master
git pull origin master
git checkout feature
git rebase master
git add <çözülen-dosya>                 -> conflict in çözülmesi
git rebase --continue
git push origin feature --force



#######################################################################################################################
#######################################################################################################################
-- MERGE ve REBASE FARKI


git merge: 
İki dalı birleştirir ve ayrı bir merge commit i oluşturur. Geçmişi izlemek kolaydır, ancak commit geçmişi karmaşık olabilir.


git rebase: 
Bir dalı başka bir dalın tabanına yeniden konumlandırır. Geçmişi temiz ve doğrusal yapar, ancak paylaşılan branch lerde
dikkatli kullanılmalıdır.



#######################################################################################################################
#######################################################################################################################
-- SSH KEYGEN

*SSH (Secure Shell) protokolü için bir anahtar çifti oluşturmak amacıyla kullanılan bir komuttur. Bu anahtar çifti, 
kimlik doğrulama ve güvenli iletişim için kullanılır. GitHub, GitLab ve diğer birçok platformda SSH anahtarları, kimlik doğrulama amacıyla kullanılır.

ssh-keygen -t -rsa -b 4096 -C  "mail_adresi"

#Windows
cat C:\Users\kullanıcı\.ssh\id_rsa.pub

#Linux
cat ~/.ssh/id_rsa.pub

GITHUB
https://github.com/settings/keys


*Anahtarınızın doğru şekilde çalıştığından emin olmak için bağlantıyı test edebilirsiniz:

ssh -T git@github.com  ->  Hi username! You have successfully authenticated, but GitHub does not provide shell access.



#######################################################################################################################
#######################################################################################################################
-- PULL

git pull

 *Bir uzaktaki depodaki (remote repository) değişiklikleri yerel bir depoya (local repository) çekmek için kullanılır. 



#######################################################################################################################
#######################################################################################################################
-- FETCH

*Uzaktaki depodaki (remote repository) değişiklikleri yerel depoya (local repository) indirir, ancak bu değişiklikleri 
yerel branch ile birleştirmez. Bu, uzaktaki depodaki güncellemeleri yerel deponuza getirmenin ve değişiklikleri gözden geçirmenin güvenli bir yoludur.

git remote
git fetch <RemoteAddress>
git fetch origin
git fetch -a
git chechout remotes/origin/main




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



#######################################################################################################################
#######################################################################################################################
#######################################################################################################################
