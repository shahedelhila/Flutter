# Flutter Assignment - UI/UX & Navigation

## وصف المشروع

هذا المشروع هو حل للنشاط العملي الخاص بـ Flutter، والذي يغطي المفاهيم الأساسية لـ UI/UX والتنقل بين الشاشات.

## هيكل المشروع

المشروع يتكون من 4 ملفات Dart:

1. **main.dart** - الشاشة الرئيسية (Main Screen)
2. **input_screen.dart** - شاشة الإدخال (Input Screen)
3. **list_screen.dart** - شاشة القائمة (List Screen)
4. **table_screen.dart** - شاشة الجدول (Table Screen)

## الميزات المطلوبة

### الجزء الأول: الشاشة الرئيسية (Main Screen)
✅ AppBar مع العنوان "Flutter Assignment"
✅ نص ترحيبي
✅ صورة من الإنترنت
✅ استخدام Column للتخطيط
✅ استخدام Padding و SizedBox للمسافات

### الجزء الثاني: شاشة الإدخال والقائمة (Input & List Screen)
✅ حقلين نصيين (TextField):
   - اسم المستخدم (User Name)
   - رقم الهاتف (Phone Number)
✅ زر "Show List"
✅ التنقل باستخدام Navigator.push
✅ عرض ListView يحتوي على 4 عناصر ثابتة على الأقل

### الجزء الثالث: شاشة الجدول (Table Screen)
✅ زر "View Table"
✅ التنقل إلى شاشة جديدة
✅ عرض جدول (Table) يحتوي على:
   - الأعمدة: Name | Major | Level
   - صفين على الأقل من البيانات

## كيفية التشغيل

1. انسخ مجلد `lib` إلى مشروع Flutter الخاص بك
2. تأكد من أن ملف pubspec.yaml يحتوي على التبعيات الأساسية لـ Flutter
3. قم بتشغيل الأمر:
   ```bash
   flutter pub get
   flutter run
   ```

## الملاحظات

- تم استخدام الويدجتات المغطاة في المحاضرات فقط
- لم يتم استخدام أي حزم خارجية
- الكود نظيف ومنظم
- كل شاشة في ملف منفصل كما هو موصى به

## التنقل في التطبيق

1. **الشاشة الرئيسية**: تحتوي على زرين:
   - "Go to Input Screen" - للانتقال إلى شاشة الإدخال
   - "View Table" - للانتقال إلى شاشة الجدول

2. **شاشة الإدخال**: أدخل البيانات واضغط "Show List" لعرض القائمة

3. **شاشة القائمة**: تعرض 4 عناصر مع معلومات المستخدم المدخلة

4. **شاشة الجدول**: تعرض جدول بمعلومات الطلاب

## الويدجتات المستخدمة

- Scaffold
- AppBar
- Column
- Padding
- SizedBox
- Text
- Image.network
- TextField
- ElevatedButton
- ListView
- Card
- ListTile
- Table
- TableRow
- TableCell
- Navigator
