.class public abstract Lo/setSessionTimeoutInterval;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field private transient extraCallback:Lo/getRemoteConfigFetchInterval;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getRemoteConfigFetchInterval<",
            "TV;>;"
        }
    .end annotation
.end field

.field private transient onNavigationEvent:Lo/getResponseTimeExpectationsFetchInterval;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getResponseTimeExpectationsFetchInterval<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient onPostMessage:Lo/getResponseTimeExpectationsFetchInterval;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getResponseTimeExpectationsFetchInterval<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map$Entry;

    .line 49
    sput-object v0, Lo/setSessionTimeoutInterval;->ICustomTabsCallback:[Ljava/util/Map$Entry;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNavigationEvent()Lo/setSessionTimeoutInterval;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/setSessionTimeoutInterval<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lo/getActiveConvFetchBackoffRatio;->onPostMessage:Lo/setSessionTimeoutInterval;

    return-object v0
.end method


# virtual methods
.method abstract ICustomTabsCallback()Lo/getResponseTimeExpectationsFetchInterval;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getResponseTimeExpectationsFetchInterval<",
            "TK;>;"
        }
    .end annotation
.end method

.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lo/setSessionTimeoutInterval;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 9
    invoke-virtual {p0}, Lo/setSessionTimeoutInterval;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lo/getRemoteConfigFetchInterval;

    invoke-virtual {v0, p1}, Lo/getRemoteConfigFetchInterval;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/setSessionTimeoutInterval;->onNavigationEvent:Lo/getResponseTimeExpectationsFetchInterval;

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lo/setSessionTimeoutInterval;->onMessageChannelReady()Lo/getResponseTimeExpectationsFetchInterval;

    move-result-object v0

    iput-object v0, p0, Lo/setSessionTimeoutInterval;->onNavigationEvent:Lo/getResponseTimeExpectationsFetchInterval;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 15
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 16
    check-cast p1, Ljava/util/Map;

    .line 17
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lo/setSessionTimeoutInterval;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public hashCode()I
    .locals 1

    .line 20
    invoke-virtual {p0}, Lo/setSessionTimeoutInterval;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lo/getResponseTimeExpectationsFetchInterval;

    invoke-static {v0}, Lo/getMsgFetchIntervalNormal;->onMessageChannelReady(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 7
    invoke-virtual {p0}, Lo/setSessionTimeoutInterval;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 46
    iget-object v0, p0, Lo/setSessionTimeoutInterval;->onPostMessage:Lo/getResponseTimeExpectationsFetchInterval;

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lo/setSessionTimeoutInterval;->ICustomTabsCallback()Lo/getResponseTimeExpectationsFetchInterval;

    move-result-object v0

    iput-object v0, p0, Lo/setSessionTimeoutInterval;->onPostMessage:Lo/getResponseTimeExpectationsFetchInterval;

    :cond_0
    return-object v0
.end method

.method abstract onMessageChannelReady()Lo/getResponseTimeExpectationsFetchInterval;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getResponseTimeExpectationsFetchInterval<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method abstract onPostMessage()Lo/getRemoteConfigFetchInterval;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getRemoteConfigFetchInterval<",
            "TV;>;"
        }
    .end annotation
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 22
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-ltz v0, :cond_2

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    int-to-long v2, v0

    const/4 v0, 0x3

    shl-long/2addr v2, v0

    const-wide/32 v4, 0x40000000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 29
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const-string v0, ", "

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x0

    .line 33
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v0, 0x7d

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 25
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "size"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x28

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be negative but was: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/setSessionTimeoutInterval;->extraCallback:Lo/getRemoteConfigFetchInterval;

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lo/setSessionTimeoutInterval;->onPostMessage()Lo/getRemoteConfigFetchInterval;

    move-result-object v0

    iput-object v0, p0, Lo/setSessionTimeoutInterval;->extraCallback:Lo/getRemoteConfigFetchInterval;

    :cond_0
    return-object v0
.end method
