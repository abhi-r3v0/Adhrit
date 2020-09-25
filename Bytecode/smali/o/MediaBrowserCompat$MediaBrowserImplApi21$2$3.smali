.class final Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$3;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 157
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    const-string v1, "FingerprintDialogFrag"

    if-ge p2, v0, :cond_0

    const-string p1, "Failed to check device credential. Not supported prior to L."

    .line 158
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 163
    :cond_0
    iget-object p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$3;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    .line 164
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p2

    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$3;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    invoke-static {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onPostMessage(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v2, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$3$1;

    invoke-direct {v2, p0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$3$1;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$3;Landroid/content/DialogInterface;)V

    .line 163
    invoke-static {v1, p2, v0, v2}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->ICustomTabsCallback(Ljava/lang/String;Lo/onSessionEvent;Landroid/os/Bundle;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
