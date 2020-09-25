.class public final Lo/serverCacheEstimatedSizeInBytes$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/serverCacheEstimatedSizeInBytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# static fields
.field private static synthetic extraCallback:Z


# instance fields
.field public ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 214
    const-class v0, Lo/serverCacheEstimatedSizeInBytes;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->extraCallback:Z

    return-void
.end method

.method private constructor <init>(Lo/serverCacheEstimatedSizeInBytes;)V
    .locals 1

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    sget-boolean v0, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->extraCallback:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 220
    :cond_1
    :goto_0
    iput-object p1, p0, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes;

    return-void
.end method

.method public synthetic constructor <init>(Lo/serverCacheEstimatedSizeInBytes;B)V
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;-><init>(Lo/serverCacheEstimatedSizeInBytes;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/serverCacheEstimatedSizeInBytes;
    .locals 4

    .line 264
    iget-object v0, p0, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes;

    invoke-static {v0}, Lo/serverCacheEstimatedSizeInBytes;->ICustomTabsCallback(Lo/serverCacheEstimatedSizeInBytes;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 266
    iget-object v2, p0, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    iget-object v2, p0, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 270
    :cond_1
    new-instance v0, Lo/serverCacheEstimatedSizeInBytes;

    iget-object v1, p0, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/serverCacheEstimatedSizeInBytes;-><init>(Ljava/util/Map;B)V

    iput-object v0, p0, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes;

    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    .line 273
    :cond_2
    iget-object v0, p0, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes;

    return-object v0
.end method

.method public final onMessageChannelReady(Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;Ljava/lang/Object;)Lo/serverCacheEstimatedSizeInBytes$extraCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady<",
            "TT;>;TT;)",
            "Lo/serverCacheEstimatedSizeInBytes$extraCallback;"
        }
    .end annotation

    .line 1224
    iget-object v0, p0, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1225
    new-instance v0, Ljava/util/IdentityHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    .line 1227
    :cond_0
    iget-object v0, p0, Lo/serverCacheEstimatedSizeInBytes$extraCallback;->ICustomTabsCallback:Ljava/util/Map;

    .line 231
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
