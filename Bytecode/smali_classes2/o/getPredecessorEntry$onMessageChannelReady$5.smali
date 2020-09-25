.class final Lo/getPredecessorEntry$onMessageChannelReady$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPredecessorEntry$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getPredecessorEntry$onMessageChannelReady$onPostMessage;

.field private synthetic onPostMessage:Lo/getPredecessorEntry$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/getPredecessorEntry$onMessageChannelReady;Lo/getPredecessorEntry$onMessageChannelReady$onPostMessage;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lo/getPredecessorEntry$onMessageChannelReady$5;->onPostMessage:Lo/getPredecessorEntry$onMessageChannelReady;

    iput-object p2, p0, Lo/getPredecessorEntry$onMessageChannelReady$5;->ICustomTabsCallback:Lo/getPredecessorEntry$onMessageChannelReady$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 203
    iget-object v0, p0, Lo/getPredecessorEntry$onMessageChannelReady$5;->onPostMessage:Lo/getPredecessorEntry$onMessageChannelReady;

    invoke-static {v0}, Lo/getPredecessorEntry$onMessageChannelReady;->onNavigationEvent(Lo/getPredecessorEntry$onMessageChannelReady;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lo/getPredecessorEntry$onMessageChannelReady$5;->ICustomTabsCallback:Lo/getPredecessorEntry$onMessageChannelReady$onPostMessage;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
