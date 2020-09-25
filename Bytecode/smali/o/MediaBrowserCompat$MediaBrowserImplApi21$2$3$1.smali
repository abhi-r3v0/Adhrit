.class final Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$3;

.field final synthetic onPostMessage:Landroid/content/DialogInterface;


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$3;Landroid/content/DialogInterface;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$3$1;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$3;

    iput-object p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$3$1;->onPostMessage:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 169
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$3$1;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$3;

    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$3;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$3$1;->onPostMessage:Landroid/content/DialogInterface;

    invoke-virtual {v0, v1}, Lo/onAudioInfoChanged;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method
