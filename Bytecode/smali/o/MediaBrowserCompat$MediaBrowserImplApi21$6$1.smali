.class final Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;
.super Lo/putLong$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;


# direct methods
.method constructor <init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    invoke-direct {p0}, Lo/putLong$extraCallback;-><init>()V

    return-void
.end method

.method private onMessageChannelReady(ILjava/lang/CharSequence;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    invoke-static {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onMessageChannelReady(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;)Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;

    move-result-object v0

    .line 1071
    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;->extraCallback:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2104
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    if-eqz v0, :cond_0

    .line 2246
    iget-boolean v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->extraCallback:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$3;

    invoke-direct {v1, p0, p1, p2}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$3;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;ILjava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method static synthetic onNavigationEvent(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;ILjava/lang/CharSequence;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->onMessageChannelReady(ILjava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(ILjava/lang/CharSequence;)V
    .locals 1

    .line 176
    iget-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onMessageChannelReady(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;)Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;

    move-result-object p1

    .line 4076
    iget-object p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;->extraCallback:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 3

    .line 207
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    invoke-static {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onMessageChannelReady(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;)Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    .line 208
    invoke-static {v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onPostMessage(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onTransact;->fingerprint_not_recognized:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5076
    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;->extraCallback:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 209
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->extraCallback:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$4;

    invoke-direct {v1, p0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$4;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onNavigationEvent(ILjava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 133
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    invoke-static {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->extraCallback(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;)I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-direct {p0, p1, p2}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->onMessageChannelReady(ILjava/lang/CharSequence;)V

    .line 137
    :cond_0
    iget-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onNavigationEvent(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;)V

    return-void

    :cond_1
    const/4 v0, 0x7

    if-eq p1, v0, :cond_5

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_0

    .line 149
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Got null string for error message: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "FingerprintHelperFrag"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    invoke-static {p2}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onPostMessage(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onTransact;->default_error_msg:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 155
    :goto_0
    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->extraCallback(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p1, 0x8

    .line 158
    :cond_4
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    invoke-static {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onMessageChannelReady(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;)Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;

    move-result-object v0

    .line 3081
    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;->extraCallback:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 160
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    invoke-static {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->ICustomTabsCallback(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$5;

    invoke-direct {v1, p0, p1, p2}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$5;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;ILjava/lang/CharSequence;)V

    iget-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    .line 169
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$2;->extraCallback(Landroid/content/Context;)I

    move-result p1

    int-to-long p1, p1

    .line 160
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 140
    :cond_5
    :goto_1
    invoke-direct {p0, p1, p2}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->onMessageChannelReady(ILjava/lang/CharSequence;)V

    .line 141
    iget-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onNavigationEvent(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/putLong$onMessageChannelReady;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    invoke-static {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onMessageChannelReady(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;)Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;

    move-result-object v0

    .line 5071
    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$onMessageChannelReady;->extraCallback:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    if-eqz p1, :cond_0

    .line 189
    new-instance v0, Lo/run$onMessageChannelReady;

    .line 192
    invoke-virtual {p1}, Lo/putLong$onMessageChannelReady;->ICustomTabsCallback()Lo/putLong$ICustomTabsCallback;

    move-result-object p1

    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->ICustomTabsCallback(Lo/putLong$ICustomTabsCallback;)Lo/run$onPostMessage;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/run$onMessageChannelReady;-><init>(Lo/run$onPostMessage;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lo/run$onMessageChannelReady;

    const/4 p1, 0x0

    invoke-direct {v0, p1}, Lo/run$onMessageChannelReady;-><init>(Lo/run$onPostMessage;)V

    .line 195
    :goto_0
    iget-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    iget-object p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->extraCallback:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$1;

    invoke-direct {v1, p0, v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1$1;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;Lo/run$onMessageChannelReady;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 202
    iget-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6$1;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;

    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;->onNavigationEvent(Lo/MediaBrowserCompat$MediaBrowserImplApi21$6;)V

    return-void
.end method
