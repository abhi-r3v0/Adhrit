.class final Lo/getAudioStream$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAudioStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/MediaMetadataCompatApi21;

.field final synthetic onMessageChannelReady:Landroidx/fragment/app/Fragment;

.field final synthetic onNavigationEvent:Lo/getAudioStream$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/getAudioStream$ICustomTabsCallback;Landroidx/fragment/app/Fragment;Lo/MediaMetadataCompatApi21;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lo/getAudioStream$4;->onNavigationEvent:Lo/getAudioStream$ICustomTabsCallback;

    iput-object p2, p0, Lo/getAudioStream$4;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lo/getAudioStream$4;->extraCallback:Lo/MediaMetadataCompatApi21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 408
    iget-object v0, p0, Lo/getAudioStream$4;->onNavigationEvent:Lo/getAudioStream$ICustomTabsCallback;

    iget-object v1, p0, Lo/getAudioStream$4;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lo/getAudioStream$4;->extraCallback:Lo/MediaMetadataCompatApi21;

    invoke-interface {v0, v1, v2}, Lo/getAudioStream$ICustomTabsCallback;->onPostMessage(Landroidx/fragment/app/Fragment;Lo/MediaMetadataCompatApi21;)V

    return-void
.end method
