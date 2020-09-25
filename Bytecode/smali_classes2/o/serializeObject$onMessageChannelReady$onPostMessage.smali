.class public final Lo/serializeObject$onMessageChannelReady$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/serializeObject$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/serializeObject$onMessageChannelReady$onPostMessage$onMessageChannelReady;,
        Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/buildFrom;

.field private extraCallback:Lo/buildFrom;

.field private onMessageChannelReady:J

.field public final onNavigationEvent:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;JLo/buildFrom;Lo/buildFrom;)V
    .locals 0

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput-object p1, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage;->onPostMessage:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 538
    check-cast p2, Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    iput-object p2, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    .line 539
    iput-wide p3, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage;->onMessageChannelReady:J

    .line 540
    iput-object p5, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage;->ICustomTabsCallback:Lo/buildFrom;

    .line 541
    iput-object p6, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage;->extraCallback:Lo/buildFrom;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "severity"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;JLo/buildFrom;Lo/buildFrom;B)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v6, p6

    .line 521
    invoke-direct/range {v0 .. v6}, Lo/serializeObject$onMessageChannelReady$onPostMessage;-><init>(Ljava/lang/String;Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;JLo/buildFrom;Lo/buildFrom;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 551
    instance-of v0, p1, Lo/serializeObject$onMessageChannelReady$onPostMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 552
    check-cast p1, Lo/serializeObject$onMessageChannelReady$onPostMessage;

    .line 553
    iget-object v0, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage;->onPostMessage:Ljava/lang/String;

    iget-object v2, p1, Lo/serializeObject$onMessageChannelReady$onPostMessage;->onPostMessage:Ljava/lang/String;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_0

    .line 3052
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_8

    .line 553
    iget-object v0, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    iget-object v2, p1, Lo/serializeObject$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    if-eq v0, v2, :cond_3

    if-eqz v0, :cond_2

    .line 4052
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_8

    .line 554
    iget-wide v4, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage;->onMessageChannelReady:J

    iget-wide v6, p1, Lo/serializeObject$onMessageChannelReady$onPostMessage;->onMessageChannelReady:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_8

    iget-object v0, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage;->ICustomTabsCallback:Lo/buildFrom;

    iget-object v2, p1, Lo/serializeObject$onMessageChannelReady$onPostMessage;->ICustomTabsCallback:Lo/buildFrom;

    if-eq v0, v2, :cond_5

    if-eqz v0, :cond_4

    .line 5052
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_8

    .line 556
    iget-object v0, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage;->extraCallback:Lo/buildFrom;

    iget-object p1, p1, Lo/serializeObject$onMessageChannelReady$onPostMessage;->extraCallback:Lo/buildFrom;

    if-eq v0, p1, :cond_7

    if-eqz v0, :cond_6

    .line 6052
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    const/4 p1, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 p1, 0x1

    :goto_7
    if-eqz p1, :cond_8

    return v3

    :cond_8
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 546
    iget-object v1, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage;->onPostMessage:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage;->onMessageChannelReady:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage;->ICustomTabsCallback:Lo/buildFrom;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage;->extraCallback:Lo/buildFrom;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2077
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 6105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 564
    iget-object v1, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage;->onPostMessage:Ljava/lang/String;

    const-string v2, "description"

    .line 565
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage;->onNavigationEvent:Lo/serializeObject$onMessageChannelReady$onPostMessage$extraCallback;

    const-string v2, "severity"

    .line 566
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-wide v1, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage;->onMessageChannelReady:J

    const-string v3, "timestampNanos"

    .line 567
    invoke-virtual {v0, v3, v1, v2}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;J)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage;->ICustomTabsCallback:Lo/buildFrom;

    const-string v2, "channelRef"

    .line 568
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/serializeObject$onMessageChannelReady$onPostMessage;->extraCallback:Lo/buildFrom;

    const-string v2, "subchannelRef"

    .line 569
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 570
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
