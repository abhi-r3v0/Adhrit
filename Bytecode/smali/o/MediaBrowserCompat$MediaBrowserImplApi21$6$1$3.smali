.class final Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->onMessageChannelReady(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:I

.field final synthetic onNavigationEvent:Ljava/lang/CharSequence;

.field final synthetic onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;ILjava/lang/CharSequence;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$3;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;

    iput p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$3;->onMessageChannelReady:I

    iput-object p3, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$3;->onNavigationEvent:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 122
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$3;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;

    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onMessageChannelReady:Lo/run$onNavigationEvent;

    iget v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$3;->onMessageChannelReady:I

    iget-object v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$3;->onNavigationEvent:Ljava/lang/CharSequence;

    .line 123
    invoke-virtual {v0, v1, v2}, Lo/run$onNavigationEvent;->onMessageChannelReady(ILjava/lang/CharSequence;)V

    return-void
.end method
