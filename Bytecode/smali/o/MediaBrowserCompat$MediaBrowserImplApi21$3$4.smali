.class final Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 295
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 300
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->onNavigationEvent(Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;Z)Z

    return-void
.end method
