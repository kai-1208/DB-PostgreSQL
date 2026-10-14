## 教科書のサンプルコードの利用について

### サンプルコードのダウンロードと配置

教科書『SQL 第2版 ゼロからはじめるデータベース操作』(翔泳社) を購入している学生は、以下のページからサンプルコードをダウンロードし、展開後、次のフォルダ構成になるように配置してください。

- https://www.shoeisha.co.jp/book/download
- ダウンロードには、書籍名または ISBN の入力が必要です。

```text
sql
 ├── README.md (このファイル)
 ├── 📂 03
 └── 📂 book
      ├── .keep
      ├── ReadMe.txt (サンプルコードのReadMe)
      ├── 📂 answer
      └── 📂 sample
          ├── 📂 Ch00
          ├── 📂 Ch01
          ├── ...
          ├── 📂 Ch09
          └── 📂 CreateTable
```

### サンプルコードの実行について

教科書のサンプルコードを、この授業の PostgreSQL 環境で実行する場合は、**各 SQL ファイルの先頭に、以下の SQL 文を追加してください。**

- これは、教科書のサンプルコードで作成するテーブルを `book` スキーマにまとめ、授業で使用する他のテーブルと区別するためです。
  - `CREATE SCHEMA IF NOT EXISTS book;` は、book スキーマが存在しない場合に作成する SQL 文です。
  - `SET search_path TO book;` により、テーブル名の前に `book.` を付けなくても、`book` スキーマ内のテーブルを操作できるようになります。これにより、教科書のサンプルコードをほとんど変更せずに実行できるようになります。

#### (1) テーブル作成用の SQL ファイル

`sql/book/sample\CreateTable/PostgreSQL` にある各 SQL ファイルの先頭に、次の2行を追加してください。

```sql
CREATE SCHEMA IF NOT EXISTS book;
SET search_path TO book;
```

#### (2) 各章の演習用 SQL ファイル

`sql/book/sample/Ch0X` にある各 SQL ファイルの先頭に、次の1行を追加してください。

```sql
SET search_path TO book;
```

### 著作権に関する注意

- 教科書のサンプルコードの著作権は、教科書の著者にあり、GitHub などに公開することは認められていません。
- `sql/book` フォルダは `.gitignore` によって Git の管理対象から除外していますが、誤って公開することがないよう、各自で十分に注意してください。