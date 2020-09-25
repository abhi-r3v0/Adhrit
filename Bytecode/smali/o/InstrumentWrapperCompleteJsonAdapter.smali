.class public final Lo/InstrumentWrapperCompleteJsonAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CardInstrumentJsonAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(J)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final extraCallback(Lo/q;Lo/setReferrerCustomerId;Z)I
    .locals 0

    const/4 p1, 0x4

    .line 41
    invoke-virtual {p2, p1}, Lo/getChannel;->a_(I)V

    const/4 p1, -0x4

    return p1
.end method

.method public final extraCallback()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onMessageChannelReady()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
