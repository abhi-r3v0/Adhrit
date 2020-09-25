.class final Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$5;
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
.field final synthetic onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$5;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 163
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3$5;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;

    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$3;->ICustomTabsCallback:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
