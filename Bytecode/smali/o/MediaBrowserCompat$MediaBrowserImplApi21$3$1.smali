.class final Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$1;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    .line 173
    iget-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$1;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    .line 174
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    iget-object p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$1;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    invoke-static {p2}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onNavigationEvent(Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;)Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "BiometricFragment"

    .line 173
    invoke-static {v1, p1, p2, v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->ICustomTabsCallback(Ljava/lang/String;Lo/onSessionEvent;Landroid/os/Bundle;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
