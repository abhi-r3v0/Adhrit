.class public final Lo/serverCacheEstimatedSizeInBytes;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/serverCacheEstimatedSizeInBytes$extraCallback;,
        Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

.field private static synthetic onMessageChannelReady:Z


# instance fields
.field public final extraCallback:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    const-class v0, Lo/serverCacheEstimatedSizeInBytes;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/serverCacheEstimatedSizeInBytes;->onMessageChannelReady:Z

    .line 52
    new-instance v0, Lo/serverCacheEstimatedSizeInBytes;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/serverCacheEstimatedSizeInBytes;-><init>(Ljava/util/Map;)V

    sput-object v0, Lo/serverCacheEstimatedSizeInBytes;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-boolean v0, Lo/serverCacheEstimatedSizeInBytes;->onMessageChannelReady:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 56
    :cond_1
    :goto_0
    iput-object p1, p0, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;B)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lo/serverCacheEstimatedSizeInBytes;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic ICustomTabsCallback(Lo/serverCacheEstimatedSizeInBytes;)Ljava/util/Map;
    .locals 0

    .line 48
    iget-object p0, p0, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    return-object p0
.end method

.method public static onMessageChannelReady()Lo/serverCacheEstimatedSizeInBytes$extraCallback;
    .locals 3

    .line 100
    new-instance v0, Lo/serverCacheEstimatedSizeInBytes$extraCallback;

    sget-object v1, Lo/serverCacheEstimatedSizeInBytes;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/serverCacheEstimatedSizeInBytes$extraCallback;-><init>(Lo/serverCacheEstimatedSizeInBytes;B)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 178
    :cond_1
    check-cast p1, Lo/serverCacheEstimatedSizeInBytes;

    .line 179
    iget-object v2, p0, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iget-object v3, p1, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    .line 182
    :cond_2
    iget-object v2, p0, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 183
    iget-object v4, p1, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return v1

    .line 186
    :cond_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p1, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v4, v3, :cond_6

    if-eqz v4, :cond_5

    .line 1052
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_3

    return v1

    :cond_7
    return v0

    :cond_8
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 6

    .line 205
    iget-object v0, p0, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 206
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v4, v5

    .line 1077
    invoke-static {v4}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lo/serverCacheEstimatedSizeInBytes;->extraCallback:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
