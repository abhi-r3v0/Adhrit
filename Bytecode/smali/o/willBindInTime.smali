.class public final Lo/willBindInTime;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0008\u001a\u00020\t2\n\u0010\n\u001a\u00060\u0005j\u0002`\u0006H\u0016J\u0015\u0010\u000b\u001a\u00020\u00072\n\u0010\n\u001a\u00060\u0005j\u0002`\u0006H\u0082\u0002J\u001e\u0010\u000c\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0008\u0012\u00060\u0005j\u0002`\u0006\u0012\u0004\u0012\u00020\u000f0\u000e0\rH\u0016J\u0014\u0010\u0010\u001a\u00020\u000f2\n\u0010\n\u001a\u00060\u0005j\u0002`\u0006H\u0016J\u0008\u0010\u0011\u001a\u00020\tH\u0016J\u0014\u0010\u0012\u001a\u00020\t2\n\u0010\n\u001a\u00060\u0005j\u0002`\u0006H\u0016R\u001e\u0010\u0003\u001a\u0012\u0012\u0008\u0012\u00060\u0005j\u0002`\u0006\u0012\u0004\u0012\u00020\u00070\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dreamplug/hawk/HawkImpl;",
        "Lcom/dreamplug/hawk/HawkApi;",
        "()V",
        "trackedItems",
        "",
        "",
        "Lcom/dreamplug/hawk/TargetKey;",
        "Lcom/dreamplug/hawk/TrackedItem;",
        "addTarget",
        "",
        "targetKey",
        "get",
        "getAllTargets",
        "",
        "Lkotlin/Pair;",
        "",
        "getTime",
        "kill",
        "removeTarget",
        "Hawk"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/onPrepareSubMenu$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static final onMessageChannelReady:Lo/willBindInTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lo/willBindInTime;

    invoke-direct {v0}, Lo/willBindInTime;-><init>()V

    sput-object v0, Lo/willBindInTime;->onMessageChannelReady:Lo/willBindInTime;

    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lo/willBindInTime;->extraCallback:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/addWrite<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 17
    sget-object v0, Lo/willBindInTime;->extraCallback:Ljava/util/Map;

    .line 39
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 40
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/onPrepareSubMenu$extraCallback;

    .line 1005
    iget-wide v6, v6, Lo/onPrepareSubMenu$extraCallback;->onMessageChannelReady:J

    cmp-long v8, v6, v4

    if-lez v8, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_0

    .line 42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 46
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 47
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/onPrepareSubMenu$extraCallback;

    .line 1026
    iget v7, v6, Lo/onPrepareSubMenu$extraCallback;->ICustomTabsCallback:I

    if-eqz v7, :cond_3

    .line 1043
    iget-wide v7, v6, Lo/onPrepareSubMenu$extraCallback;->onMessageChannelReady:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v6, Lo/onPrepareSubMenu$extraCallback;->onPostMessage:J

    sub-long/2addr v9, v11

    add-long/2addr v7, v9

    iput-wide v7, v6, Lo/onPrepareSubMenu$extraCallback;->onMessageChannelReady:J

    .line 1044
    iput-wide v4, v6, Lo/onPrepareSubMenu$extraCallback;->onPostMessage:J

    .line 1028
    iput v3, v6, Lo/onPrepareSubMenu$extraCallback;->ICustomTabsCallback:I

    .line 21
    :cond_3
    new-instance v6, Lo/addWrite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/onPrepareSubMenu$extraCallback;

    .line 2005
    iget-wide v8, v2, Lo/onPrepareSubMenu$extraCallback;->onMessageChannelReady:J

    .line 21
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v6, v7, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 49
    :cond_4
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method static extraCallback(Ljava/lang/String;)Lo/onPrepareSubMenu$extraCallback;
    .locals 2

    .line 31
    sget-object v0, Lo/willBindInTime;->extraCallback:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onPrepareSubMenu$extraCallback;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lo/onPrepareSubMenu$extraCallback;

    invoke-direct {v0, p0}, Lo/onPrepareSubMenu$extraCallback;-><init>(Ljava/lang/String;)V

    .line 34
    sget-object v1, Lo/willBindInTime;->extraCallback:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static onPostMessage()V
    .locals 4

    .line 25
    sget-object v0, Lo/willBindInTime;->extraCallback:Ljava/util/Map;

    .line 50
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onPrepareSubMenu$extraCallback;

    const-wide/16 v2, 0x0

    .line 2033
    iput-wide v2, v1, Lo/onPrepareSubMenu$extraCallback;->onPostMessage:J

    .line 2034
    iput-wide v2, v1, Lo/onPrepareSubMenu$extraCallback;->onMessageChannelReady:J

    const/4 v2, 0x0

    .line 2035
    iput v2, v1, Lo/onPrepareSubMenu$extraCallback;->ICustomTabsCallback:I

    goto :goto_0

    :cond_0
    return-void
.end method
