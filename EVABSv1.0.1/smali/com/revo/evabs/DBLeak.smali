.class public Lcom/revo/evabs/DBLeak;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DBLeak.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-lib"

    .line 56
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 15
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001e

    .line 16
    invoke-virtual {p0, p1}, Lcom/revo/evabs/DBLeak;->setContentView(I)V

    .line 17
    invoke-virtual {p0}, Lcom/revo/evabs/DBLeak;->stringFromJNI()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MAINFRAME_ACCESS"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, v0, v2, v1}, Lcom/revo/evabs/DBLeak;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "CREATE TABLE IF NOT EXISTS CREDS(admin VARCHAR, pass VARCHAR, access VARCHAR);"

    .line 19
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO CREDS VALUES(\'Dr.l33t\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' , \'ADMIN\');"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "INSERT INTO CREDS VALUES(\'Mr BufferOverflow\', \'0xNotSecureSQLite_\', \'STAFF\');"

    .line 21
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "INSERT INTO CREDS VALUES(\'Ms HeapSpray\', \'SQLite_expl0it\', \'USER\');"

    .line 22
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "SELECT * FROM CREDS"

    .line 24
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x2

    .line 25
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 26
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 27
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x1

    .line 29
    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 30
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 31
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const p1, 0x7f0a010a

    .line 33
    invoke-virtual {p0, p1}, Lcom/revo/evabs/DBLeak;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/widget/TextView;

    const p1, 0x7f0a010b

    .line 34
    invoke-virtual {p0, p1}, Lcom/revo/evabs/DBLeak;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/widget/TextView;

    const p1, 0x7f0a002d

    .line 36
    invoke-virtual {p0, p1}, Lcom/revo/evabs/DBLeak;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 37
    new-instance v0, Lcom/revo/evabs/DBLeak$1;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/revo/evabs/DBLeak$1;-><init>(Lcom/revo/evabs/DBLeak;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a010c

    .line 45
    invoke-virtual {p0, p1}, Lcom/revo/evabs/DBLeak;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0a002a

    .line 46
    invoke-virtual {p0, v0}, Lcom/revo/evabs/DBLeak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 47
    new-instance v1, Lcom/revo/evabs/DBLeak$2;

    invoke-direct {v1, p0, p1}, Lcom/revo/evabs/DBLeak$2;-><init>(Lcom/revo/evabs/DBLeak;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method
