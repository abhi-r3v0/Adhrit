.class final Lo/InstrumentsComplete$extraCallback;
.super Lo/toJson;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/InstrumentsComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# direct methods
.method public constructor <init>(Lo/t;)V
    .locals 0

    .line 192
    invoke-direct {p0, p1}, Lo/toJson;-><init>(Lo/t;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(IIZ)I
    .locals 1

    .line 207
    iget-object v0, p0, Lo/toJson;->onMessageChannelReady:Lo/t;

    invoke-virtual {v0, p1, p2, p3}, Lo/t;->extraCallback(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 209
    invoke-virtual {p0, p3}, Lo/t;->ICustomTabsCallback(Z)I

    move-result p1

    :cond_0
    return p1
.end method

.method public final onMessageChannelReady(IIZ)I
    .locals 1

    .line 198
    iget-object v0, p0, Lo/toJson;->onMessageChannelReady:Lo/t;

    invoke-virtual {v0, p1, p2, p3}, Lo/t;->onMessageChannelReady(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 200
    invoke-virtual {p0, p3}, Lo/t;->extraCallback(Z)I

    move-result p1

    :cond_0
    return p1
.end method
