.class final Lo/InstrumentsComplete$onMessageChannelReady;
.super Lo/setInBitmap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/InstrumentsComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final ICustomTabsCallback:I

.field private final onMessageChannelReady:Lo/t;

.field private final onNavigationEvent:I

.field private final onPostMessage:I


# direct methods
.method public constructor <init>(Lo/t;I)V
    .locals 2

    .line 128
    new-instance v0, Lo/CardInstrument$ICustomTabsCallback;

    invoke-direct {v0, p2}, Lo/CardInstrument$ICustomTabsCallback;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lo/setInBitmap;-><init>(ZLo/CardInstrument;)V

    .line 129
    iput-object p1, p0, Lo/InstrumentsComplete$onMessageChannelReady;->onMessageChannelReady:Lo/t;

    .line 130
    invoke-virtual {p1}, Lo/t;->onPostMessage()I

    move-result v0

    iput v0, p0, Lo/InstrumentsComplete$onMessageChannelReady;->ICustomTabsCallback:I

    .line 131
    invoke-virtual {p1}, Lo/t;->onMessageChannelReady()I

    move-result p1

    iput p1, p0, Lo/InstrumentsComplete$onMessageChannelReady;->onPostMessage:I

    .line 132
    iput p2, p0, Lo/InstrumentsComplete$onMessageChannelReady;->onNavigationEvent:I

    .line 133
    iget p1, p0, Lo/InstrumentsComplete$onMessageChannelReady;->ICustomTabsCallback:I

    if-lez p1, :cond_1

    const v0, 0x7fffffff

    .line 134
    div-int/2addr v0, p1

    if-gt p2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string p1, "LoopingMediaSource contains too many periods"

    invoke-static {v1, p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onNavigationEvent(ZLjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected final asInterface(I)Ljava/lang/Object;
    .locals 0

    .line 184
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected final extraCallback(I)I
    .locals 1

    .line 156
    iget v0, p0, Lo/InstrumentsComplete$onMessageChannelReady;->onPostMessage:I

    div-int/2addr p1, v0

    return p1
.end method

.method public final onMessageChannelReady()I
    .locals 2

    .line 141
    iget v0, p0, Lo/InstrumentsComplete$onMessageChannelReady;->onPostMessage:I

    iget v1, p0, Lo/InstrumentsComplete$onMessageChannelReady;->onNavigationEvent:I

    mul-int v0, v0, v1

    return v0
.end method

.method protected final onMessageChannelReady(I)I
    .locals 1

    .line 174
    iget v0, p0, Lo/InstrumentsComplete$onMessageChannelReady;->ICustomTabsCallback:I

    mul-int p1, p1, v0

    return p1
.end method

.method protected final onNavigationEvent(I)I
    .locals 1

    .line 151
    iget v0, p0, Lo/InstrumentsComplete$onMessageChannelReady;->ICustomTabsCallback:I

    div-int/2addr p1, v0

    return p1
.end method

.method public final onPostMessage()I
    .locals 2

    .line 146
    iget v0, p0, Lo/InstrumentsComplete$onMessageChannelReady;->ICustomTabsCallback:I

    iget v1, p0, Lo/InstrumentsComplete$onMessageChannelReady;->onNavigationEvent:I

    mul-int v0, v0, v1

    return v0
.end method

.method protected final onPostMessage(Ljava/lang/Object;)I
    .locals 1

    .line 161
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 164
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method protected final onPostMessage(I)Lo/t;
    .locals 0

    .line 169
    iget-object p1, p0, Lo/InstrumentsComplete$onMessageChannelReady;->onMessageChannelReady:Lo/t;

    return-object p1
.end method

.method protected final onTransact(I)I
    .locals 1

    .line 179
    iget v0, p0, Lo/InstrumentsComplete$onMessageChannelReady;->onPostMessage:I

    mul-int p1, p1, v0

    return p1
.end method
