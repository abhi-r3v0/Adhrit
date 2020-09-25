.class final Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$3;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$3;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    invoke-static {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onPostMessage(Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
