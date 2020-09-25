.class final Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onPostMessage"
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 120
    :pswitch_0
    iget-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2190
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-eq v3, v4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2194
    :cond_0
    sget v3, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onMessageChannelReady;->hide_fingerprint_instantly_prefixes:I

    invoke-static {p1, v2, v3}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 121
    :cond_1
    invoke-static {v0, v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->extraCallback(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;Z)Z

    goto :goto_1

    .line 114
    :pswitch_1
    iget-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    .line 1321
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "FingerprintDialogFrag"

    const-string v0, "Failed to dismiss fingerprint dialog fragment. Fragment manager was null."

    .line 1322
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1325
    :cond_2
    invoke-virtual {p1}, Lo/onAudioInfoChanged;->onMessageChannelReady()V

    return-void

    .line 117
    :pswitch_2
    iget-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->extraCallback(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;)V

    return-void

    .line 111
    :pswitch_3
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onMessageChannelReady(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;Ljava/lang/CharSequence;)V

    return-void

    .line 108
    :pswitch_4
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->ICustomTabsCallback(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;Ljava/lang/CharSequence;)V

    return-void

    .line 105
    :pswitch_5
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2$onPostMessage;->onMessageChannelReady:Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->onNavigationEvent(Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
