.class final Lo/getPredecessorEntry$onMessageChannelReady$onMessageChannelReady;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPredecessorEntry$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private ICustomTabsCallback:Z

.field private synthetic onNavigationEvent:Lo/getPredecessorEntry$onMessageChannelReady;


# direct methods
.method private constructor <init>(Lo/getPredecessorEntry$onMessageChannelReady;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lo/getPredecessorEntry$onMessageChannelReady$onMessageChannelReady;->onNavigationEvent:Lo/getPredecessorEntry$onMessageChannelReady;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 317
    iput-boolean p1, p0, Lo/getPredecessorEntry$onMessageChannelReady$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method

.method synthetic constructor <init>(Lo/getPredecessorEntry$onMessageChannelReady;B)V
    .locals 0

    .line 316
    invoke-direct {p0, p1}, Lo/getPredecessorEntry$onMessageChannelReady$onMessageChannelReady;-><init>(Lo/getPredecessorEntry$onMessageChannelReady;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p2, "connectivity"

    .line 322
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 323
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 324
    iget-boolean p2, p0, Lo/getPredecessorEntry$onMessageChannelReady$onMessageChannelReady;->ICustomTabsCallback:Z

    if-eqz p1, :cond_0

    .line 325
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo/getPredecessorEntry$onMessageChannelReady$onMessageChannelReady;->ICustomTabsCallback:Z

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 327
    iget-object p1, p0, Lo/getPredecessorEntry$onMessageChannelReady$onMessageChannelReady;->onNavigationEvent:Lo/getPredecessorEntry$onMessageChannelReady;

    invoke-static {p1}, Lo/getPredecessorEntry$onMessageChannelReady;->extraCallback(Lo/getPredecessorEntry$onMessageChannelReady;)Lo/insert;

    move-result-object p1

    invoke-virtual {p1}, Lo/insert;->onPostMessage()V

    :cond_1
    return-void
.end method
