.class public final Lo/UpiAppResponseJsonAdapter;
.super Lo/c$a;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final ICustomTabsCallback:Lo/StatusJsonAdapter;

.field private ICustomTabsCallback$Stub:Lo/p$a;

.field private ICustomTabsCallback$Stub$Proxy:I

.field private asBinder:I

.field private asInterface:Lo/SurchargeDetails;

.field private final extraCallback:Lo/SurchargeDetailsJsonAdapter;

.field private newSession:Lo/TransactionDetails;

.field private final onMessageChannelReady:Landroid/os/Handler;

.field private onNavigationEvent:Z

.field private final onPostMessage:Lo/q;

.field private onRelationshipValidationResult:Lo/TransactionDetailsJsonAdapter;

.field private onTransact:Z

.field private warmup:Lo/TransactionDetails;


# direct methods
.method public constructor <init>(Lo/SurchargeDetailsJsonAdapter;Landroid/os/Looper;)V
    .locals 1

    .line 104
    sget-object v0, Lo/StatusJsonAdapter;->onMessageChannelReady:Lo/StatusJsonAdapter;

    invoke-direct {p0, p1, p2, v0}, Lo/UpiAppResponseJsonAdapter;-><init>(Lo/SurchargeDetailsJsonAdapter;Landroid/os/Looper;Lo/StatusJsonAdapter;)V

    return-void
.end method

.method public constructor <init>(Lo/SurchargeDetailsJsonAdapter;Landroid/os/Looper;Lo/StatusJsonAdapter;)V
    .locals 1

    const/4 v0, 0x3

    .line 118
    invoke-direct {p0, v0}, Lo/c$a;-><init>(I)V

    .line 119
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/SurchargeDetailsJsonAdapter;

    iput-object p1, p0, Lo/UpiAppResponseJsonAdapter;->extraCallback:Lo/SurchargeDetailsJsonAdapter;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {p2, p0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lo/UpiAppResponseJsonAdapter;->onMessageChannelReady:Landroid/os/Handler;

    .line 122
    iput-object p3, p0, Lo/UpiAppResponseJsonAdapter;->ICustomTabsCallback:Lo/StatusJsonAdapter;

    .line 123
    new-instance p1, Lo/q;

    invoke-direct {p1}, Lo/q;-><init>()V

    iput-object p1, p0, Lo/UpiAppResponseJsonAdapter;->onPostMessage:Lo/q;

    return-void
.end method

.method private INotificationSideChannel()J
    .locals 2

    .line 302
    iget v0, p0, Lo/UpiAppResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lo/UpiAppResponseJsonAdapter;->newSession:Lo/TransactionDetails;

    .line 303
    invoke-virtual {v1}, Lo/TransactionDetails;->ICustomTabsCallback()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/UpiAppResponseJsonAdapter;->newSession:Lo/TransactionDetails;

    iget v1, p0, Lo/UpiAppResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:I

    .line 304
    invoke-virtual {v0, v1}, Lo/TransactionDetails;->ICustomTabsCallback(I)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method private INotificationSideChannel$Stub$Proxy()V
    .locals 1

    .line 316
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/UpiAppResponseJsonAdapter;->onPostMessage(Ljava/util/List;)V

    return-void
.end method

.method private IPostMessageService$Stub$Proxy()V
    .locals 1

    .line 290
    invoke-direct {p0}, Lo/UpiAppResponseJsonAdapter;->cancelAll()V

    .line 291
    iget-object v0, p0, Lo/UpiAppResponseJsonAdapter;->asInterface:Lo/SurchargeDetails;

    invoke-interface {v0}, Lo/SurchargeDetails;->onPostMessage()V

    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lo/UpiAppResponseJsonAdapter;->asInterface:Lo/SurchargeDetails;

    const/4 v0, 0x0

    .line 293
    iput v0, p0, Lo/UpiAppResponseJsonAdapter;->asBinder:I

    return-void
.end method

.method private cancel()V
    .locals 2

    .line 297
    invoke-direct {p0}, Lo/UpiAppResponseJsonAdapter;->IPostMessageService$Stub$Proxy()V

    .line 298
    iget-object v0, p0, Lo/UpiAppResponseJsonAdapter;->ICustomTabsCallback:Lo/StatusJsonAdapter;

    iget-object v1, p0, Lo/UpiAppResponseJsonAdapter;->ICustomTabsCallback$Stub:Lo/p$a;

    invoke-interface {v0, v1}, Lo/StatusJsonAdapter;->onNavigationEvent(Lo/p$a;)Lo/SurchargeDetails;

    move-result-object v0

    iput-object v0, p0, Lo/UpiAppResponseJsonAdapter;->asInterface:Lo/SurchargeDetails;

    return-void
.end method

.method private cancelAll()V
    .locals 2

    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lo/UpiAppResponseJsonAdapter;->onRelationshipValidationResult:Lo/TransactionDetailsJsonAdapter;

    const/4 v1, -0x1

    .line 278
    iput v1, p0, Lo/UpiAppResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:I

    .line 279
    iget-object v1, p0, Lo/UpiAppResponseJsonAdapter;->newSession:Lo/TransactionDetails;

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {v1}, Lo/setCampaign;->extraCallback()V

    .line 281
    iput-object v0, p0, Lo/UpiAppResponseJsonAdapter;->newSession:Lo/TransactionDetails;

    .line 283
    :cond_0
    iget-object v1, p0, Lo/UpiAppResponseJsonAdapter;->warmup:Lo/TransactionDetails;

    if-eqz v1, :cond_1

    .line 284
    invoke-virtual {v1}, Lo/setCampaign;->extraCallback()V

    .line 285
    iput-object v0, p0, Lo/UpiAppResponseJsonAdapter;->warmup:Lo/TransactionDetails;

    :cond_1
    return-void
.end method

.method private onMessageChannelReady(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;)V"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lo/UpiAppResponseJsonAdapter;->extraCallback:Lo/SurchargeDetailsJsonAdapter;

    invoke-interface {v0, p1}, Lo/SurchargeDetailsJsonAdapter;->extraCallback(Ljava/util/List;)V

    return-void
.end method

.method private onPostMessage(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;)V"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lo/UpiAppResponseJsonAdapter;->onMessageChannelReady:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 309
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 311
    :cond_0
    invoke-direct {p0, p1}, Lo/UpiAppResponseJsonAdapter;->onMessageChannelReady(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsService$Stub$Proxy()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final IPostMessageService$Stub()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lo/UpiAppResponseJsonAdapter;->onTransact:Z

    return v0
.end method

.method public final extraCallback(Lo/p$a;)I
    .locals 1

    .line 128
    iget-object v0, p0, Lo/UpiAppResponseJsonAdapter;->ICustomTabsCallback:Lo/StatusJsonAdapter;

    invoke-interface {v0, p1}, Lo/StatusJsonAdapter;->onMessageChannelReady(Lo/p$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 129
    iget-object p1, p1, Lo/p$a;->warmup:Lo/generateLink;

    invoke-static {v0, p1}, Lo/UpiAppResponseJsonAdapter;->onPostMessage(Lo/generateInviteUrl;Lo/generateLink;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1

    .line 130
    :cond_1
    iget-object p1, p1, Lo/p$a;->onTransact:Ljava/lang/String;

    invoke-static {p1}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 322
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 324
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lo/UpiAppResponseJsonAdapter;->onMessageChannelReady(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    .line 327
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final onMessageChannelReady(JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 162
    iget-boolean p3, p0, Lo/UpiAppResponseJsonAdapter;->onTransact:Z

    if-eqz p3, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object p3, p0, Lo/UpiAppResponseJsonAdapter;->warmup:Lo/TransactionDetails;

    if-nez p3, :cond_1

    .line 167
    iget-object p3, p0, Lo/UpiAppResponseJsonAdapter;->asInterface:Lo/SurchargeDetails;

    invoke-interface {p3, p1, p2}, Lo/SurchargeDetails;->extraCallback(J)V

    .line 169
    :try_start_0
    iget-object p3, p0, Lo/UpiAppResponseJsonAdapter;->asInterface:Lo/SurchargeDetails;

    invoke-interface {p3}, Lo/SurchargeDetails;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/TransactionDetails;

    iput-object p3, p0, Lo/UpiAppResponseJsonAdapter;->warmup:Lo/TransactionDetails;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 171
    invoke-virtual {p0}, Lo/UpiAppResponseJsonAdapter;->validateRelationship()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->onPostMessage(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 175
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lo/c$a;->q_()I

    move-result p3

    const/4 p4, 0x2

    if-eq p3, p4, :cond_2

    return-void

    .line 180
    :cond_2
    iget-object p3, p0, Lo/UpiAppResponseJsonAdapter;->newSession:Lo/TransactionDetails;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    .line 183
    invoke-direct {p0}, Lo/UpiAppResponseJsonAdapter;->INotificationSideChannel()J

    move-result-wide v2

    const/4 p3, 0x0

    :goto_1
    cmp-long v4, v2, p1

    if-gtz v4, :cond_4

    .line 185
    iget p3, p0, Lo/UpiAppResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:I

    add-int/2addr p3, v1

    iput p3, p0, Lo/UpiAppResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:I

    .line 186
    invoke-direct {p0}, Lo/UpiAppResponseJsonAdapter;->INotificationSideChannel()J

    move-result-wide v2

    const/4 p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    .line 191
    :cond_4
    iget-object v2, p0, Lo/UpiAppResponseJsonAdapter;->warmup:Lo/TransactionDetails;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 192
    invoke-virtual {v2}, Lo/getChannel;->r_()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez p3, :cond_8

    .line 193
    invoke-direct {p0}, Lo/UpiAppResponseJsonAdapter;->INotificationSideChannel()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_8

    .line 194
    iget v2, p0, Lo/UpiAppResponseJsonAdapter;->asBinder:I

    if-ne v2, p4, :cond_5

    .line 195
    invoke-direct {p0}, Lo/UpiAppResponseJsonAdapter;->cancel()V

    goto :goto_2

    .line 197
    :cond_5
    invoke-direct {p0}, Lo/UpiAppResponseJsonAdapter;->cancelAll()V

    .line 198
    iput-boolean v1, p0, Lo/UpiAppResponseJsonAdapter;->onTransact:Z

    goto :goto_2

    .line 201
    :cond_6
    iget-object v2, p0, Lo/UpiAppResponseJsonAdapter;->warmup:Lo/TransactionDetails;

    iget-wide v4, v2, Lo/setCampaign;->ICustomTabsCallback:J

    cmp-long v2, v4, p1

    if-gtz v2, :cond_8

    .line 203
    iget-object p3, p0, Lo/UpiAppResponseJsonAdapter;->newSession:Lo/TransactionDetails;

    if-eqz p3, :cond_7

    .line 204
    invoke-virtual {p3}, Lo/setCampaign;->extraCallback()V

    .line 206
    :cond_7
    iget-object p3, p0, Lo/UpiAppResponseJsonAdapter;->warmup:Lo/TransactionDetails;

    iput-object p3, p0, Lo/UpiAppResponseJsonAdapter;->newSession:Lo/TransactionDetails;

    .line 207
    iput-object v3, p0, Lo/UpiAppResponseJsonAdapter;->warmup:Lo/TransactionDetails;

    .line 208
    invoke-virtual {p3, p1, p2}, Lo/TransactionDetails;->onNavigationEvent(J)I

    move-result p3

    iput p3, p0, Lo/UpiAppResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:I

    const/4 p3, 0x1

    :cond_8
    :goto_2
    if-eqz p3, :cond_9

    .line 215
    iget-object p3, p0, Lo/UpiAppResponseJsonAdapter;->newSession:Lo/TransactionDetails;

    invoke-virtual {p3, p1, p2}, Lo/TransactionDetails;->onMessageChannelReady(J)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/UpiAppResponseJsonAdapter;->onPostMessage(Ljava/util/List;)V

    .line 218
    :cond_9
    iget p1, p0, Lo/UpiAppResponseJsonAdapter;->asBinder:I

    if-ne p1, p4, :cond_a

    return-void

    .line 223
    :cond_a
    :goto_3
    :try_start_1
    iget-boolean p1, p0, Lo/UpiAppResponseJsonAdapter;->onNavigationEvent:Z

    if-nez p1, :cond_f

    .line 224
    iget-object p1, p0, Lo/UpiAppResponseJsonAdapter;->onRelationshipValidationResult:Lo/TransactionDetailsJsonAdapter;

    if-nez p1, :cond_b

    .line 225
    iget-object p1, p0, Lo/UpiAppResponseJsonAdapter;->asInterface:Lo/SurchargeDetails;

    invoke-interface {p1}, Lo/SurchargeDetails;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/TransactionDetailsJsonAdapter;

    iput-object p1, p0, Lo/UpiAppResponseJsonAdapter;->onRelationshipValidationResult:Lo/TransactionDetailsJsonAdapter;

    if-nez p1, :cond_b

    return-void

    .line 230
    :cond_b
    iget p1, p0, Lo/UpiAppResponseJsonAdapter;->asBinder:I

    if-ne p1, v1, :cond_c

    .line 231
    iget-object p1, p0, Lo/UpiAppResponseJsonAdapter;->onRelationshipValidationResult:Lo/TransactionDetailsJsonAdapter;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lo/getChannel;->a_(I)V

    .line 232
    iget-object p1, p0, Lo/UpiAppResponseJsonAdapter;->asInterface:Lo/SurchargeDetails;

    iget-object p2, p0, Lo/UpiAppResponseJsonAdapter;->onRelationshipValidationResult:Lo/TransactionDetailsJsonAdapter;

    invoke-interface {p1, p2}, Lo/SurchargeDetails;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 233
    iput-object v3, p0, Lo/UpiAppResponseJsonAdapter;->onRelationshipValidationResult:Lo/TransactionDetailsJsonAdapter;

    .line 234
    iput p4, p0, Lo/UpiAppResponseJsonAdapter;->asBinder:I

    return-void

    .line 238
    :cond_c
    iget-object p1, p0, Lo/UpiAppResponseJsonAdapter;->onPostMessage:Lo/q;

    iget-object p2, p0, Lo/UpiAppResponseJsonAdapter;->onRelationshipValidationResult:Lo/TransactionDetailsJsonAdapter;

    invoke-virtual {p0, p1, p2, v0}, Lo/UpiAppResponseJsonAdapter;->extraCallback(Lo/q;Lo/setReferrerCustomerId;Z)I

    move-result p1

    const/4 p2, -0x4

    if-ne p1, p2, :cond_e

    .line 240
    iget-object p1, p0, Lo/UpiAppResponseJsonAdapter;->onRelationshipValidationResult:Lo/TransactionDetailsJsonAdapter;

    invoke-virtual {p1}, Lo/getChannel;->r_()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 241
    iput-boolean v1, p0, Lo/UpiAppResponseJsonAdapter;->onNavigationEvent:Z

    goto :goto_4

    .line 243
    :cond_d
    iget-object p1, p0, Lo/UpiAppResponseJsonAdapter;->onRelationshipValidationResult:Lo/TransactionDetailsJsonAdapter;

    iget-object p2, p0, Lo/UpiAppResponseJsonAdapter;->onPostMessage:Lo/q;

    iget-object p2, p2, Lo/q;->onMessageChannelReady:Lo/p$a;

    iget-wide p2, p2, Lo/p$a;->ICustomTabsCallback$Stub$Proxy:J

    iput-wide p2, p1, Lo/TransactionDetailsJsonAdapter;->onMessageChannelReady:J

    .line 244
    iget-object p1, p0, Lo/UpiAppResponseJsonAdapter;->onRelationshipValidationResult:Lo/TransactionDetailsJsonAdapter;

    invoke-virtual {p1}, Lo/setReferrerCustomerId;->asBinder()V

    .line 246
    :goto_4
    iget-object p1, p0, Lo/UpiAppResponseJsonAdapter;->asInterface:Lo/SurchargeDetails;

    iget-object p2, p0, Lo/UpiAppResponseJsonAdapter;->onRelationshipValidationResult:Lo/TransactionDetailsJsonAdapter;

    invoke-interface {p1, p2}, Lo/SurchargeDetails;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 247
    iput-object v3, p0, Lo/UpiAppResponseJsonAdapter;->onRelationshipValidationResult:Lo/TransactionDetailsJsonAdapter;
    :try_end_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_e
    const/4 p2, -0x3

    if-ne p1, p2, :cond_a

    :cond_f
    return-void

    :catch_1
    move-exception p1

    .line 253
    invoke-virtual {p0}, Lo/UpiAppResponseJsonAdapter;->validateRelationship()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->onPostMessage(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method public final onMessageChannelReady([Lo/p$a;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 139
    aget-object p1, p1, p2

    iput-object p1, p0, Lo/UpiAppResponseJsonAdapter;->ICustomTabsCallback$Stub:Lo/p$a;

    .line 140
    iget-object p2, p0, Lo/UpiAppResponseJsonAdapter;->asInterface:Lo/SurchargeDetails;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 141
    iput p1, p0, Lo/UpiAppResponseJsonAdapter;->asBinder:I

    return-void

    .line 143
    :cond_0
    iget-object p2, p0, Lo/UpiAppResponseJsonAdapter;->ICustomTabsCallback:Lo/StatusJsonAdapter;

    invoke-interface {p2, p1}, Lo/StatusJsonAdapter;->onNavigationEvent(Lo/p$a;)Lo/SurchargeDetails;

    move-result-object p1

    iput-object p1, p0, Lo/UpiAppResponseJsonAdapter;->asInterface:Lo/SurchargeDetails;

    return-void
.end method

.method public final onPostMessage(JZ)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lo/UpiAppResponseJsonAdapter;->INotificationSideChannel$Stub$Proxy()V

    const/4 p1, 0x0

    .line 150
    iput-boolean p1, p0, Lo/UpiAppResponseJsonAdapter;->onNavigationEvent:Z

    .line 151
    iput-boolean p1, p0, Lo/UpiAppResponseJsonAdapter;->onTransact:Z

    .line 152
    iget p1, p0, Lo/UpiAppResponseJsonAdapter;->asBinder:I

    if-eqz p1, :cond_0

    .line 153
    invoke-direct {p0}, Lo/UpiAppResponseJsonAdapter;->cancel()V

    return-void

    .line 155
    :cond_0
    invoke-direct {p0}, Lo/UpiAppResponseJsonAdapter;->cancelAll()V

    .line 156
    iget-object p1, p0, Lo/UpiAppResponseJsonAdapter;->asInterface:Lo/SurchargeDetails;

    invoke-interface {p1}, Lo/SurchargeDetails;->ICustomTabsCallback()V

    return-void
.end method

.method public final updateVisuals()V
    .locals 1

    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lo/UpiAppResponseJsonAdapter;->ICustomTabsCallback$Stub:Lo/p$a;

    .line 260
    invoke-direct {p0}, Lo/UpiAppResponseJsonAdapter;->INotificationSideChannel$Stub$Proxy()V

    .line 261
    invoke-direct {p0}, Lo/UpiAppResponseJsonAdapter;->IPostMessageService$Stub$Proxy()V

    return-void
.end method
