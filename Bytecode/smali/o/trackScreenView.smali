.class final Lo/trackScreenView;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lo/DreamAppGlideModule;

.field private ICustomTabsCallback$Stub:J

.field private asInterface:J

.field private extraCallback:Z

.field private onMessageChannelReady:Z

.field private final onNavigationEvent:Lo/getWaivers;

.field private onPostMessage:Z

.field private onTransact:J


# direct methods
.method constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lo/getWaivers;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lo/getWaivers;-><init>(J)V

    iput-object v0, p0, Lo/trackScreenView;->onNavigationEvent:Lo/getWaivers;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 54
    iput-wide v0, p0, Lo/trackScreenView;->onTransact:J

    .line 55
    iput-wide v0, p0, Lo/trackScreenView;->ICustomTabsCallback$Stub:J

    .line 56
    iput-wide v0, p0, Lo/trackScreenView;->asInterface:J

    .line 57
    new-instance v0, Lo/DreamAppGlideModule;

    invoke-direct {v0}, Lo/DreamAppGlideModule;-><init>()V

    iput-object v0, p0, Lo/trackScreenView;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    return-void
.end method

.method private ICustomTabsCallback(Lo/Event$Action;Lo/SessionInfo;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 163
    invoke-interface {p1}, Lo/Event$Action;->onPostMessage()J

    move-result-wide v0

    const-wide/32 v2, 0x1b8a0

    .line 164
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    int-to-long v4, v3

    sub-long/2addr v0, v4

    .line 166
    invoke-interface {p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v4

    const/4 v2, 0x1

    cmp-long v6, v4, v0

    if-eqz v6, :cond_0

    .line 167
    iput-wide v0, p2, Lo/SessionInfo;->onNavigationEvent:J

    return v2

    .line 171
    :cond_0
    iget-object p2, p0, Lo/trackScreenView;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {p2, v3}, Lo/DreamAppGlideModule;->extraCallback(I)V

    .line 172
    invoke-interface {p1}, Lo/Event$Action;->extraCallback()V

    .line 173
    iget-object p2, p0, Lo/trackScreenView;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    iget-object p2, p2, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v3}, Lo/Event$Action;->extraCallback([BII)V

    .line 175
    iget-object p1, p0, Lo/trackScreenView;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-direct {p0, p1, p3}, Lo/trackScreenView;->extraCallback(Lo/DreamAppGlideModule;I)J

    move-result-wide p1

    iput-wide p1, p0, Lo/trackScreenView;->ICustomTabsCallback$Stub:J

    .line 176
    iput-boolean v2, p0, Lo/trackScreenView;->onPostMessage:Z

    return v0
.end method

.method private extraCallback(Lo/DreamAppGlideModule;I)J
    .locals 7

    .line 181
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v0

    .line 182
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v1, v0, :cond_1

    .line 186
    iget-object v4, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    aget-byte v4, v4, v1

    const/16 v5, 0x47

    if-ne v4, v5, :cond_0

    .line 189
    invoke-static {p1, v1, p2}, Lo/trackException;->ICustomTabsCallback(Lo/DreamAppGlideModule;II)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    return-wide v4

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method private onMessageChannelReady(Lo/Event$Action;)I
    .locals 2

    .line 120
    iget-object v0, p0, Lo/trackScreenView;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    sget-object v1, Lo/ThirdPartyAuthorizeRequest;->asBinder:[B

    invoke-virtual {v0, v1}, Lo/DreamAppGlideModule;->extraCallback([B)V

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lo/trackScreenView;->onMessageChannelReady:Z

    .line 122
    invoke-interface {p1}, Lo/Event$Action;->extraCallback()V

    const/4 p1, 0x0

    return p1
.end method

.method private onNavigationEvent(Lo/Event$Action;Lo/SessionInfo;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 128
    invoke-interface {p1}, Lo/Event$Action;->onPostMessage()J

    move-result-wide v0

    const-wide/32 v2, 0x1b8a0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 130
    invoke-interface {p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v2

    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 131
    iput-wide v4, p2, Lo/SessionInfo;->onNavigationEvent:J

    return v0

    .line 135
    :cond_0
    iget-object p2, p0, Lo/trackScreenView;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-virtual {p2, v1}, Lo/DreamAppGlideModule;->extraCallback(I)V

    .line 136
    invoke-interface {p1}, Lo/Event$Action;->extraCallback()V

    .line 137
    iget-object p2, p0, Lo/trackScreenView;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    iget-object p2, p2, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lo/Event$Action;->extraCallback([BII)V

    .line 139
    iget-object p1, p0, Lo/trackScreenView;->ICustomTabsCallback:Lo/DreamAppGlideModule;

    invoke-direct {p0, p1, p3}, Lo/trackScreenView;->onNavigationEvent(Lo/DreamAppGlideModule;I)J

    move-result-wide p1

    iput-wide p1, p0, Lo/trackScreenView;->onTransact:J

    .line 140
    iput-boolean v0, p0, Lo/trackScreenView;->extraCallback:Z

    return v2
.end method

.method private onNavigationEvent(Lo/DreamAppGlideModule;I)J
    .locals 7

    .line 145
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v0

    .line 146
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v1

    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v0, v1, :cond_1

    .line 150
    iget-object v4, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    aget-byte v4, v4, v0

    const/16 v5, 0x47

    if-ne v4, v5, :cond_0

    .line 153
    invoke-static {p1, v0, p2}, Lo/trackException;->ICustomTabsCallback(Lo/DreamAppGlideModule;II)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    return-wide v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lo/trackScreenView;->asInterface:J

    return-wide v0
.end method

.method public final extraCallback()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lo/trackScreenView;->onMessageChannelReady:Z

    return v0
.end method

.method public final onMessageChannelReady(Lo/Event$Action;Lo/SessionInfo;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-gtz p3, :cond_0

    .line 83
    invoke-direct {p0, p1}, Lo/trackScreenView;->onMessageChannelReady(Lo/Event$Action;)I

    move-result p1

    return p1

    .line 85
    :cond_0
    iget-boolean v0, p0, Lo/trackScreenView;->onPostMessage:Z

    if-nez v0, :cond_1

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lo/trackScreenView;->ICustomTabsCallback(Lo/Event$Action;Lo/SessionInfo;I)I

    move-result p1

    return p1

    .line 88
    :cond_1
    iget-wide v0, p0, Lo/trackScreenView;->ICustomTabsCallback$Stub:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 89
    invoke-direct {p0, p1}, Lo/trackScreenView;->onMessageChannelReady(Lo/Event$Action;)I

    move-result p1

    return p1

    .line 91
    :cond_2
    iget-boolean v0, p0, Lo/trackScreenView;->extraCallback:Z

    if-nez v0, :cond_3

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lo/trackScreenView;->onNavigationEvent(Lo/Event$Action;Lo/SessionInfo;I)I

    move-result p1

    return p1

    .line 94
    :cond_3
    iget-wide p2, p0, Lo/trackScreenView;->onTransact:J

    cmp-long v0, p2, v2

    if-nez v0, :cond_4

    .line 95
    invoke-direct {p0, p1}, Lo/trackScreenView;->onMessageChannelReady(Lo/Event$Action;)I

    move-result p1

    return p1

    .line 98
    :cond_4
    iget-object v0, p0, Lo/trackScreenView;->onNavigationEvent:Lo/getWaivers;

    invoke-virtual {v0, p2, p3}, Lo/getWaivers;->extraCallback(J)J

    move-result-wide p2

    .line 99
    iget-object v0, p0, Lo/trackScreenView;->onNavigationEvent:Lo/getWaivers;

    iget-wide v1, p0, Lo/trackScreenView;->ICustomTabsCallback$Stub:J

    invoke-virtual {v0, v1, v2}, Lo/getWaivers;->extraCallback(J)J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 100
    iput-wide v0, p0, Lo/trackScreenView;->asInterface:J

    .line 101
    invoke-direct {p0, p1}, Lo/trackScreenView;->onMessageChannelReady(Lo/Event$Action;)I

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady()Lo/getWaivers;
    .locals 1

    .line 116
    iget-object v0, p0, Lo/trackScreenView;->onNavigationEvent:Lo/getWaivers;

    return-object v0
.end method
