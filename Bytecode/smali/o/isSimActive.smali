.class public final Lo/isSimActive;
.super Lo/c$a;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final ICustomTabsCallback:Lo/UPIJSInterface$2;

.field private ICustomTabsCallback$Stub:I

.field private ICustomTabsCallback$Stub$Proxy:J

.field private final asBinder:[J

.field private asInterface:Lo/getSessionId;

.field private final extraCallback:Lo/q;

.field private final onMessageChannelReady:Lo/UPIJSInterface$1;

.field private final onNavigationEvent:Landroid/os/Handler;

.field private final onPostMessage:Lo/UPIJSInterface$3;

.field private final onRelationshipValidationResult:[Lo/callAPI;

.field private onTransact:I

.field private warmup:Z


# direct methods
.method public constructor <init>(Lo/UPIJSInterface$1;Landroid/os/Looper;)V
    .locals 1

    .line 74
    sget-object v0, Lo/UPIJSInterface$3;->onPostMessage:Lo/UPIJSInterface$3;

    invoke-direct {p0, p1, p2, v0}, Lo/isSimActive;-><init>(Lo/UPIJSInterface$1;Landroid/os/Looper;Lo/UPIJSInterface$3;)V

    return-void
.end method

.method public constructor <init>(Lo/UPIJSInterface$1;Landroid/os/Looper;Lo/UPIJSInterface$3;)V
    .locals 1

    const/4 v0, 0x4

    .line 88
    invoke-direct {p0, v0}, Lo/c$a;-><init>(I)V

    .line 89
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/UPIJSInterface$1;

    iput-object p1, p0, Lo/isSimActive;->onMessageChannelReady:Lo/UPIJSInterface$1;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {p2, p0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lo/isSimActive;->onNavigationEvent:Landroid/os/Handler;

    .line 92
    invoke-static {p3}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/UPIJSInterface$3;

    iput-object p1, p0, Lo/isSimActive;->onPostMessage:Lo/UPIJSInterface$3;

    .line 93
    new-instance p1, Lo/q;

    invoke-direct {p1}, Lo/q;-><init>()V

    iput-object p1, p0, Lo/isSimActive;->extraCallback:Lo/q;

    .line 94
    new-instance p1, Lo/UPIJSInterface$2;

    invoke-direct {p1}, Lo/UPIJSInterface$2;-><init>()V

    iput-object p1, p0, Lo/isSimActive;->ICustomTabsCallback:Lo/UPIJSInterface$2;

    const/4 p1, 0x5

    new-array p2, p1, [Lo/callAPI;

    .line 95
    iput-object p2, p0, Lo/isSimActive;->onRelationshipValidationResult:[Lo/callAPI;

    new-array p1, p1, [J

    .line 96
    iput-object p1, p0, Lo/isSimActive;->asBinder:[J

    return-void
.end method

.method private ICustomTabsCallback(Lo/callAPI;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/callAPI;",
            "Ljava/util/List<",
            "Lo/callAPI$onPostMessage;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 167
    :goto_0
    invoke-virtual {p1}, Lo/callAPI;->ICustomTabsCallback()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 168
    invoke-virtual {p1, v0}, Lo/callAPI;->onPostMessage(I)Lo/callAPI$onPostMessage;

    move-result-object v1

    invoke-interface {v1}, Lo/callAPI$onPostMessage;->ICustomTabsCallback()Lo/p$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v2, p0, Lo/isSimActive;->onPostMessage:Lo/UPIJSInterface$3;

    invoke-interface {v2, v1}, Lo/UPIJSInterface$3;->onPostMessage(Lo/p$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lo/isSimActive;->onPostMessage:Lo/UPIJSInterface$3;

    .line 171
    invoke-interface {v2, v1}, Lo/UPIJSInterface$3;->extraCallback(Lo/p$a;)Lo/getSessionId;

    move-result-object v1

    .line 174
    invoke-virtual {p1, v0}, Lo/callAPI;->onPostMessage(I)Lo/callAPI$onPostMessage;

    move-result-object v2

    invoke-interface {v2}, Lo/callAPI$onPostMessage;->onPostMessage()[B

    move-result-object v2

    invoke-static {v2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 175
    iget-object v3, p0, Lo/isSimActive;->ICustomTabsCallback:Lo/UPIJSInterface$2;

    invoke-virtual {v3}, Lo/getChannel;->onMessageChannelReady()V

    .line 176
    iget-object v3, p0, Lo/isSimActive;->ICustomTabsCallback:Lo/UPIJSInterface$2;

    array-length v4, v2

    invoke-virtual {v3, v4}, Lo/setReferrerCustomerId;->onPostMessage(I)V

    .line 177
    iget-object v3, p0, Lo/isSimActive;->ICustomTabsCallback:Lo/UPIJSInterface$2;

    iget-object v3, v3, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 178
    iget-object v2, p0, Lo/isSimActive;->ICustomTabsCallback:Lo/UPIJSInterface$2;

    invoke-virtual {v2}, Lo/setReferrerCustomerId;->asBinder()V

    .line 179
    iget-object v2, p0, Lo/isSimActive;->ICustomTabsCallback:Lo/UPIJSInterface$2;

    invoke-interface {v1, v2}, Lo/getSessionId;->ICustomTabsCallback(Lo/UPIJSInterface$2;)Lo/callAPI;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 182
    invoke-direct {p0, v1, p2}, Lo/isSimActive;->ICustomTabsCallback(Lo/callAPI;Ljava/util/List;)V

    goto :goto_1

    .line 186
    :cond_0
    invoke-virtual {p1, v0}, Lo/callAPI;->onPostMessage(I)Lo/callAPI$onPostMessage;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private cancel()V
    .locals 2

    .line 216
    iget-object v0, p0, Lo/isSimActive;->onRelationshipValidationResult:[Lo/callAPI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 217
    iput v0, p0, Lo/isSimActive;->ICustomTabsCallback$Stub:I

    .line 218
    iput v0, p0, Lo/isSimActive;->onTransact:I

    return-void
.end method

.method private onMessageChannelReady(Lo/callAPI;)V
    .locals 1

    .line 235
    iget-object v0, p0, Lo/isSimActive;->onMessageChannelReady:Lo/UPIJSInterface$1;

    invoke-interface {v0, p1}, Lo/UPIJSInterface$1;->extraCallback(Lo/callAPI;)V

    return-void
.end method

.method private onPostMessage(Lo/callAPI;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lo/isSimActive;->onNavigationEvent:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 209
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 211
    :cond_0
    invoke-direct {p0, p1}, Lo/isSimActive;->onMessageChannelReady(Lo/callAPI;)V

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

    .line 199
    iget-boolean v0, p0, Lo/isSimActive;->warmup:Z

    return v0
.end method

.method public final extraCallback(Lo/p$a;)I
    .locals 1

    .line 101
    iget-object v0, p0, Lo/isSimActive;->onPostMessage:Lo/UPIJSInterface$3;

    invoke-interface {v0, p1}, Lo/UPIJSInterface$3;->onPostMessage(Lo/p$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 102
    iget-object p1, p1, Lo/p$a;->warmup:Lo/generateLink;

    invoke-static {v0, p1}, Lo/isSimActive;->onPostMessage(Lo/generateInviteUrl;Lo/generateLink;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 224
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 226
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/callAPI;

    invoke-direct {p0, p1}, Lo/isSimActive;->onMessageChannelReady(Lo/callAPI;)V

    const/4 p1, 0x1

    return p1

    .line 230
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final onMessageChannelReady(JJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 121
    iget-boolean p3, p0, Lo/isSimActive;->warmup:Z

    const/4 p4, 0x5

    const/4 v0, 0x1

    if-nez p3, :cond_2

    iget p3, p0, Lo/isSimActive;->onTransact:I

    if-ge p3, p4, :cond_2

    .line 122
    iget-object p3, p0, Lo/isSimActive;->ICustomTabsCallback:Lo/UPIJSInterface$2;

    invoke-virtual {p3}, Lo/getChannel;->onMessageChannelReady()V

    .line 123
    iget-object p3, p0, Lo/isSimActive;->extraCallback:Lo/q;

    iget-object v1, p0, Lo/isSimActive;->ICustomTabsCallback:Lo/UPIJSInterface$2;

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v1, v2}, Lo/isSimActive;->extraCallback(Lo/q;Lo/setReferrerCustomerId;Z)I

    move-result p3

    const/4 v1, -0x4

    if-ne p3, v1, :cond_1

    .line 125
    iget-object p3, p0, Lo/isSimActive;->ICustomTabsCallback:Lo/UPIJSInterface$2;

    invoke-virtual {p3}, Lo/getChannel;->r_()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 126
    iput-boolean v0, p0, Lo/isSimActive;->warmup:Z

    goto :goto_0

    .line 127
    :cond_0
    iget-object p3, p0, Lo/isSimActive;->ICustomTabsCallback:Lo/UPIJSInterface$2;

    invoke-virtual {p3}, Lo/getChannel;->onNavigationEvent()Z

    move-result p3

    if-nez p3, :cond_2

    .line 132
    iget-object p3, p0, Lo/isSimActive;->ICustomTabsCallback:Lo/UPIJSInterface$2;

    iget-wide v1, p0, Lo/isSimActive;->ICustomTabsCallback$Stub$Proxy:J

    iput-wide v1, p3, Lo/UPIJSInterface$2;->onMessageChannelReady:J

    .line 133
    iget-object p3, p0, Lo/isSimActive;->ICustomTabsCallback:Lo/UPIJSInterface$2;

    invoke-virtual {p3}, Lo/setReferrerCustomerId;->asBinder()V

    .line 134
    iget-object p3, p0, Lo/isSimActive;->asInterface:Lo/getSessionId;

    iget-object v1, p0, Lo/isSimActive;->ICustomTabsCallback:Lo/UPIJSInterface$2;

    invoke-interface {p3, v1}, Lo/getSessionId;->ICustomTabsCallback(Lo/UPIJSInterface$2;)Lo/callAPI;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lo/callAPI;->ICustomTabsCallback()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    invoke-direct {p0, p3, v1}, Lo/isSimActive;->ICustomTabsCallback(Lo/callAPI;Ljava/util/List;)V

    .line 138
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 139
    new-instance p3, Lo/callAPI;

    invoke-direct {p3, v1}, Lo/callAPI;-><init>(Ljava/util/List;)V

    .line 140
    iget v1, p0, Lo/isSimActive;->ICustomTabsCallback$Stub:I

    iget v2, p0, Lo/isSimActive;->onTransact:I

    add-int/2addr v1, v2

    rem-int/2addr v1, p4

    .line 142
    iget-object v2, p0, Lo/isSimActive;->onRelationshipValidationResult:[Lo/callAPI;

    aput-object p3, v2, v1

    .line 143
    iget-object p3, p0, Lo/isSimActive;->asBinder:[J

    iget-object v2, p0, Lo/isSimActive;->ICustomTabsCallback:Lo/UPIJSInterface$2;

    iget-wide v2, v2, Lo/setReferrerCustomerId;->onPostMessage:J

    aput-wide v2, p3, v1

    .line 144
    iget p3, p0, Lo/isSimActive;->onTransact:I

    add-int/2addr p3, v0

    iput p3, p0, Lo/isSimActive;->onTransact:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x5

    if-ne p3, v1, :cond_2

    .line 149
    iget-object p3, p0, Lo/isSimActive;->extraCallback:Lo/q;

    iget-object p3, p3, Lo/q;->onMessageChannelReady:Lo/p$a;

    iget-wide v1, p3, Lo/p$a;->ICustomTabsCallback$Stub$Proxy:J

    iput-wide v1, p0, Lo/isSimActive;->ICustomTabsCallback$Stub$Proxy:J

    .line 153
    :cond_2
    :goto_0
    iget p3, p0, Lo/isSimActive;->onTransact:I

    if-lez p3, :cond_3

    iget-object p3, p0, Lo/isSimActive;->asBinder:[J

    iget v1, p0, Lo/isSimActive;->ICustomTabsCallback$Stub:I

    aget-wide v2, p3, v1

    cmp-long p3, v2, p1

    if-gtz p3, :cond_3

    .line 154
    iget-object p1, p0, Lo/isSimActive;->onRelationshipValidationResult:[Lo/callAPI;

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lo/isSimActive;->onPostMessage(Lo/callAPI;)V

    .line 155
    iget-object p1, p0, Lo/isSimActive;->onRelationshipValidationResult:[Lo/callAPI;

    iget p2, p0, Lo/isSimActive;->ICustomTabsCallback$Stub:I

    const/4 p3, 0x0

    aput-object p3, p1, p2

    add-int/2addr p2, v0

    .line 156
    rem-int/2addr p2, p4

    iput p2, p0, Lo/isSimActive;->ICustomTabsCallback$Stub:I

    .line 157
    iget p1, p0, Lo/isSimActive;->onTransact:I

    sub-int/2addr p1, v0

    iput p1, p0, Lo/isSimActive;->onTransact:I

    :cond_3
    return-void
.end method

.method public final onMessageChannelReady([Lo/p$a;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 110
    iget-object p2, p0, Lo/isSimActive;->onPostMessage:Lo/UPIJSInterface$3;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Lo/UPIJSInterface$3;->extraCallback(Lo/p$a;)Lo/getSessionId;

    move-result-object p1

    iput-object p1, p0, Lo/isSimActive;->asInterface:Lo/getSessionId;

    return-void
.end method

.method public final onPostMessage(JZ)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lo/isSimActive;->cancel()V

    const/4 p1, 0x0

    .line 116
    iput-boolean p1, p0, Lo/isSimActive;->warmup:Z

    return-void
.end method

.method public final updateVisuals()V
    .locals 1

    .line 193
    invoke-direct {p0}, Lo/isSimActive;->cancel()V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lo/isSimActive;->asInterface:Lo/getSessionId;

    return-void
.end method
