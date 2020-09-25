.class public Landroidx/lifecycle/FullLifecycleObserverAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaControllerCompatApi23;


# instance fields
.field private final ICustomTabsCallback:Lo/MediaControllerCompatApi23;

.field private final onMessageChannelReady:Lo/createCallback;


# direct methods
.method public constructor <init>(Lo/createCallback;Lo/MediaControllerCompatApi23;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->onMessageChannelReady:Lo/createCallback;

    .line 29
    iput-object p2, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->ICustomTabsCallback:Lo/MediaControllerCompatApi23;

    return-void
.end method


# virtual methods
.method public extraCallback(Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V
    .locals 2

    .line 34
    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$3;->onPostMessage:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 54
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ON_ANY must not been send by anybody"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :pswitch_1
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->onMessageChannelReady:Lo/createCallback;

    invoke-interface {v0, p1}, Lo/createCallback;->asInterface(Lo/toLegacyStreamType;)V

    goto :goto_0

    .line 48
    :pswitch_2
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->onMessageChannelReady:Lo/createCallback;

    invoke-interface {v0, p1}, Lo/createCallback;->onMessageChannelReady(Lo/toLegacyStreamType;)V

    goto :goto_0

    .line 45
    :pswitch_3
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->onMessageChannelReady:Lo/createCallback;

    invoke-interface {v0, p1}, Lo/createCallback;->extraCallback(Lo/toLegacyStreamType;)V

    goto :goto_0

    .line 42
    :pswitch_4
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->onMessageChannelReady:Lo/createCallback;

    invoke-interface {v0, p1}, Lo/createCallback;->onPostMessage(Lo/toLegacyStreamType;)V

    goto :goto_0

    .line 39
    :pswitch_5
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->onMessageChannelReady:Lo/createCallback;

    invoke-interface {v0, p1}, Lo/createCallback;->onNavigationEvent(Lo/toLegacyStreamType;)V

    goto :goto_0

    .line 36
    :pswitch_6
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->onMessageChannelReady:Lo/createCallback;

    invoke-interface {v0, p1}, Lo/createCallback;->ICustomTabsCallback(Lo/toLegacyStreamType;)V

    .line 56
    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->ICustomTabsCallback:Lo/MediaControllerCompatApi23;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0, p1, p2}, Lo/MediaControllerCompatApi23;->extraCallback(Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
