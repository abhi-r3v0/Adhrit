.class final Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$4;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 222
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$4;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    invoke-static {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onNavigationEvent(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$4;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    invoke-static {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onMessageChannelReady(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$4;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onMessageChannelReady:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$4;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onMessageChannelReady:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void

    :cond_1
    const-string p1, "FingerprintDialogFrag"

    const-string p2, "No suitable negative button listener."

    .line 227
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
