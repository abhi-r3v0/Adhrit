.class public Lcom/freshchat/consumer/sdk/c/d;
.super Lcom/freshchat/consumer/sdk/c/b;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/c/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/c/d;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bW()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/d;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Lcom/freshchat/consumer/sdk/c/c;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/c/d;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/c;->gn()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-super {p0, v2}, Lcom/freshchat/consumer/sdk/c/b;->v(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/c/c;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/d;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/d;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/c/d;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/a;->g(Landroid/content/Context;)V

    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/d;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public cx()V
    .locals 0

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/c/b;->ct()V

    return-void
.end method
