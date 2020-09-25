.class final Lo/PayCallRequest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CardInstrumentJsonAdapter;


# instance fields
.field private final onMessageChannelReady:Lo/PayCallResponseJsonAdapter;

.field private onNavigationEvent:I

.field private final onPostMessage:I


# direct methods
.method public constructor <init>(Lo/PayCallResponseJsonAdapter;I)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lo/PayCallRequest;->onMessageChannelReady:Lo/PayCallResponseJsonAdapter;

    .line 36
    iput p2, p0, Lo/PayCallRequest;->onPostMessage:I

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lo/PayCallRequest;->onNavigationEvent:I

    return-void
.end method

.method private onNavigationEvent()Z
    .locals 2

    .line 90
    iget v0, p0, Lo/PayCallRequest;->onNavigationEvent:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final ICustomTabsCallback(J)I
    .locals 2

    .line 82
    invoke-direct {p0}, Lo/PayCallRequest;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PayCallRequest;->onMessageChannelReady:Lo/PayCallResponseJsonAdapter;

    iget v1, p0, Lo/PayCallRequest;->onNavigationEvent:I

    .line 83
    invoke-virtual {v0, v1, p1, p2}, Lo/PayCallResponseJsonAdapter;->onPostMessage(IJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ICustomTabsCallback()V
    .locals 3

    .line 46
    iget v0, p0, Lo/PayCallRequest;->onNavigationEvent:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Lo/PayCallRequest;->onMessageChannelReady:Lo/PayCallResponseJsonAdapter;

    iget v2, p0, Lo/PayCallRequest;->onPostMessage:I

    invoke-virtual {v0, v2}, Lo/PayCallResponseJsonAdapter;->onPostMessage(I)V

    .line 48
    iput v1, p0, Lo/PayCallRequest;->onNavigationEvent:I

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/q;Lo/setReferrerCustomerId;Z)I
    .locals 2

    .line 71
    iget v0, p0, Lo/PayCallRequest;->onNavigationEvent:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 p1, 0x4

    .line 72
    invoke-virtual {p2, p1}, Lo/getChannel;->extraCallback(I)V

    const/4 p1, -0x4

    return p1

    .line 75
    :cond_0
    invoke-direct {p0}, Lo/PayCallRequest;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/PayCallRequest;->onMessageChannelReady:Lo/PayCallResponseJsonAdapter;

    iget v1, p0, Lo/PayCallRequest;->onNavigationEvent:I

    .line 76
    invoke-virtual {v0, v1, p1, p2, p3}, Lo/PayCallResponseJsonAdapter;->onPostMessage(ILo/q;Lo/setReferrerCustomerId;Z)I

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public final extraCallback()Z
    .locals 2

    .line 56
    iget v0, p0, Lo/PayCallRequest;->onNavigationEvent:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    .line 57
    invoke-direct {p0}, Lo/PayCallRequest;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PayCallRequest;->onMessageChannelReady:Lo/PayCallResponseJsonAdapter;

    iget v1, p0, Lo/PayCallRequest;->onNavigationEvent:I

    invoke-virtual {v0, v1}, Lo/PayCallResponseJsonAdapter;->onMessageChannelReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onMessageChannelReady()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget v0, p0, Lo/PayCallRequest;->onNavigationEvent:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lo/PayCallRequest;->onMessageChannelReady:Lo/PayCallResponseJsonAdapter;

    invoke-virtual {v0}, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback$Stub()V

    return-void

    .line 63
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/SampleQueueMappingException;

    iget-object v1, p0, Lo/PayCallRequest;->onMessageChannelReady:Lo/PayCallResponseJsonAdapter;

    .line 64
    invoke-virtual {v1}, Lo/PayCallResponseJsonAdapter;->asBinder()Lo/JuspaySessionToken;

    move-result-object v1

    iget v2, p0, Lo/PayCallRequest;->onPostMessage:I

    invoke-virtual {v1, v2}, Lo/JuspaySessionToken;->onMessageChannelReady(I)Lo/getJuspayUpi;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object v1

    iget-object v1, v1, Lo/p$a;->onTransact:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/hls/SampleQueueMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onPostMessage()V
    .locals 2

    .line 41
    iget v0, p0, Lo/PayCallRequest;->onNavigationEvent:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 42
    iget-object v0, p0, Lo/PayCallRequest;->onMessageChannelReady:Lo/PayCallResponseJsonAdapter;

    iget v1, p0, Lo/PayCallRequest;->onPostMessage:I

    invoke-virtual {v0, v1}, Lo/PayCallResponseJsonAdapter;->onNavigationEvent(I)I

    move-result v0

    iput v0, p0, Lo/PayCallRequest;->onNavigationEvent:I

    return-void
.end method
