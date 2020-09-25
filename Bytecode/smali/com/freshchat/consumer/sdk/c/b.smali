.class public abstract Lcom/freshchat/consumer/sdk/c/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/c/b$a;
    }
.end annotation


# static fields
.field private static eb:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field private final context:Landroid/content/Context;

.field private ec:Lcom/freshchat/consumer/sdk/c/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/c/b;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/c/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/c/b;->context:Landroid/content/Context;

    return-object p0
.end method

.method protected static a(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/ad;->a([Ljava/io/Closeable;)V

    return-void
.end method

.method protected static b(Landroid/database/Cursor;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static c(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/ad;->a([Ljava/io/Closeable;)V

    return-void
.end method

.method private cr()Lcom/freshchat/consumer/sdk/c/b$a;
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/c/b;->ec:Lcom/freshchat/consumer/sdk/c/b$a;

    if-nez v0, :cond_1

    const-class v0, Lcom/freshchat/consumer/sdk/c/b;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/c/b;->ec:Lcom/freshchat/consumer/sdk/c/b$a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/freshchat/consumer/sdk/c/b$a;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/c/b;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/freshchat/consumer/sdk/c/b$a;-><init>(Lcom/freshchat/consumer/sdk/c/b;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/c/b;->ec:Lcom/freshchat/consumer/sdk/c/b$a;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/c/b;->ec:Lcom/freshchat/consumer/sdk/c/b$a;

    return-object v0
.end method

.method protected static d(Landroid/database/Cursor;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static j(Landroid/database/Cursor;)Z
    .locals 0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/c/b;->b(Landroid/database/Cursor;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected abstract a(Landroid/database/Cursor;)Ljava/util/Map;
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
.end method

.method protected cs()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/c/b;->eb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    const-class v0, Lcom/freshchat/consumer/sdk/c/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/c/b;->eb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/c/b;->cr()Lcom/freshchat/consumer/sdk/c/b$a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/freshchat/consumer/sdk/c/b;->eb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/freshchat/consumer/sdk/c/b;->eb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method protected ct()V
    .locals 3

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/c/b;->cr()Lcom/freshchat/consumer/sdk/c/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/c/b;->cr()Lcom/freshchat/consumer/sdk/c/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/freshchat/consumer/sdk/c/a/n;->eq:[Lcom/freshchat/consumer/sdk/c/a/h;

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/c/b$a;->a(Lcom/freshchat/consumer/sdk/c/b$a;Landroid/database/sqlite/SQLiteDatabase;[Lcom/freshchat/consumer/sdk/c/a/h;)V

    :cond_0
    return-void
.end method

.method protected v(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/c/b;->cr()Lcom/freshchat/consumer/sdk/c/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/c/b;->cr()Lcom/freshchat/consumer/sdk/c/b$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/b;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/freshchat/consumer/sdk/c/a/n;->er:[Lcom/freshchat/consumer/sdk/c/a/h;

    invoke-static {v0, v1, v2, p1}, Lcom/freshchat/consumer/sdk/c/b$a;->a(Lcom/freshchat/consumer/sdk/c/b$a;Landroid/database/sqlite/SQLiteDatabase;[Lcom/freshchat/consumer/sdk/c/a/h;Z)V

    :cond_0
    return-void
.end method
