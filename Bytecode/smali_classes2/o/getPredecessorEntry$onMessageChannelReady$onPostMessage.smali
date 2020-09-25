.class final Lo/getPredecessorEntry$onMessageChannelReady$onPostMessage;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPredecessorEntry$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field private ICustomTabsCallback:Z

.field private synthetic onPostMessage:Lo/getPredecessorEntry$onMessageChannelReady;


# direct methods
.method private constructor <init>(Lo/getPredecessorEntry$onMessageChannelReady;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lo/getPredecessorEntry$onMessageChannelReady$onPostMessage;->onPostMessage:Lo/getPredecessorEntry$onMessageChannelReady;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    const/4 p1, 0x0

    .line 297
    iput-boolean p1, p0, Lo/getPredecessorEntry$onMessageChannelReady$onPostMessage;->ICustomTabsCallback:Z

    return-void
.end method

.method synthetic constructor <init>(Lo/getPredecessorEntry$onMessageChannelReady;B)V
    .locals 0

    .line 291
    invoke-direct {p0, p1}, Lo/getPredecessorEntry$onMessageChannelReady$onPostMessage;-><init>(Lo/getPredecessorEntry$onMessageChannelReady;)V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 301
    iget-boolean p1, p0, Lo/getPredecessorEntry$onMessageChannelReady$onPostMessage;->ICustomTabsCallback:Z

    if-eqz p1, :cond_0

    .line 302
    iget-object p1, p0, Lo/getPredecessorEntry$onMessageChannelReady$onPostMessage;->onPostMessage:Lo/getPredecessorEntry$onMessageChannelReady;

    invoke-static {p1}, Lo/getPredecessorEntry$onMessageChannelReady;->extraCallback(Lo/getPredecessorEntry$onMessageChannelReady;)Lo/insert;

    move-result-object p1

    invoke-virtual {p1}, Lo/insert;->asBinder()V

    goto :goto_0

    .line 304
    :cond_0
    iget-object p1, p0, Lo/getPredecessorEntry$onMessageChannelReady$onPostMessage;->onPostMessage:Lo/getPredecessorEntry$onMessageChannelReady;

    invoke-static {p1}, Lo/getPredecessorEntry$onMessageChannelReady;->extraCallback(Lo/getPredecessorEntry$onMessageChannelReady;)Lo/insert;

    move-result-object p1

    invoke-virtual {p1}, Lo/insert;->onPostMessage()V

    :goto_0
    const/4 p1, 0x1

    .line 306
    iput-boolean p1, p0, Lo/getPredecessorEntry$onMessageChannelReady$onPostMessage;->ICustomTabsCallback:Z

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 0

    const/4 p1, 0x0

    .line 311
    iput-boolean p1, p0, Lo/getPredecessorEntry$onMessageChannelReady$onPostMessage;->ICustomTabsCallback:Z

    return-void
.end method
