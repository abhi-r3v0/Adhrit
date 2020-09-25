.class public Lo/getMediaDescription;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Lo/toLegacyStreamType;
.implements Lo/onPlaybackStateChanged$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getMediaDescription$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private mExtraDataMap:Lo/fromMediaItemList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromMediaItemList<",
            "Ljava/lang/Class<",
            "+",
            "Lo/getMediaDescription$onMessageChannelReady;",
            ">;",
            "Lo/getMediaDescription$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private mLifecycleRegistry:Lo/setCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    new-instance v0, Lo/fromMediaItemList;

    invoke-direct {v0}, Lo/fromMediaItemList;-><init>()V

    iput-object v0, p0, Lo/getMediaDescription;->mExtraDataMap:Lo/fromMediaItemList;

    .line 63
    new-instance v0, Lo/setCallback;

    invoke-direct {v0, p0}, Lo/setCallback;-><init>(Lo/toLegacyStreamType;)V

    iput-object v0, p0, Lo/getMediaDescription;->mLifecycleRegistry:Lo/setCallback;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {v0, p1}, Lo/onPlaybackStateChanged;->extraCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 140
    :cond_0
    invoke-static {p0, v0, p0, p1}, Lo/onPlaybackStateChanged;->onMessageChannelReady(Lo/onPlaybackStateChanged$onNavigationEvent;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {v0, p1}, Lo/onPlaybackStateChanged;->extraCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 131
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getExtraData(Ljava/lang/Class;)Lo/getMediaDescription$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getMediaDescription$onMessageChannelReady;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    iget-object v0, p0, Lo/getMediaDescription;->mExtraDataMap:Lo/fromMediaItemList;

    invoke-virtual {v0, p1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMediaDescription$onMessageChannelReady;

    return-object p1
.end method

.method public getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;
    .locals 1

    .line 113
    iget-object v0, p0, Lo/getMediaDescription;->mLifecycleRegistry:Lo/setCallback;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-static {p0}, Lo/sendSessionEvent;->onNavigationEvent(Landroid/app/Activity;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lo/getMediaDescription;->mLifecycleRegistry:Lo/setCallback;

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1118
    invoke-virtual {v0, v1}, Lo/setCallback;->onPostMessage(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public putExtraData(Lo/getMediaDescription$onMessageChannelReady;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    iget-object v0, p0, Lo/getMediaDescription;->mExtraDataMap:Lo/fromMediaItemList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
