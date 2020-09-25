.class public abstract Lo/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/HuaweiReferrer;
.implements Lo/MandatoryFields;


# instance fields
.field private ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:J

.field private asBinder:[Lo/p$a;

.field private asInterface:Z

.field private final extraCallback:I

.field private onMessageChannelReady:Lo/Payload;

.field private onNavigationEvent:Lo/CardInstrumentJsonAdapter;

.field private onPostMessage:I

.field private onRelationshipValidationResult:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lo/c$a;->extraCallback:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 49
    iput-wide v0, p0, Lo/c$a;->onRelationshipValidationResult:J

    return-void
.end method

.method protected static onPostMessage(Lo/generateInviteUrl;Lo/generateLink;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/generateInviteUrl<",
            "*>;",
            "Lo/generateLink;",
            ")Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 362
    :cond_1
    invoke-interface {p0, p1}, Lo/generateInviteUrl;->onPostMessage(Lo/generateLink;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 91
    iget v0, p0, Lo/c$a;->ICustomTabsCallback:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    const/4 v0, 0x2

    .line 92
    iput v0, p0, Lo/c$a;->ICustomTabsCallback:I

    .line 93
    invoke-virtual {p0}, Lo/c$a;->requestPostMessageChannel()V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/Payload;[Lo/p$a;Lo/CardInstrumentJsonAdapter;JZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 81
    iget v0, p0, Lo/c$a;->ICustomTabsCallback:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 82
    iput-object p1, p0, Lo/c$a;->onMessageChannelReady:Lo/Payload;

    .line 83
    iput v1, p0, Lo/c$a;->ICustomTabsCallback:I

    .line 84
    invoke-virtual {p0, p6}, Lo/c$a;->onMessageChannelReady(Z)V

    .line 85
    invoke-virtual {p0, p2, p3, p7, p8}, Lo/c$a;->onNavigationEvent([Lo/p$a;Lo/CardInstrumentJsonAdapter;J)V

    .line 86
    invoke-virtual {p0, p4, p5, p6}, Lo/c$a;->onPostMessage(JZ)V

    return-void
.end method

.method public final ICustomTabsCallback$Stub()Lo/CardInstrumentJsonAdapter;
    .locals 1

    .line 109
    iget-object v0, p0, Lo/c$a;->onNavigationEvent:Lo/CardInstrumentJsonAdapter;

    return-object v0
.end method

.method public ICustomTabsCallback$Stub$Proxy()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final ICustomTabsService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 146
    iget v0, p0, Lo/c$a;->ICustomTabsCallback:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 147
    iput v1, p0, Lo/c$a;->ICustomTabsCallback:I

    .line 148
    invoke-virtual {p0}, Lo/c$a;->mayLaunchUrl()V

    return-void
.end method

.method protected final ICustomTabsService$Stub()Z
    .locals 1

    .line 341
    invoke-virtual {p0}, Lo/c$a;->onTransact()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/c$a;->asInterface:Z

    return v0

    :cond_0
    iget-object v0, p0, Lo/c$a;->onNavigationEvent:Lo/CardInstrumentJsonAdapter;

    invoke-interface {v0}, Lo/CardInstrumentJsonAdapter;->extraCallback()Z

    move-result v0

    return v0
.end method

.method protected final IPostMessageService()Lo/Payload;
    .locals 1

    .line 281
    iget-object v0, p0, Lo/c$a;->onMessageChannelReady:Lo/Payload;

    return-object v0
.end method

.method public final asBinder()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lo/c$a;->asInterface:Z

    return v0
.end method

.method public final asInterface()J
    .locals 2

    .line 119
    iget-wide v0, p0, Lo/c$a;->onRelationshipValidationResult:J

    return-wide v0
.end method

.method public final extraCallback()I
    .locals 1

    .line 54
    iget v0, p0, Lo/c$a;->extraCallback:I

    return v0
.end method

.method protected final extraCallback(Lo/q;Lo/setReferrerCustomerId;Z)I
    .locals 5

    .line 308
    iget-object v0, p0, Lo/c$a;->onNavigationEvent:Lo/CardInstrumentJsonAdapter;

    invoke-interface {v0, p1, p2, p3}, Lo/CardInstrumentJsonAdapter;->extraCallback(Lo/q;Lo/setReferrerCustomerId;Z)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    .line 310
    invoke-virtual {p2}, Lo/getChannel;->r_()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    .line 311
    iput-wide p1, p0, Lo/c$a;->onRelationshipValidationResult:J

    .line 312
    iget-boolean p1, p0, Lo/c$a;->asInterface:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x3

    return p1

    .line 314
    :cond_1
    iget-wide v0, p2, Lo/setReferrerCustomerId;->onPostMessage:J

    iget-wide v2, p0, Lo/c$a;->ICustomTabsCallback$Stub:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lo/setReferrerCustomerId;->onPostMessage:J

    .line 315
    iget-wide v0, p0, Lo/c$a;->onRelationshipValidationResult:J

    iget-wide p1, p2, Lo/setReferrerCustomerId;->onPostMessage:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lo/c$a;->onRelationshipValidationResult:J

    goto :goto_0

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    .line 317
    iget-object p2, p1, Lo/q;->onMessageChannelReady:Lo/p$a;

    .line 318
    iget-wide v0, p2, Lo/p$a;->ICustomTabsCallback$Stub$Proxy:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 319
    iget-wide v0, p2, Lo/p$a;->ICustomTabsCallback$Stub$Proxy:J

    iget-wide v2, p0, Lo/c$a;->ICustomTabsCallback$Stub:J

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lo/p$a;->onPostMessage(J)Lo/p$a;

    move-result-object p2

    .line 320
    iput-object p2, p1, Lo/q;->onMessageChannelReady:Lo/p$a;

    :cond_3
    :goto_0
    return p3
.end method

.method public final extraCallback(I)V
    .locals 0

    .line 64
    iput p1, p0, Lo/c$a;->onPostMessage:I

    return-void
.end method

.method protected extraCommand()V
    .locals 0

    return-void
.end method

.method public final getInterfaceDescriptor()V
    .locals 3

    .line 153
    iget v0, p0, Lo/c$a;->ICustomTabsCallback:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 154
    iput v2, p0, Lo/c$a;->ICustomTabsCallback:I

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lo/c$a;->onNavigationEvent:Lo/CardInstrumentJsonAdapter;

    .line 156
    iput-object v0, p0, Lo/c$a;->asBinder:[Lo/p$a;

    .line 157
    iput-boolean v2, p0, Lo/c$a;->asInterface:Z

    .line 158
    invoke-virtual {p0}, Lo/c$a;->updateVisuals()V

    return-void
.end method

.method protected mayLaunchUrl()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public final newSession()V
    .locals 1

    .line 163
    iget v0, p0, Lo/c$a;->ICustomTabsCallback:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 164
    invoke-virtual {p0}, Lo/c$a;->extraCommand()V

    return-void
.end method

.method protected onMessageChannelReady(J)I
    .locals 3

    .line 334
    iget-object v0, p0, Lo/c$a;->onNavigationEvent:Lo/CardInstrumentJsonAdapter;

    iget-wide v1, p0, Lo/c$a;->ICustomTabsCallback$Stub:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lo/CardInstrumentJsonAdapter;->ICustomTabsCallback(J)I

    move-result p1

    return p1
.end method

.method protected onMessageChannelReady(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public onMessageChannelReady([Lo/p$a;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public onNavigationEvent()Lo/setEnabled;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onNavigationEvent(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public final onNavigationEvent([Lo/p$a;Lo/CardInstrumentJsonAdapter;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 99
    iget-boolean v0, p0, Lo/c$a;->asInterface:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 100
    iput-object p2, p0, Lo/c$a;->onNavigationEvent:Lo/CardInstrumentJsonAdapter;

    .line 101
    iput-wide p3, p0, Lo/c$a;->onRelationshipValidationResult:J

    .line 102
    iput-object p1, p0, Lo/c$a;->asBinder:[Lo/p$a;

    .line 103
    iput-wide p3, p0, Lo/c$a;->ICustomTabsCallback$Stub:J

    .line 104
    invoke-virtual {p0, p1, p3, p4}, Lo/c$a;->onMessageChannelReady([Lo/p$a;J)V

    return-void
.end method

.method public onPostMessage(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public final onPostMessage(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lo/c$a;->asInterface:Z

    .line 140
    iput-wide p1, p0, Lo/c$a;->onRelationshipValidationResult:J

    .line 141
    invoke-virtual {p0, p1, p2, v0}, Lo/c$a;->onPostMessage(JZ)V

    return-void
.end method

.method protected onPostMessage(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 1

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lo/c$a;->asInterface:Z

    return-void
.end method

.method public final onTransact()Z
    .locals 5

    .line 114
    iget-wide v0, p0, Lo/c$a;->onRelationshipValidationResult:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p_()Lo/MandatoryFields;
    .locals 0

    return-object p0
.end method

.method protected final postMessage()[Lo/p$a;
    .locals 1

    .line 274
    iget-object v0, p0, Lo/c$a;->asBinder:[Lo/p$a;

    return-object v0
.end method

.method public final q_()I
    .locals 1

    .line 74
    iget v0, p0, Lo/c$a;->ICustomTabsCallback:I

    return v0
.end method

.method protected requestPostMessageChannel()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected updateVisuals()V
    .locals 0

    return-void
.end method

.method protected final validateRelationship()I
    .locals 1

    .line 288
    iget v0, p0, Lo/c$a;->onPostMessage:I

    return v0
.end method

.method public final warmup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lo/c$a;->onNavigationEvent:Lo/CardInstrumentJsonAdapter;

    invoke-interface {v0}, Lo/CardInstrumentJsonAdapter;->onMessageChannelReady()V

    return-void
.end method
