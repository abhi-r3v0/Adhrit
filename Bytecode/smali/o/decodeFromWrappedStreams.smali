.class public final Lo/decodeFromWrappedStreams;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getSessionId;


# instance fields
.field private extraCallback:Lo/getWaivers;

.field private final onNavigationEvent:Lo/PublisherException;

.field private final onPostMessage:Lo/DreamAppGlideModule;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lo/DreamAppGlideModule;

    invoke-direct {v0}, Lo/DreamAppGlideModule;-><init>()V

    iput-object v0, p0, Lo/decodeFromWrappedStreams;->onPostMessage:Lo/DreamAppGlideModule;

    .line 44
    new-instance v0, Lo/PublisherException;

    invoke-direct {v0}, Lo/PublisherException;-><init>()V

    iput-object v0, p0, Lo/decodeFromWrappedStreams;->onNavigationEvent:Lo/PublisherException;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/UPIJSInterface$2;)Lo/callAPI;
    .locals 7

    .line 51
    iget-object v0, p0, Lo/decodeFromWrappedStreams;->extraCallback:Lo/getWaivers;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lo/UPIJSInterface$2;->onMessageChannelReady:J

    iget-object v2, p0, Lo/decodeFromWrappedStreams;->extraCallback:Lo/getWaivers;

    .line 52
    invoke-virtual {v2}, Lo/getWaivers;->onNavigationEvent()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 53
    :cond_0
    new-instance v0, Lo/getWaivers;

    iget-wide v1, p1, Lo/setReferrerCustomerId;->onPostMessage:J

    invoke-direct {v0, v1, v2}, Lo/getWaivers;-><init>(J)V

    iput-object v0, p0, Lo/decodeFromWrappedStreams;->extraCallback:Lo/getWaivers;

    .line 54
    iget-wide v1, p1, Lo/setReferrerCustomerId;->onPostMessage:J

    iget-wide v3, p1, Lo/UPIJSInterface$2;->onMessageChannelReady:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lo/getWaivers;->onPostMessage(J)J

    .line 57
    :cond_1
    iget-object p1, p1, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    .line 60
    iget-object v1, p0, Lo/decodeFromWrappedStreams;->onPostMessage:Lo/DreamAppGlideModule;

    invoke-virtual {v1, v0, p1}, Lo/DreamAppGlideModule;->ICustomTabsCallback([BI)V

    .line 61
    iget-object v1, p0, Lo/decodeFromWrappedStreams;->onNavigationEvent:Lo/PublisherException;

    invoke-virtual {v1, v0, p1}, Lo/PublisherException;->ICustomTabsCallback([BI)V

    .line 64
    iget-object p1, p0, Lo/decodeFromWrappedStreams;->onNavigationEvent:Lo/PublisherException;

    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 65
    iget-object p1, p0, Lo/decodeFromWrappedStreams;->onNavigationEvent:Lo/PublisherException;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result p1

    int-to-long v1, p1

    const/16 p1, 0x20

    shl-long/2addr v1, p1

    .line 66
    iget-object v3, p0, Lo/decodeFromWrappedStreams;->onNavigationEvent:Lo/PublisherException;

    invoke-virtual {v3, p1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result p1

    int-to-long v3, p1

    or-long/2addr v1, v3

    .line 68
    iget-object p1, p0, Lo/decodeFromWrappedStreams;->onNavigationEvent:Lo/PublisherException;

    const/16 v3, 0x14

    invoke-virtual {p1, v3}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 69
    iget-object p1, p0, Lo/decodeFromWrappedStreams;->onNavigationEvent:Lo/PublisherException;

    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result p1

    .line 70
    iget-object v3, p0, Lo/decodeFromWrappedStreams;->onNavigationEvent:Lo/PublisherException;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v3

    const/4 v4, 0x0

    .line 73
    iget-object v5, p0, Lo/decodeFromWrappedStreams;->onPostMessage:Lo/DreamAppGlideModule;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    if-eqz v3, :cond_6

    const/16 v5, 0xff

    if-eq v3, v5, :cond_5

    const/4 p1, 0x4

    if-eq v3, p1, :cond_4

    const/4 p1, 0x5

    if-eq v3, p1, :cond_3

    const/4 p1, 0x6

    if-eq v3, p1, :cond_2

    goto :goto_0

    .line 86
    :cond_2
    iget-object p1, p0, Lo/decodeFromWrappedStreams;->onPostMessage:Lo/DreamAppGlideModule;

    iget-object v3, p0, Lo/decodeFromWrappedStreams;->extraCallback:Lo/getWaivers;

    invoke-static {p1, v1, v2, v3}, Lo/isScaling;->extraCallback(Lo/DreamAppGlideModule;JLo/getWaivers;)Lo/isScaling;

    move-result-object v4

    goto :goto_0

    .line 82
    :cond_3
    iget-object p1, p0, Lo/decodeFromWrappedStreams;->onPostMessage:Lo/DreamAppGlideModule;

    iget-object v3, p0, Lo/decodeFromWrappedStreams;->extraCallback:Lo/getWaivers;

    invoke-static {p1, v1, v2, v3}, Lo/adjustTargetDensityForError;->ICustomTabsCallback(Lo/DreamAppGlideModule;JLo/getWaivers;)Lo/adjustTargetDensityForError;

    move-result-object v4

    goto :goto_0

    .line 79
    :cond_4
    iget-object p1, p0, Lo/decodeFromWrappedStreams;->onPostMessage:Lo/DreamAppGlideModule;

    invoke-static {p1}, Lo/getDimensions;->ICustomTabsCallback(Lo/DreamAppGlideModule;)Lo/getDimensions;

    move-result-object v4

    goto :goto_0

    .line 89
    :cond_5
    iget-object v3, p0, Lo/decodeFromWrappedStreams;->onPostMessage:Lo/DreamAppGlideModule;

    invoke-static {v3, p1, v1, v2}, Lo/getDensityMultiplier;->ICustomTabsCallback(Lo/DreamAppGlideModule;IJ)Lo/getDensityMultiplier;

    move-result-object v4

    goto :goto_0

    .line 76
    :cond_6
    new-instance v4, Lo/shouldUsePool;

    invoke-direct {v4}, Lo/shouldUsePool;-><init>()V

    :goto_0
    const/4 p1, 0x0

    if-nez v4, :cond_7

    .line 95
    new-instance v0, Lo/callAPI;

    new-array p1, p1, [Lo/callAPI$onPostMessage;

    invoke-direct {v0, p1}, Lo/callAPI;-><init>([Lo/callAPI$onPostMessage;)V

    return-object v0

    :cond_7
    new-instance v1, Lo/callAPI;

    new-array v0, v0, [Lo/callAPI$onPostMessage;

    aput-object v4, v0, p1

    invoke-direct {v1, v0}, Lo/callAPI;-><init>([Lo/callAPI$onPostMessage;)V

    return-object v1
.end method
