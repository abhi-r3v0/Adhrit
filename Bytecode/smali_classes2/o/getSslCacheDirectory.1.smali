.class final Lo/getSslCacheDirectory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getSslCacheDirectory$ICustomTabsCallback;
    }
.end annotation


# static fields
.field static final extraCallback:Lo/getSslCacheDirectory;


# instance fields
.field final ICustomTabsCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/emptyMap$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:J

.field final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Lo/getSslCacheDirectory;

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lo/getSslCacheDirectory;-><init>(IJLjava/util/Set;)V

    sput-object v0, Lo/getSslCacheDirectory;->extraCallback:Lo/getSslCacheDirectory;

    return-void
.end method

.method constructor <init>(IJLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Set<",
            "Lo/emptyMap$onPostMessage;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lo/getSslCacheDirectory;->onPostMessage:I

    .line 46
    iput-wide p2, p0, Lo/getSslCacheDirectory;->onNavigationEvent:J

    .line 47
    invoke-static {p4}, Lo/UnavailableAnalyticsEventLogger;->onPostMessage(Ljava/util/Collection;)Lo/UnavailableAnalyticsEventLogger;

    move-result-object p1

    iput-object p1, p0, Lo/getSslCacheDirectory;->ICustomTabsCallback:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 58
    :cond_1
    check-cast p1, Lo/getSslCacheDirectory;

    .line 59
    iget v2, p0, Lo/getSslCacheDirectory;->onPostMessage:I

    iget v3, p1, Lo/getSslCacheDirectory;->onPostMessage:I

    if-ne v2, v3, :cond_4

    iget-wide v2, p0, Lo/getSslCacheDirectory;->onNavigationEvent:J

    iget-wide v4, p1, Lo/getSslCacheDirectory;->onNavigationEvent:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    iget-object v2, p0, Lo/getSslCacheDirectory;->ICustomTabsCallback:Ljava/util/Set;

    iget-object p1, p1, Lo/getSslCacheDirectory;->ICustomTabsCallback:Ljava/util/Set;

    if-eq v2, p1, :cond_3

    if-eqz v2, :cond_2

    .line 1052
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_4

    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    iget v1, p0, Lo/getSslCacheDirectory;->onPostMessage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lo/getSslCacheDirectory;->onNavigationEvent:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/getSslCacheDirectory;->ICustomTabsCallback:Ljava/util/Set;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1077
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 71
    iget v1, p0, Lo/getSslCacheDirectory;->onPostMessage:I

    const-string v2, "maxAttempts"

    .line 72
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;I)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-wide v1, p0, Lo/getSslCacheDirectory;->onNavigationEvent:J

    const-string v3, "hedgingDelayNanos"

    .line 73
    invoke-virtual {v0, v3, v1, v2}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;J)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/getSslCacheDirectory;->ICustomTabsCallback:Ljava/util/Set;

    const-string v2, "nonFatalStatusCodes"

    .line 74
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
