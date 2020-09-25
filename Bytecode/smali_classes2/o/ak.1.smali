.class public final Lo/ak;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ah;
.implements Lo/b$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ak$onNavigationEvent;,
        Lo/ak$onPostMessage;,
        Lo/ak$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/mark;
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/isEnableLog;


# instance fields
.field public final ICustomTabsCallback:Lo/aj;

.field private final extraCallback:Lo/b;

.field public final onNavigationEvent:Lo/am;

.field private final onPostMessage:Lo/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25030
    new-instance v0, Lo/isEnableLog;

    const-string v1, "proto"

    invoke-direct {v0, v1}, Lo/isEnableLog;-><init>(Ljava/lang/String;)V

    .line 60
    sput-object v0, Lo/ak;->onMessageChannelReady:Lo/isEnableLog;

    return-void
.end method

.method constructor <init>(Lo/b;Lo/b;Lo/aj;Lo/am;)V
    .locals 0
    .annotation runtime Lo/withJitterFactor;
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p4, p0, Lo/ak;->onNavigationEvent:Lo/am;

    .line 75
    iput-object p1, p0, Lo/ak;->onPostMessage:Lo/b;

    .line 76
    iput-object p2, p0, Lo/ak;->extraCallback:Lo/b;

    .line 77
    iput-object p3, p0, Lo/ak;->ICustomTabsCallback:Lo/aj;

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/database/Cursor;Lo/ak$onPostMessage;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Lo/ak$onPostMessage<",
            "Landroid/database/Cursor;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 608
    :try_start_0
    invoke-interface {p1, p0}, Lo/ak$onPostMessage;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 611
    throw p1
.end method

.method private ICustomTabsCallback(Lo/ak$onPostMessage;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/ak$onPostMessage<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 23082
    iget-object v0, p0, Lo/ak;->onNavigationEvent:Lo/am;

    .line 24000
    new-instance v1, Lo/PreferenceGroup$extraCallback;

    invoke-direct {v1, v0}, Lo/PreferenceGroup$extraCallback;-><init>(Lo/am;)V

    .line 25000
    sget-object v0, Lo/shouldIgnore$ICustomTabsCallback;->ICustomTabsCallback:Lo/shouldIgnore$ICustomTabsCallback;

    .line 23082
    invoke-virtual {p0, v1, v0}, Lo/ak;->onPostMessage(Lo/ak$onMessageChannelReady;Lo/ak$onPostMessage;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 562
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 564
    :try_start_0
    invoke-interface {p1, v0}, Lo/ak$onPostMessage;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 565
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 569
    throw p1
.end method

.method private static ICustomTabsCallback(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lo/markSupported;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 235
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/markSupported;

    .line 7034
    iget-wide v1, v1, Lo/markSupported;->onPostMessage:J

    .line 236
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 237
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2c

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    .line 241
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extraCallback(Landroid/database/sqlite/SQLiteDatabase;Lo/OaidClient$Info;)Ljava/lang/Long;
    .locals 13

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "backend_name = ? and priority = ?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Lo/OaidClient$Info;->extraCallback()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 182
    invoke-virtual {p1}, Lo/OaidClient$Info;->ICustomTabsCallback()Lo/setReferrer;

    move-result-object v3

    invoke-static {v3}, Lo/getItemDelegate$onMessageChannelReady;->ICustomTabsCallback(Lo/setReferrer;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 180
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 184
    invoke-virtual {p1}, Lo/OaidClient$Info;->onPostMessage()[B

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, " and extras = ?"

    .line 185
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p1}, Lo/OaidClient$Info;->onPostMessage()[B

    move-result-object p1

    invoke-static {p1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p1, "_id"

    .line 189
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    .line 193
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    new-array p1, v4, [Ljava/lang/String;

    .line 194
    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v6, "transport_contexts"

    move-object v5, p0

    .line 190
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 4000
    sget-object p1, Lo/onEnteredHiddenState;->extraCallback:Lo/onEnteredHiddenState;

    .line 189
    invoke-static {p0, p1}, Lo/ak;->ICustomTabsCallback(Landroid/database/Cursor;Lo/ak$onPostMessage;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public static extraCallback(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lo/markSupported;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Lo/ak$onNavigationEvent;",
            ">;>;"
        }
    .end annotation

    .line 459
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event_id IN ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 461
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 462
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/markSupported;

    .line 15034
    iget-wide v3, v3, Lo/markSupported;->onPostMessage:J

    .line 462
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 463
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    const/16 v3, 0x2c

    .line 464
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x29

    .line 467
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "event_id"

    const-string v2, "name"

    const-string v3, "value"

    .line 469
    filled-new-array {p1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 473
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v5, "event_metadata"

    move-object v4, p0

    .line 470
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 16000
    new-instance p1, Lo/BatchingListUpdateCallback$onPostMessage;

    invoke-direct {p1, v0}, Lo/BatchingListUpdateCallback$onPostMessage;-><init>(Ljava/util/Map;)V

    .line 469
    invoke-static {p0, p1}, Lo/ak;->ICustomTabsCallback(Landroid/database/Cursor;Lo/ak$onPostMessage;)Ljava/lang/Object;

    return-object v0
.end method

.method public static onMessageChannelReady(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/markSupported;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Lo/ak$onNavigationEvent;",
            ">;>;)",
            "Ljava/util/List<",
            "Lo/markSupported;",
            ">;"
        }
    .end annotation

    .line 496
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 497
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 498
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/markSupported;

    .line 16034
    iget-wide v2, v1, Lo/markSupported;->onPostMessage:J

    .line 499
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16044
    iget-object v2, v1, Lo/markSupported;->onNavigationEvent:Lo/Foreground$4$4;

    .line 502
    invoke-virtual {v2}, Lo/Foreground$4$4;->onRelationshipValidationResult()Lo/Foreground$4$4$extraCallback;

    move-result-object v2

    .line 17034
    iget-wide v3, v1, Lo/markSupported;->onPostMessage:J

    .line 504
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/ak$onNavigationEvent;

    .line 505
    iget-object v5, v4, Lo/ak$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    iget-object v4, v4, Lo/ak$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lo/Foreground$4$4$extraCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/Foreground$4$4$extraCallback;

    goto :goto_1

    .line 18034
    :cond_1
    iget-wide v3, v1, Lo/markSupported;->onPostMessage:J

    .line 18039
    iget-object v1, v1, Lo/markSupported;->ICustomTabsCallback:Lo/OaidClient$Info;

    .line 508
    invoke-virtual {v2}, Lo/Foreground$4$4$extraCallback;->onPostMessage()Lo/Foreground$4$4;

    move-result-object v2

    .line 19032
    new-instance v5, Lo/markSupported;

    invoke-direct {v5, v3, v4, v1, v2}, Lo/markSupported;-><init>(JLo/OaidClient$Info;Lo/Foreground$4$4;)V

    .line 507
    invoke-interface {v0, v5}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/b$e$ICustomTabsCallback;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/b$e$ICustomTabsCallback<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 19082
    iget-object v0, p0, Lo/ak;->onNavigationEvent:Lo/am;

    .line 20000
    new-instance v1, Lo/PreferenceGroup$extraCallback;

    invoke-direct {v1, v0}, Lo/PreferenceGroup$extraCallback;-><init>(Lo/am;)V

    .line 21000
    sget-object v0, Lo/shouldIgnore$ICustomTabsCallback;->ICustomTabsCallback:Lo/shouldIgnore$ICustomTabsCallback;

    .line 19082
    invoke-virtual {p0, v1, v0}, Lo/ak;->onPostMessage(Lo/ak$onMessageChannelReady;Lo/ak$onPostMessage;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 22000
    new-instance v1, Lo/DefaultItemAnimator$ICustomTabsCallback;

    invoke-direct {v1, v0}, Lo/DefaultItemAnimator$ICustomTabsCallback;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 23000
    sget-object v2, Lo/getRemainingScrollHorizontal;->onNavigationEvent:Lo/getRemainingScrollHorizontal;

    .line 21537
    invoke-virtual {p0, v1, v2}, Lo/ak;->onPostMessage(Lo/ak$onMessageChannelReady;Lo/ak$onPostMessage;)Ljava/lang/Object;

    .line 552
    :try_start_0
    invoke-interface {p1}, Lo/b$e$ICustomTabsCallback;->extraCallback()Ljava/lang/Object;

    move-result-object p1

    .line 553
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 557
    throw p1
.end method

.method public final ICustomTabsCallback(Lo/OaidClient$Info;)Z
    .locals 1

    .line 11000
    new-instance v0, Lo/animateAddImpl$extraCallback;

    invoke-direct {v0, p0, p1}, Lo/animateAddImpl$extraCallback;-><init>(Lo/ak;Lo/OaidClient$Info;)V

    .line 265
    invoke-direct {p0, v0}, Lo/ak;->ICustomTabsCallback(Lo/ak$onPostMessage;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final close()V
    .locals 1

    .line 346
    iget-object v0, p0, Lo/ak;->onNavigationEvent:Lo/am;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public final extraCallback(Lo/OaidClient$Info;)J
    .locals 4

    .line 7082
    iget-object v0, p0, Lo/ak;->onNavigationEvent:Lo/am;

    .line 8000
    new-instance v1, Lo/PreferenceGroup$extraCallback;

    invoke-direct {v1, v0}, Lo/PreferenceGroup$extraCallback;-><init>(Lo/am;)V

    .line 9000
    sget-object v0, Lo/shouldIgnore$ICustomTabsCallback;->ICustomTabsCallback:Lo/shouldIgnore$ICustomTabsCallback;

    .line 7082
    invoke-virtual {p0, v1, v0}, Lo/ak;->onPostMessage(Lo/ak$onMessageChannelReady;Lo/ak$onPostMessage;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Lo/OaidClient$Info;->extraCallback()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 253
    invoke-virtual {p1}, Lo/OaidClient$Info;->ICustomTabsCallback()Lo/setReferrer;

    move-result-object p1

    invoke-static {p1}, Lo/getItemDelegate$onMessageChannelReady;->ICustomTabsCallback(Lo/setReferrer;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?"

    .line 249
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 10000
    sget-object v0, Lo/onEnteredHiddenState$onMessageChannelReady;->extraCallback:Lo/onEnteredHiddenState$onMessageChannelReady;

    .line 247
    invoke-static {p1, v0}, Lo/ak;->ICustomTabsCallback(Landroid/database/Cursor;Lo/ak$onPostMessage;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final extraCallback(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lo/markSupported;",
            ">;)V"
        }
    .end annotation

    .line 208
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-static {p1}, Lo/ak;->ICustomTabsCallback(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5000
    new-instance v0, Lo/animateMove$extraCallback;

    invoke-direct {v0, p1}, Lo/animateMove$extraCallback;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-direct {p0, v0}, Lo/ak;->ICustomTabsCallback(Lo/ak$onPostMessage;)Ljava/lang/Object;

    return-void
.end method

.method public final onMessageChannelReady(Lo/OaidClient$Info;Lo/Foreground$4$4;)Lo/markSupported;
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 95
    invoke-virtual {p1}, Lo/OaidClient$Info;->ICustomTabsCallback()Lo/setReferrer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 96
    invoke-virtual {p2}, Lo/Foreground$4$4;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 97
    invoke-virtual {p1}, Lo/OaidClient$Info;->extraCallback()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "SQLiteEventStore"

    const-string v2, "TransportRuntime."

    .line 2023
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Storing event with priority=%s, name=%s for destination %s"

    .line 1039
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    new-instance v0, Lo/animateRemove$extraCallback;

    invoke-direct {v0, p0, p1, p2}, Lo/animateRemove$extraCallback;-><init>(Lo/ak;Lo/OaidClient$Info;Lo/Foreground$4$4;)V

    .line 99
    invoke-direct {p0, v0}, Lo/ak;->ICustomTabsCallback(Lo/ak$onPostMessage;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3032
    :cond_0
    new-instance v2, Lo/markSupported;

    invoke-direct {v2, v0, v1, p1, p2}, Lo/markSupported;-><init>(JLo/OaidClient$Info;Lo/Foreground$4$4;)V

    return-object v2
.end method

.method public final onNavigationEvent()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lo/OaidClient$Info;",
            ">;"
        }
    .end annotation

    .line 14000
    sget-object v0, Lo/getTargetPosition$onPostMessage;->onMessageChannelReady:Lo/getTargetPosition$onPostMessage;

    .line 316
    invoke-direct {p0, v0}, Lo/ak;->ICustomTabsCallback(Lo/ak$onPostMessage;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public final onNavigationEvent(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lo/markSupported;",
            ">;)V"
        }
    .end annotation

    .line 224
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM events WHERE _id in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lo/ak;->ICustomTabsCallback(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5082
    iget-object v0, p0, Lo/ak;->onNavigationEvent:Lo/am;

    .line 6000
    new-instance v1, Lo/PreferenceGroup$extraCallback;

    invoke-direct {v1, v0}, Lo/PreferenceGroup$extraCallback;-><init>(Lo/am;)V

    .line 7000
    sget-object v0, Lo/shouldIgnore$ICustomTabsCallback;->ICustomTabsCallback:Lo/shouldIgnore$ICustomTabsCallback;

    .line 5082
    invoke-virtual {p0, v1, v0}, Lo/ak;->onPostMessage(Lo/ak$onMessageChannelReady;Lo/ak$onPostMessage;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 229
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-void
.end method

.method public final onPostMessage()I
    .locals 4

    .line 339
    iget-object v0, p0, Lo/ak;->onPostMessage:Lo/b;

    invoke-interface {v0}, Lo/b;->onPostMessage()J

    move-result-wide v0

    iget-object v2, p0, Lo/ak;->ICustomTabsCallback:Lo/aj;

    invoke-virtual {v2}, Lo/aj;->onNavigationEvent()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 15000
    new-instance v2, Lo/AsyncListUtil$DataCallback$extraCallback;

    invoke-direct {v2, v0, v1}, Lo/AsyncListUtil$DataCallback$extraCallback;-><init>(J)V

    .line 340
    invoke-direct {p0, v2}, Lo/ak;->ICustomTabsCallback(Lo/ak$onPostMessage;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final onPostMessage(Lo/OaidClient$Info;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/OaidClient$Info;",
            ")",
            "Ljava/lang/Iterable<",
            "Lo/markSupported;",
            ">;"
        }
    .end annotation

    .line 13000
    new-instance v0, Lo/submitList$ICustomTabsCallback;

    invoke-direct {v0, p0, p1}, Lo/submitList$ICustomTabsCallback;-><init>(Lo/ak;Lo/OaidClient$Info;)V

    .line 307
    invoke-direct {p0, v0}, Lo/ak;->ICustomTabsCallback(Lo/ak$onPostMessage;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    return-object p1
.end method

.method public final onPostMessage(Lo/ak$onMessageChannelReady;Lo/ak$onPostMessage;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/ak$onMessageChannelReady<",
            "TT;>;",
            "Lo/ak$onPostMessage<",
            "Ljava/lang/Throwable;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lo/ak;->extraCallback:Lo/b;

    invoke-interface {v0}, Lo/b;->onPostMessage()J

    move-result-wide v0

    .line 517
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lo/ak$onMessageChannelReady;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v2

    .line 519
    iget-object v3, p0, Lo/ak;->extraCallback:Lo/b;

    invoke-interface {v3}, Lo/b;->onPostMessage()J

    move-result-wide v3

    iget-object v5, p0, Lo/ak;->ICustomTabsCallback:Lo/aj;

    invoke-virtual {v5}, Lo/aj;->onPostMessage()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    .line 520
    invoke-interface {p2, v2}, Lo/ak$onPostMessage;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v2, 0x32

    .line 522
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method public final onPostMessage(Lo/OaidClient$Info;J)V
    .locals 1

    .line 12000
    new-instance v0, Lo/SwitchPreferenceCompat$onMessageChannelReady;

    invoke-direct {v0, p2, p3, p1}, Lo/SwitchPreferenceCompat$onMessageChannelReady;-><init>(JLo/OaidClient$Info;)V

    .line 282
    invoke-direct {p0, v0}, Lo/ak;->ICustomTabsCallback(Lo/ak$onPostMessage;)Ljava/lang/Object;

    return-void
.end method
