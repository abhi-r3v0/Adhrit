.class public Lcom/freshchat/consumer/sdk/c/b$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic ed:Lcom/freshchat/consumer/sdk/c/b;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/c/b;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/c/b$a;->ed:Lcom/freshchat/consumer/sdk/c/b;

    const-string p1, "freshchat.db"

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_2

    add-int/lit8 v1, v0, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Migrating DB from version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to version "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FRESHCHAT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/c/a/c;->q(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "MIGRATE : "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "_status="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->NOT_RATED:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->asInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "initiated_time"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v3, 0x0

    const-string v4, "custsat"

    invoke-virtual {p1, v4, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v0, Lcom/freshchat/consumer/sdk/c/g;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/c/b$a;->ed:Lcom/freshchat/consumer/sdk/c/b;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/c/b;->a(Lcom/freshchat/consumer/sdk/c/b;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/freshchat/consumer/sdk/c/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/g;->fS()V

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;[Lcom/freshchat/consumer/sdk/c/a/h;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/freshchat/consumer/sdk/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;[Lcom/freshchat/consumer/sdk/c/a/h;Z)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;[Lcom/freshchat/consumer/sdk/c/a/h;Z)V
    .locals 4

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :cond_0
    :try_start_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-interface {v2}, Lcom/freshchat/consumer/sdk/c/a/h;->cP()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    return-void

    :goto_1
    if-eqz p3, :cond_4

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_4
    throw p2
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/c/b$a;Landroid/database/sqlite/SQLiteDatabase;[Lcom/freshchat/consumer/sdk/c/a/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;[Lcom/freshchat/consumer/sdk/c/a/h;)V

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/c/b$a;Landroid/database/sqlite/SQLiteDatabase;[Lcom/freshchat/consumer/sdk/c/a/h;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/freshchat/consumer/sdk/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;[Lcom/freshchat/consumer/sdk/c/a/h;Z)V

    return-void
.end method


# virtual methods
.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/c/a/c;->m(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "FRESHCHAT"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PRAGMA foreign_keys=true;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/freshchat/consumer/sdk/c/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
