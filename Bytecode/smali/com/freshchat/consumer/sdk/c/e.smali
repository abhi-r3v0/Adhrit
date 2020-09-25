.class public Lcom/freshchat/consumer/sdk/c/e;
.super Lcom/freshchat/consumer/sdk/c/b;


# static fields
.field private static final ef:[Ljava/lang/String;

.field private static final eg:[Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/c/a/f;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/c/a/f;-><init>()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/a/c;->cR()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/c/e;->ef:[Ljava/lang/String;

    new-instance v0, Lcom/freshchat/consumer/sdk/c/a/g;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/c/a/g;-><init>()V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/a/c;->cR()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/c/e;->eg:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/c/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/c/e;->context:Landroid/content/Context;

    return-void
.end method

.method private c(Landroid/database/Cursor;Ljava/util/Map;)Lcom/freshchat/consumer/sdk/beans/Conversation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/freshchat/consumer/sdk/beans/Conversation;"
        }
    .end annotation

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/c/e;->d(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    new-instance v2, Lcom/freshchat/consumer/sdk/beans/Conversation;

    invoke-direct {v2, v0, v1}, Lcom/freshchat/consumer/sdk/beans/Conversation;-><init>(J)V

    const-string v3, "channel_id"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/beans/Conversation;->setChannelId(J)Lcom/freshchat/consumer/sdk/beans/Conversation;

    const-string v3, "has_pending_csat"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v2, p2}, Lcom/freshchat/consumer/sdk/beans/Conversation;->setHasPendingCsat(Z)Lcom/freshchat/consumer/sdk/beans/Conversation;

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/c/e;->g(J)Lcom/freshchat/consumer/sdk/beans/Csat;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v2, p1}, Lcom/freshchat/consumer/sdk/beans/Conversation;->setCsat(Lcom/freshchat/consumer/sdk/beans/Csat;)Lcom/freshchat/consumer/sdk/beans/Conversation;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    return-object v2
.end method

.method private d(Landroid/database/Cursor;Ljava/util/Map;)Lcom/freshchat/consumer/sdk/beans/Csat;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/freshchat/consumer/sdk/beans/Csat;"
        }
    .end annotation

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/c/e;->d(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/Csat;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/Csat;-><init>()V

    const-string v1, "csat_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/beans/Csat;->setCsatId(J)V

    const-string v1, "question"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Csat;->setQuestion(Ljava/lang/String;)V

    const-string v1, "mandatory"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Csat;->setMandatory(Z)V

    const-string v1, "comments_allowed"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/freshchat/consumer/sdk/beans/Csat;->setMobileUserCommentsAllowed(Z)V

    const-string v1, "initiated_time"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/beans/Csat;->setInitiatedTime(J)V

    const-string v1, "_status"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->fromInt(I)Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/beans/Csat;->setStatus(Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private e(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 3
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/c/e;->d(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "channel_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "has_pending_csat"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private f(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 3
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/c/e;->d(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "csat_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "_status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "question"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mandatory"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "comments_allowed"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "initiated_time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public U(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_status"

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->RATED_NOT_UPLOADED:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->asInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "custsat"

    const-string v3, "conv_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

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

.method public a(JLcom/freshchat/consumer/sdk/beans/Csat;)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/c/a/g;

    invoke-direct {v1}, Lcom/freshchat/consumer/sdk/c/a/g;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/c/a/c;->k(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/beans/Csat;->getCsatId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x3

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/beans/Csat;->getQuestion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/beans/Csat;->isMobileUserCommentsAllowed()Z

    move-result p2

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    if-eqz p2, :cond_1

    move-wide v5, v1

    goto :goto_0

    :cond_1
    move-wide v5, v3

    :goto_0
    invoke-virtual {v0, p1, v5, v6}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x5

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/beans/Csat;->isMandatory()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v1, v3

    :goto_1
    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x6

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/beans/Csat;->getStatus()Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    move-result-object p2

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->asInt()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x7

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/beans/Csat;->getInitiatedTime()J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public a(Lcom/freshchat/consumer/sdk/beans/Conversation;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/c/e;->f(Ljava/util/List;)V

    return-void
.end method

.method public f(J)Lcom/freshchat/consumer/sdk/beans/Conversation;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "conversations"

    sget-object v3, Lcom/freshchat/consumer/sdk/c/e;->ef:[Ljava/lang/String;

    const-string v4, "channel_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/c/e;->b(Landroid/database/Cursor;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/c/e;->e(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/c/e;->c(Landroid/database/Cursor;Ljava/util/Map;)Lcom/freshchat/consumer/sdk/beans/Conversation;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, p2

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p1, v0

    :goto_0
    :try_start_2
    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/c/e;->c(Landroid/database/Cursor;)V

    return-object v0

    :catchall_1
    move-exception p2

    move-object v0, p1

    :goto_2
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/c/e;->c(Landroid/database/Cursor;)V

    throw p2
.end method

.method public f(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/c/a/f;

    invoke-direct {v1}, Lcom/freshchat/consumer/sdk/c/a/f;-><init>()V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/c/a/c;->cS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v1, Lcom/freshchat/consumer/sdk/c/h;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/c/e;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/freshchat/consumer/sdk/c/h;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freshchat/consumer/sdk/beans/Conversation;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getConversationId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v1, v8}, Lcom/freshchat/consumer/sdk/c/h;->g(Ljava/util/List;)Ljava/util/List;

    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getChannelId()J

    move-result-wide v8

    invoke-virtual {v0, v4, v8, v9}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v4, 0x3

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Conversation;->hasPendingCsat()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v6, 0x1

    :cond_1
    invoke-virtual {v0, v4, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public fR()V
    .locals 10

    const-string v0, ","

    const-string v1, "?"

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/c/e;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/au;->a(Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    sget-object v5, Lcom/freshchat/consumer/sdk/c/g;->kP:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "CONV._id"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "initiated_time"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    :cond_1
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v2, v7, v8}, Lcom/freshchat/consumer/sdk/j/au;->a(Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;J)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v5, "custsat"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "conv_id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Collection;)I

    move-result v7

    invoke-static {v1, v0, v7}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "has_pending_csat"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "conversations"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "_id="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Collection;)I

    move-result v9

    invoke-static {v1, v0, v9}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v5, v6, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v3}, Lcom/freshchat/consumer/sdk/c/e;->c(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v3}, Lcom/freshchat/consumer/sdk/c/e;->c(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public g(J)Lcom/freshchat/consumer/sdk/beans/Csat;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "custsat"

    sget-object v3, Lcom/freshchat/consumer/sdk/c/e;->eg:[Ljava/lang/String;

    const-string v4, "conv_id=?"

    const/4 p2, 0x1

    new-array v5, p2, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p1, v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/c/e;->b(Landroid/database/Cursor;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/c/e;->f(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/c/e;->d(Landroid/database/Cursor;Ljava/util/Map;)Lcom/freshchat/consumer/sdk/beans/Csat;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, p2

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p1, v0

    :goto_0
    :try_start_2
    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/c/e;->c(Landroid/database/Cursor;)V

    return-object v0

    :catchall_1
    move-exception p2

    move-object v0, p1

    :goto_2
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/c/e;->c(Landroid/database/Cursor;)V

    throw p2
.end method

.method public t(J)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v0, "custsat"

    const-string v1, "conv_id=?"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "has_pending_csat"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "conversations"

    const-string v3, "_id=?"

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, p2, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/c/e;->cs()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method
