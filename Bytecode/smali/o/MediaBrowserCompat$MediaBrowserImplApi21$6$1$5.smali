.class final Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->onNavigationEvent(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:I

.field final synthetic onMessageChannelReady:Ljava/lang/CharSequence;

.field final synthetic onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;ILjava/lang/CharSequence;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$5;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;

    iput p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$5;->ICustomTabsCallback:I

    iput-object p3, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$5;->onMessageChannelReady:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 164
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$5;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;

    iget v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$5;->ICustomTabsCallback:I

    iget-object v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$5;->onMessageChannelReady:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->onNavigationEvent(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;ILjava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$5;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;

    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    invoke-static {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onNavigationEvent(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;)V

    return-void
.end method
