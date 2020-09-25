.class public final Lo/sendSessionEvent;
.super Landroid/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/sendSessionEvent$extraCallback;,
        Lo/sendSessionEvent$onMessageChannelReady;
    }
.end annotation


# instance fields
.field extraCallback:Lo/sendSessionEvent$onMessageChannelReady;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback(Landroid/app/Activity;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V
    .locals 1

    .line 60
    instance-of v0, p0, Lo/MediaSessionCompat;

    if-eqz v0, :cond_0

    .line 61
    check-cast p0, Lo/MediaSessionCompat;

    invoke-interface {p0}, Lo/MediaSessionCompat;->onPostMessage()Lo/setCallback;

    move-result-object p0

    .line 1130
    invoke-static {p1}, Lo/setCallback;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p1

    .line 1131
    invoke-virtual {p0, p1}, Lo/setCallback;->onPostMessage(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    return-void

    .line 65
    :cond_0
    instance-of v0, p0, Lo/toLegacyStreamType;

    if-eqz v0, :cond_1

    .line 66
    check-cast p0, Lo/toLegacyStreamType;

    invoke-interface {p0}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p0

    .line 67
    instance-of v0, p0, Lo/setCallback;

    if-eqz v0, :cond_1

    .line 68
    check-cast p0, Lo/setCallback;

    .line 2130
    invoke-static {p1}, Lo/setCallback;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p1

    .line 2131
    invoke-virtual {p0, p1}, Lo/setCallback;->onPostMessage(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    :cond_1
    return-void
.end method

.method public static onNavigationEvent(Landroid/app/Activity;)V
    .locals 3

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 43
    new-instance v0, Lo/sendSessionEvent$extraCallback;

    invoke-direct {v0}, Lo/sendSessionEvent$extraCallback;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    .line 51
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 52
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lo/sendSessionEvent;

    invoke-direct {v2}, Lo/sendSessionEvent;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 54
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 100
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 102
    sget-object p1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_CREATE:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 2140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 2144
    invoke-virtual {p0}, Lo/sendSessionEvent;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lo/sendSessionEvent;->ICustomTabsCallback(Landroid/app/Activity;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 133
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 134
    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_DESTROY:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 7140
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_0

    .line 7144
    invoke-virtual {p0}, Lo/sendSessionEvent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lo/sendSessionEvent;->ICustomTabsCallback(Landroid/app/Activity;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    :cond_0
    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lo/sendSessionEvent;->extraCallback:Lo/sendSessionEvent$onMessageChannelReady;

    return-void
.end method

.method public final onPause()V
    .locals 3

    .line 121
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 122
    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_PAUSE:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 5140
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_0

    .line 5144
    invoke-virtual {p0}, Lo/sendSessionEvent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lo/sendSessionEvent;->ICustomTabsCallback(Landroid/app/Activity;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 114
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 115
    iget-object v0, p0, Lo/sendSessionEvent;->extraCallback:Lo/sendSessionEvent$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 4094
    invoke-interface {v0}, Lo/sendSessionEvent$onMessageChannelReady;->ICustomTabsCallback()V

    .line 116
    :cond_0
    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_RESUME:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 4140
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_1

    .line 4144
    invoke-virtual {p0}, Lo/sendSessionEvent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lo/sendSessionEvent;->ICustomTabsCallback(Landroid/app/Activity;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 107
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 108
    iget-object v0, p0, Lo/sendSessionEvent;->extraCallback:Lo/sendSessionEvent$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 3088
    invoke-interface {v0}, Lo/sendSessionEvent$onMessageChannelReady;->onMessageChannelReady()V

    .line 109
    :cond_0
    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_START:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 3140
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_1

    .line 3144
    invoke-virtual {p0}, Lo/sendSessionEvent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lo/sendSessionEvent;->ICustomTabsCallback(Landroid/app/Activity;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    :cond_1
    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 127
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 128
    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_STOP:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 6140
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_0

    .line 6144
    invoke-virtual {p0}, Lo/sendSessionEvent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lo/sendSessionEvent;->ICustomTabsCallback(Landroid/app/Activity;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    :cond_0
    return-void
.end method
