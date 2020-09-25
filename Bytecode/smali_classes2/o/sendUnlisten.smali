.class final Lo/sendUnlisten;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/sendUnlisten$onMessageChannelReady;
    }
.end annotation


# static fields
.field static final ICustomTabsCallback$Stub:Lo/sendUnlisten;


# instance fields
.field final ICustomTabsCallback:J

.field final extraCallback:I

.field final onMessageChannelReady:J

.field final onNavigationEvent:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/emptyMap$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field final onPostMessage:D


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 41
    new-instance v9, Lo/sendUnlisten;

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lo/sendUnlisten;-><init>(IJJDLjava/util/Set;)V

    sput-object v9, Lo/sendUnlisten;->ICustomTabsCallback$Stub:Lo/sendUnlisten;

    return-void
.end method

.method constructor <init>(IJJDLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJD",
            "Ljava/util/Set<",
            "Lo/emptyMap$onPostMessage;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lo/sendUnlisten;->extraCallback:I

    .line 55
    iput-wide p2, p0, Lo/sendUnlisten;->ICustomTabsCallback:J

    .line 56
    iput-wide p4, p0, Lo/sendUnlisten;->onMessageChannelReady:J

    .line 57
    iput-wide p6, p0, Lo/sendUnlisten;->onPostMessage:D

    .line 58
    invoke-static {p8}, Lo/UnavailableAnalyticsEventLogger;->onPostMessage(Ljava/util/Collection;)Lo/UnavailableAnalyticsEventLogger;

    move-result-object p1

    iput-object p1, p0, Lo/sendUnlisten;->onNavigationEvent:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 73
    instance-of v0, p1, Lo/sendUnlisten;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 76
    :cond_0
    check-cast p1, Lo/sendUnlisten;

    .line 77
    iget v0, p0, Lo/sendUnlisten;->extraCallback:I

    iget v2, p1, Lo/sendUnlisten;->extraCallback:I

    if-ne v0, v2, :cond_3

    iget-wide v2, p0, Lo/sendUnlisten;->ICustomTabsCallback:J

    iget-wide v4, p1, Lo/sendUnlisten;->ICustomTabsCallback:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    iget-wide v2, p0, Lo/sendUnlisten;->onMessageChannelReady:J

    iget-wide v4, p1, Lo/sendUnlisten;->onMessageChannelReady:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    iget-wide v2, p0, Lo/sendUnlisten;->onPostMessage:D

    iget-wide v4, p1, Lo/sendUnlisten;->onPostMessage:D

    .line 80
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/sendUnlisten;->onNavigationEvent:Ljava/util/Set;

    iget-object p1, p1, Lo/sendUnlisten;->onNavigationEvent:Ljava/util/Set;

    const/4 v2, 0x1

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_1

    .line 2052
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 63
    iget v1, p0, Lo/sendUnlisten;->extraCallback:I

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lo/sendUnlisten;->ICustomTabsCallback:J

    .line 65
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lo/sendUnlisten;->onMessageChannelReady:J

    .line 66
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lo/sendUnlisten;->onPostMessage:D

    .line 67
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/sendUnlisten;->onNavigationEvent:Ljava/util/Set;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1077
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 2105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 86
    iget v1, p0, Lo/sendUnlisten;->extraCallback:I

    const-string v3, "maxAttempts"

    .line 87
    invoke-virtual {v0, v3, v1}, Lo/buildAppRequest$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;I)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-wide v3, p0, Lo/sendUnlisten;->ICustomTabsCallback:J

    const-string v1, "initialBackoffNanos"

    .line 88
    invoke-virtual {v0, v1, v3, v4}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;J)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-wide v3, p0, Lo/sendUnlisten;->onMessageChannelReady:J

    const-string v1, "maxBackoffNanos"

    .line 89
    invoke-virtual {v0, v1, v3, v4}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;J)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-wide v3, p0, Lo/sendUnlisten;->onPostMessage:D

    .line 2201
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 3361
    new-instance v3, Lo/buildAppRequest$onPostMessage$extraCallback;

    invoke-direct {v3, v2}, Lo/buildAppRequest$onPostMessage$extraCallback;-><init>(B)V

    .line 3362
    iget-object v2, v0, Lo/buildAppRequest$onPostMessage;->extraCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    iput-object v3, v2, Lo/buildAppRequest$onPostMessage$extraCallback;->ICustomTabsCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    iput-object v3, v0, Lo/buildAppRequest$onPostMessage;->extraCallback:Lo/buildAppRequest$onPostMessage$extraCallback;

    .line 2374
    iput-object v1, v3, Lo/buildAppRequest$onPostMessage$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    const-string v1, "backoffMultiplier"

    .line 2375
    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lo/buildAppRequest$onPostMessage$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lo/sendUnlisten;->onNavigationEvent:Ljava/util/Set;

    const-string v2, "retryableStatusCodes"

    .line 91
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
