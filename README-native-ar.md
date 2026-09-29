# حزمة RAM Native ومرحلة بناء DeepSeek 2.6.0

تحتوي هذه الحزمة على:

- `source/main/java/`: مصدر Java المنظم لقاعدة RAM والموجه والجسر والواجهة.
- `stage/`: مرحلة Apktool كاملة للحزمة المعدلة، وبداخلها `smali_classes4` الناتج من المصدر.
- `reports/`: تقارير الترجمة، عقد Native، فحص DEX، التوقيع، والتثبيت والإقلاع.
- `FINAL-ACCEPTANCE-AR.md`: تقرير القبول والحدود المثبتة.

## إعادة البناء

```bash
java -jar apktool-2.10.0.jar b stage -o hybrid-unsigned.apk --use-aapt2
zipalign -f -p 4 hybrid-unsigned.apk hybrid-aligned.apk
apksigner sign --ks ledger-debug.keystore --ks-pass pass:android --ks-key-alias ledger --out ram-life-os-native-final.apk hybrid-aligned.apk
apksigner verify --verbose --print-certs ram-life-os-native-final.apk
```

لا تضع `classes*.dex` خامًا في جذر stage؛ يجب أن يبقى مصدر الكود في `smali*` حتى لا يعيد Apktool استخدام DEX قديم.
