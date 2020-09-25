.class final Lo/getPredecessorEntry$onMessageChannelReady$3;
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
.field private synthetic onMessageChannelReady:Lo/getPredecessorEntry$onMessageChannelReady;

.field private synthetic onPostMessage:Lo/getPredecessorEntry$onMessageChannelReady$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/getPredecessorEntry$onMessageChannelReady;Lo/getPredecessorEntry$onMessageChannelReady$onMessageChannelReady;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lo/getPredecessorEntry$onMessageChannelReady$3;->onMessageChannelReady:Lo/getPredecessorEntry$onMessageChannelReady;

    iput-object p2, p0, Lo/getPredecessorEntry$onMessageChannelReady$3;->onPostMessage:Lo/getPredecessorEntry$onMessageChannelReady$onMessageChannelReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 216
    iget-object v0, p0, Lo/getPredecessorEntry$onMessageChannelReady$3;->onMessageChannelReady:Lo/getPredecessorEntry$onMessageChannelReady;

    invoke-static {v0}, Lo/getPredecessorEntry$onMessageChannelReady;->ICustomTabsCallback(Lo/getPredecessorEntry$onMessageChannelReady;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/getPredecessorEntry$onMessageChannelReady$3;->onPostMessage:Lo/getPredecessorEntry$onMessageChannelReady$onMessageChannelReady;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
