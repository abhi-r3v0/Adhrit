.class final Lo/ListInstrumentJsonAdapter$onMessageChannelReady;
.super Lo/HeaderData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ListInstrumentJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private extraCallback:I


# direct methods
.method public constructor <init>(Lo/getJuspayUpi;[I)V
    .locals 0

    .line 533
    invoke-direct {p0, p1, p2}, Lo/HeaderData;-><init>(Lo/getJuspayUpi;[I)V

    const/4 p2, 0x0

    .line 534
    invoke-virtual {p1, p2}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/HeaderData;->onMessageChannelReady(Lo/p$a;)I

    move-result p1

    iput p1, p0, Lo/ListInstrumentJsonAdapter$onMessageChannelReady;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final extraCallback(JJJLjava/util/List;[Lo/component2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lo/getMerchantId;",
            ">;[",
            "Lo/component2;",
            ")V"
        }
    .end annotation

    .line 544
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 545
    iget p3, p0, Lo/ListInstrumentJsonAdapter$onMessageChannelReady;->extraCallback:I

    invoke-virtual {p0, p3, p1, p2}, Lo/ListInstrumentJsonAdapter$onMessageChannelReady;->onMessageChannelReady(IJ)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 549
    :cond_0
    iget p3, p0, Lo/HeaderData;->onMessageChannelReady:I

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_2

    .line 550
    invoke-virtual {p0, p3, p1, p2}, Lo/ListInstrumentJsonAdapter$onMessageChannelReady;->onMessageChannelReady(IJ)Z

    move-result p4

    if-nez p4, :cond_1

    .line 551
    iput p3, p0, Lo/ListInstrumentJsonAdapter$onMessageChannelReady;->extraCallback:I

    return-void

    :cond_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 556
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final onMessageChannelReady()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()I
    .locals 1

    .line 561
    iget v0, p0, Lo/ListInstrumentJsonAdapter$onMessageChannelReady;->extraCallback:I

    return v0
.end method
