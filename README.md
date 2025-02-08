# DNS Stress Tool

## ⚠ Yasal Uyarı
Bu script **yalnızca** eğitim ve güvenlik(educational and security) testleri amacıyla kullanılmalıdır.  
**Bu aracı kötü amaçlı aktiviteler için kullanmayın.** Üçüncü taraf sistemlere izinsiz kullanım, yasa dışı olabilir.

## 📌 Özellikler
- Rastgele DNS sorguları oluşturur
- Ağ testleri için yüksek sorgu trafiğini simüle eder
- Test amacıyla özelleştirilmiş kaynak IP adresleri kullanır

## 🚀 Kurulum
Sisteminizde **Perl yüklü olduğundan emin olun**. Gerekli Perl modüllerini yüklemek için aşağıdaki komutu kullanabilirsiniz:

```sh
cpan install Net::DNS Net::RawIP

perl dnsflood.pl <hedef-ip>

perl dnsflood.pl 192.168.1.1
```

⚠ Hukuki Uyarı

Bu script'i izniniz olmayan ağlar veya sistemler üzerinde kullanmanız yasa dışı olabilir ve yasalara, hizmet şartlarına aykırı olabilir.
Yazar, bu aracın kötüye kullanımından sorumlu değildir. Lütfen sorumlu bir şekilde kullanın.

**⚠ Önemli Not:** Eğer bu aracı GitHub'da paylaşacaksan, **etik hacking** veya **ağ güvenliği testleri** için olduğunu açıkça belirtmelisin.  
Aksi takdirde, GitHub'un **kullanım politikalarına aykırı olduğu için kaldırılabilir.**
