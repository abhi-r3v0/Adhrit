.class final Lo/fetchHuawei;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fetchHuawei$extraCallback;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:J

.field private asBinder:J

.field private extraCallback:J

.field private onMessageChannelReady:J

.field private final onNavigationEvent:Lo/fetchHuawei$extraCallback;

.field private onPostMessage:I


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 100
    new-instance v0, Lo/fetchHuawei$extraCallback;

    invoke-direct {v0, p1}, Lo/fetchHuawei$extraCallback;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lo/fetchHuawei;->onNavigationEvent:Lo/fetchHuawei$extraCallback;

    .line 101
    invoke-virtual {p0}, Lo/fetchHuawei;->onNavigationEvent()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 103
    iput-object p1, p0, Lo/fetchHuawei;->onNavigationEvent:Lo/fetchHuawei$extraCallback;

    const/4 p1, 0x3

    .line 104
    invoke-direct {p0, p1}, Lo/fetchHuawei;->extraCallback(I)V

    return-void
.end method

.method private extraCallback(I)V
    .locals 6

    .line 236
    iput p1, p0, Lo/fetchHuawei;->onPostMessage:I

    const-wide/16 v0, 0x1388

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-wide/32 v0, 0x7a120

    .line 253
    iput-wide v0, p0, Lo/fetchHuawei;->ICustomTabsCallback:J

    return-void

    .line 256
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    const-wide/32 v0, 0x989680

    .line 250
    iput-wide v0, p0, Lo/fetchHuawei;->ICustomTabsCallback:J

    return-void

    .line 246
    :cond_2
    iput-wide v0, p0, Lo/fetchHuawei;->ICustomTabsCallback:J

    return-void

    :cond_3
    const-wide/16 v2, 0x0

    .line 240
    iput-wide v2, p0, Lo/fetchHuawei;->onMessageChannelReady:J

    const-wide/16 v2, -0x1

    .line 241
    iput-wide v2, p0, Lo/fetchHuawei;->asBinder:J

    .line 242
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lo/fetchHuawei;->extraCallback:J

    .line 243
    iput-wide v0, p0, Lo/fetchHuawei;->ICustomTabsCallback:J

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 3

    .line 199
    iget v0, p0, Lo/fetchHuawei;->onPostMessage:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final asInterface()J
    .locals 2

    .line 224
    iget-object v0, p0, Lo/fetchHuawei;->onNavigationEvent:Lo/fetchHuawei$extraCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/fetchHuawei$extraCallback;->ICustomTabsCallback()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final extraCallback()V
    .locals 1

    const/4 v0, 0x4

    .line 180
    invoke-direct {p0, v0}, Lo/fetchHuawei;->extraCallback(I)V

    return-void
.end method

.method public final onMessageChannelReady()Z
    .locals 2

    .line 209
    iget v0, p0, Lo/fetchHuawei;->onPostMessage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onMessageChannelReady(J)Z
    .locals 7

    .line 119
    iget-object v0, p0, Lo/fetchHuawei;->onNavigationEvent:Lo/fetchHuawei$extraCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-wide v2, p0, Lo/fetchHuawei;->onMessageChannelReady:J

    sub-long v2, p1, v2

    iget-wide v4, p0, Lo/fetchHuawei;->ICustomTabsCallback:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    goto/16 :goto_1

    .line 122
    :cond_0
    iput-wide p1, p0, Lo/fetchHuawei;->onMessageChannelReady:J

    .line 123
    invoke-virtual {v0}, Lo/fetchHuawei$extraCallback;->onMessageChannelReady()Z

    move-result v0

    .line 124
    iget v2, p0, Lo/fetchHuawei;->onPostMessage:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    const/4 p1, 0x2

    if-eq v2, v4, :cond_4

    if-eq v2, p1, :cond_3

    if-eq v2, v3, :cond_2

    const/4 p1, 0x4

    if-ne v2, p1, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    if-eqz v0, :cond_8

    .line 162
    invoke-virtual {p0}, Lo/fetchHuawei;->onNavigationEvent()V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_8

    .line 156
    invoke-virtual {p0}, Lo/fetchHuawei;->onNavigationEvent()V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 145
    iget-object p2, p0, Lo/fetchHuawei;->onNavigationEvent:Lo/fetchHuawei$extraCallback;

    invoke-virtual {p2}, Lo/fetchHuawei$extraCallback;->extraCallback()J

    move-result-wide v1

    .line 146
    iget-wide v3, p0, Lo/fetchHuawei;->asBinder:J

    cmp-long p2, v1, v3

    if-lez p2, :cond_8

    .line 147
    invoke-direct {p0, p1}, Lo/fetchHuawei;->extraCallback(I)V

    goto :goto_0

    .line 150
    :cond_5
    invoke-virtual {p0}, Lo/fetchHuawei;->onNavigationEvent()V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    .line 127
    iget-object p1, p0, Lo/fetchHuawei;->onNavigationEvent:Lo/fetchHuawei$extraCallback;

    invoke-virtual {p1}, Lo/fetchHuawei$extraCallback;->ICustomTabsCallback()J

    move-result-wide p1

    iget-wide v2, p0, Lo/fetchHuawei;->extraCallback:J

    cmp-long v5, p1, v2

    if-ltz v5, :cond_9

    .line 129
    iget-object p1, p0, Lo/fetchHuawei;->onNavigationEvent:Lo/fetchHuawei$extraCallback;

    invoke-virtual {p1}, Lo/fetchHuawei$extraCallback;->extraCallback()J

    move-result-wide p1

    iput-wide p1, p0, Lo/fetchHuawei;->asBinder:J

    .line 130
    invoke-direct {p0, v4}, Lo/fetchHuawei;->extraCallback(I)V

    goto :goto_0

    .line 135
    :cond_7
    iget-wide v1, p0, Lo/fetchHuawei;->extraCallback:J

    sub-long/2addr p1, v1

    const-wide/32 v1, 0x7a120

    cmp-long v4, p1, v1

    if-lez v4, :cond_8

    .line 140
    invoke-direct {p0, v3}, Lo/fetchHuawei;->extraCallback(I)V

    :cond_8
    :goto_0
    move v1, v0

    :cond_9
    :goto_1
    return v1
.end method

.method public final onNavigationEvent()V
    .locals 1

    .line 214
    iget-object v0, p0, Lo/fetchHuawei;->onNavigationEvent:Lo/fetchHuawei$extraCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 215
    invoke-direct {p0, v0}, Lo/fetchHuawei;->extraCallback(I)V

    :cond_0
    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    .line 188
    iget v0, p0, Lo/fetchHuawei;->onPostMessage:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lo/fetchHuawei;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method public final onRelationshipValidationResult()J
    .locals 2

    .line 232
    iget-object v0, p0, Lo/fetchHuawei;->onNavigationEvent:Lo/fetchHuawei$extraCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/fetchHuawei$extraCallback;->extraCallback()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
