.class final Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$2;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 447
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$2;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    .line 1321
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "FingerprintDialogFrag"

    const-string v1, "Failed to dismiss fingerprint dialog fragment. Fragment manager was null."

    .line 1322
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1325
    :cond_0
    invoke-virtual {v0}, Lo/onAudioInfoChanged;->onMessageChannelReady()V

    return-void
.end method
