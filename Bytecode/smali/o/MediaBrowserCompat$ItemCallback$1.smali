.class final Lo/MediaBrowserCompat$ItemCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$ItemCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 53
    invoke-static {}, Lo/MediaBrowserCompat$ItemCallback;->extraCallback()Lo/MediaBrowserCompat$ItemCallback;

    move-result-object v0

    .line 1096
    iget-object v0, v0, Lo/MediaBrowserCompat$ItemCallback;->extraCallback:Lo/MediaBrowserCompat$ItemReceiver;

    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ItemReceiver;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method
