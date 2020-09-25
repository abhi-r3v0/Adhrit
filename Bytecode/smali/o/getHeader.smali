.class public Lo/getHeader;
.super Lo/c$a;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lo/setReferrerCustomerId;

.field private ICustomTabsCallback$Stub:J

.field private extraCallback:J

.field private final onMessageChannelReady:Lo/DreamAppGlideModule;

.field private final onNavigationEvent:Lo/q;

.field private onPostMessage:Lo/getDate;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x5

    .line 46
    invoke-direct {p0, v0}, Lo/c$a;-><init>(I)V

    .line 47
    new-instance v0, Lo/q;

    invoke-direct {v0}, Lo/q;-><init>()V

    iput-object v0, p0, Lo/getHeader;->onNavigationEvent:Lo/q;

    .line 48
    new-instance v0, Lo/setReferrerCustomerId;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/setReferrerCustomerId;-><init>(I)V

    iput-object v0, p0, Lo/getHeader;->ICustomTabsCallback:Lo/setReferrerCustomerId;

    .line 49
    new-instance v0, Lo/DreamAppGlideModule;

    invoke-direct {v0}, Lo/DreamAppGlideModule;-><init>()V

    iput-object v0, p0, Lo/getHeader;->onMessageChannelReady:Lo/DreamAppGlideModule;

    return-void
.end method

.method private INotificationSideChannel()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 128
    iput-wide v0, p0, Lo/getHeader;->ICustomTabsCallback$Stub:J

    .line 129
    iget-object v0, p0, Lo/getHeader;->onPostMessage:Lo/getDate;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0}, Lo/getDate;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method private onPostMessage(Ljava/nio/ByteBuffer;)[F
    .locals 3

    .line 115
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 118
    :cond_0
    iget-object v0, p0, Lo/getHeader;->onMessageChannelReady:Lo/DreamAppGlideModule;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lo/DreamAppGlideModule;->ICustomTabsCallback([BI)V

    .line 119
    iget-object v0, p0, Lo/getHeader;->onMessageChannelReady:Lo/DreamAppGlideModule;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    const/4 p1, 0x3

    new-array v0, p1, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 122
    iget-object v2, p0, Lo/getHeader;->onMessageChannelReady:Lo/DreamAppGlideModule;

    invoke-virtual {v2}, Lo/DreamAppGlideModule;->ICustomTabsService()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public ICustomTabsService$Stub$Proxy()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public IPostMessageService$Stub()Z
    .locals 1

    .line 106
    invoke-virtual {p0}, Lo/c$a;->onTransact()Z

    move-result v0

    return v0
.end method

.method public extraCallback(Lo/p$a;)I
    .locals 1

    .line 54
    iget-object p1, p1, Lo/p$a;->onTransact:Ljava/lang/String;

    const-string v0, "application/x-camera-motion"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMessageChannelReady(JJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 86
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lo/c$a;->onTransact()Z

    move-result p3

    if-nez p3, :cond_2

    iget-wide p3, p0, Lo/getHeader;->ICustomTabsCallback$Stub:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long v2, p3, v0

    if-gez v2, :cond_2

    .line 87
    iget-object p3, p0, Lo/getHeader;->ICustomTabsCallback:Lo/setReferrerCustomerId;

    invoke-virtual {p3}, Lo/getChannel;->onMessageChannelReady()V

    .line 88
    iget-object p3, p0, Lo/getHeader;->onNavigationEvent:Lo/q;

    iget-object p4, p0, Lo/getHeader;->ICustomTabsCallback:Lo/setReferrerCustomerId;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Lo/getHeader;->extraCallback(Lo/q;Lo/setReferrerCustomerId;Z)I

    move-result p3

    const/4 p4, -0x4

    if-ne p3, p4, :cond_2

    .line 89
    iget-object p3, p0, Lo/getHeader;->ICustomTabsCallback:Lo/setReferrerCustomerId;

    invoke-virtual {p3}, Lo/getChannel;->r_()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 93
    :cond_1
    iget-object p3, p0, Lo/getHeader;->ICustomTabsCallback:Lo/setReferrerCustomerId;

    invoke-virtual {p3}, Lo/setReferrerCustomerId;->asBinder()V

    .line 94
    iget-object p3, p0, Lo/getHeader;->ICustomTabsCallback:Lo/setReferrerCustomerId;

    iget-wide p3, p3, Lo/setReferrerCustomerId;->onPostMessage:J

    iput-wide p3, p0, Lo/getHeader;->ICustomTabsCallback$Stub:J

    .line 95
    iget-object p3, p0, Lo/getHeader;->onPostMessage:Lo/getDate;

    if-eqz p3, :cond_0

    .line 96
    iget-object p3, p0, Lo/getHeader;->ICustomTabsCallback:Lo/setReferrerCustomerId;

    iget-object p3, p3, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p3}, Lo/getHeader;->onPostMessage(Ljava/nio/ByteBuffer;)[F

    move-result-object p3

    if-eqz p3, :cond_0

    .line 98
    iget-object p4, p0, Lo/getHeader;->onPostMessage:Lo/getDate;

    invoke-static {p4}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lo/getDate;

    iget-wide v0, p0, Lo/getHeader;->ICustomTabsCallback$Stub:J

    iget-wide v2, p0, Lo/getHeader;->extraCallback:J

    sub-long/2addr v0, v2

    invoke-interface {p4, v0, v1, p3}, Lo/getDate;->onNavigationEvent(J[F)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onMessageChannelReady([Lo/p$a;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 70
    iput-wide p2, p0, Lo/getHeader;->extraCallback:J

    return-void
.end method

.method public onPostMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 62
    check-cast p2, Lo/getDate;

    iput-object p2, p0, Lo/getHeader;->onPostMessage:Lo/getDate;

    return-void

    .line 64
    :cond_0
    invoke-super {p0, p1, p2}, Lo/c$a;->onPostMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onPostMessage(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lo/getHeader;->INotificationSideChannel()V

    return-void
.end method

.method public updateVisuals()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lo/getHeader;->INotificationSideChannel()V

    return-void
.end method
