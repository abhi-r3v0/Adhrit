.class public abstract Lo/toJson;
.super Lo/t;
.source ""


# instance fields
.field public final onMessageChannelReady:Lo/t;


# direct methods
.method public constructor <init>(Lo/t;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lo/t;-><init>()V

    .line 29
    iput-object p1, p0, Lo/toJson;->onMessageChannelReady:Lo/t;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Z)I
    .locals 1

    .line 51
    iget-object v0, p0, Lo/toJson;->onMessageChannelReady:Lo/t;

    invoke-virtual {v0, p1}, Lo/t;->ICustomTabsCallback(Z)I

    move-result p1

    return p1
.end method

.method public ICustomTabsCallback(I)Ljava/lang/Object;
    .locals 1

    .line 82
    iget-object v0, p0, Lo/toJson;->onMessageChannelReady:Lo/t;

    invoke-virtual {v0, p1}, Lo/t;->ICustomTabsCallback(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public extraCallback(IIZ)I
    .locals 1

    .line 46
    iget-object v0, p0, Lo/toJson;->onMessageChannelReady:Lo/t;

    invoke-virtual {v0, p1, p2, p3}, Lo/t;->extraCallback(IIZ)I

    move-result p1

    return p1
.end method

.method public extraCallback(Ljava/lang/Object;)I
    .locals 1

    .line 77
    iget-object v0, p0, Lo/toJson;->onMessageChannelReady:Lo/t;

    invoke-virtual {v0, p1}, Lo/t;->extraCallback(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public extraCallback(Z)I
    .locals 1

    .line 56
    iget-object v0, p0, Lo/toJson;->onMessageChannelReady:Lo/t;

    invoke-virtual {v0, p1}, Lo/t;->extraCallback(Z)I

    move-result p1

    return p1
.end method

.method public onMessageChannelReady()I
    .locals 1

    .line 34
    iget-object v0, p0, Lo/toJson;->onMessageChannelReady:Lo/t;

    invoke-virtual {v0}, Lo/t;->onMessageChannelReady()I

    move-result v0

    return v0
.end method

.method public onMessageChannelReady(IIZ)I
    .locals 1

    .line 40
    iget-object v0, p0, Lo/toJson;->onMessageChannelReady:Lo/t;

    invoke-virtual {v0, p1, p2, p3}, Lo/t;->onMessageChannelReady(IIZ)I

    move-result p1

    return p1
.end method

.method public onNavigationEvent(ILo/t$onMessageChannelReady;ZJ)Lo/t$onMessageChannelReady;
    .locals 6

    .line 62
    iget-object v0, p0, Lo/toJson;->onMessageChannelReady:Lo/t;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/t;->onNavigationEvent(ILo/t$onMessageChannelReady;ZJ)Lo/t$onMessageChannelReady;

    move-result-object p1

    return-object p1
.end method

.method public onNavigationEvent(ILo/t$onPostMessage;Z)Lo/t$onPostMessage;
    .locals 1

    .line 72
    iget-object v0, p0, Lo/toJson;->onMessageChannelReady:Lo/t;

    invoke-virtual {v0, p1, p2, p3}, Lo/t;->onNavigationEvent(ILo/t$onPostMessage;Z)Lo/t$onPostMessage;

    move-result-object p1

    return-object p1
.end method

.method public onPostMessage()I
    .locals 1

    .line 67
    iget-object v0, p0, Lo/toJson;->onMessageChannelReady:Lo/t;

    invoke-virtual {v0}, Lo/t;->onPostMessage()I

    move-result v0

    return v0
.end method
