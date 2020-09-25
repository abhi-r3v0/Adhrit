.class final Lo/canSendWrites$onMessageChannelReady;
.super Ljava/io/InputStream;
.source ""

# interfaces
.implements Lo/commaSeparatedList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/canSendWrites;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private onNavigationEvent:Lo/onServerInfoUpdate;


# direct methods
.method public constructor <init>(Lo/onServerInfoUpdate;)V
    .locals 1

    .line 301
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-eqz p1, :cond_0

    .line 302
    check-cast p1, Lo/onServerInfoUpdate;

    iput-object p1, p0, Lo/canSendWrites$onMessageChannelReady;->onNavigationEvent:Lo/onServerInfoUpdate;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "buffer"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lo/canSendWrites$onMessageChannelReady;->onNavigationEvent:Lo/onServerInfoUpdate;

    invoke-interface {v0}, Lo/onServerInfoUpdate;->onPostMessage()I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lo/canSendWrites$onMessageChannelReady;->onNavigationEvent:Lo/onServerInfoUpdate;

    invoke-interface {v0}, Lo/onServerInfoUpdate;->close()V

    return-void
.end method

.method public final read()I
    .locals 1

    .line 312
    iget-object v0, p0, Lo/canSendWrites$onMessageChannelReady;->onNavigationEvent:Lo/onServerInfoUpdate;

    invoke-interface {v0}, Lo/onServerInfoUpdate;->onPostMessage()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 316
    :cond_0
    iget-object v0, p0, Lo/canSendWrites$onMessageChannelReady;->onNavigationEvent:Lo/onServerInfoUpdate;

    invoke-interface {v0}, Lo/onServerInfoUpdate;->extraCallback()I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lo/canSendWrites$onMessageChannelReady;->onNavigationEvent:Lo/onServerInfoUpdate;

    invoke-interface {v0}, Lo/onServerInfoUpdate;->onPostMessage()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 326
    :cond_0
    iget-object v0, p0, Lo/canSendWrites$onMessageChannelReady;->onNavigationEvent:Lo/onServerInfoUpdate;

    invoke-interface {v0}, Lo/onServerInfoUpdate;->onPostMessage()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 327
    iget-object v0, p0, Lo/canSendWrites$onMessageChannelReady;->onNavigationEvent:Lo/onServerInfoUpdate;

    invoke-interface {v0, p1, p2, p3}, Lo/onServerInfoUpdate;->ICustomTabsCallback([BII)V

    return p3
.end method
