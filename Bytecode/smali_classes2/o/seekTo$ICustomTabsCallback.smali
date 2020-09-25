.class final Lo/seekTo$ICustomTabsCallback;
.super Lo/getQueueTitle;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/seekTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/seekTo;


# direct methods
.method constructor <init>(Lo/seekTo;)V
    .locals 0

    .line 1238
    iput-object p1, p0, Lo/seekTo$ICustomTabsCallback;->onNavigationEvent:Lo/seekTo;

    invoke-direct {p0}, Lo/getQueueTitle;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Lo/getPlaybackState;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1257
    iget-object p1, p0, Lo/seekTo$ICustomTabsCallback;->onNavigationEvent:Lo/seekTo;

    iget p1, p1, Lo/seekTo;->onMessageChannelReady:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/seekTo$ICustomTabsCallback;->onNavigationEvent:Lo/seekTo;

    iget p1, p1, Lo/seekTo;->ICustomTabsCallback:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1262
    :cond_1
    invoke-virtual {p0, p1}, Lo/getQueueTitle;->onMessageChannelReady(I)Lo/getPlaybackState;

    move-result-object p1

    return-object p1
.end method

.method public final ICustomTabsCallback(IILandroid/os/Bundle;)Z
    .locals 1

    .line 1252
    iget-object v0, p0, Lo/seekTo$ICustomTabsCallback;->onNavigationEvent:Lo/seekTo;

    invoke-virtual {v0, p1, p2, p3}, Lo/seekTo;->onMessageChannelReady(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady(I)Lo/getPlaybackState;
    .locals 1

    .line 1245
    iget-object v0, p0, Lo/seekTo$ICustomTabsCallback;->onNavigationEvent:Lo/seekTo;

    .line 1246
    invoke-virtual {v0, p1}, Lo/seekTo;->onNavigationEvent(I)Lo/getPlaybackState;

    move-result-object p1

    .line 1247
    invoke-static {p1}, Lo/getPlaybackState;->onNavigationEvent(Lo/getPlaybackState;)Lo/getPlaybackState;

    move-result-object p1

    return-object p1
.end method
