.class final Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->onNavigationEvent(Lo/putLong$onMessageChannelReady;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/run$onMessageChannelReady;

.field final synthetic onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;Lo/run$onMessageChannelReady;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$1;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;

    iput-object p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$1;->extraCallback:Lo/run$onMessageChannelReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 198
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$1;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;

    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onMessageChannelReady:Lo/run$onNavigationEvent;

    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$1;->extraCallback:Lo/run$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/run$onNavigationEvent;->onPostMessage(Lo/run$onMessageChannelReady;)V

    return-void
.end method
