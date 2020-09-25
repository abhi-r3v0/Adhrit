.class public Lo/RealtimeSinceBootClock$onNavigationEvent;
.super Lo/RealtimeSinceBootClock$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RealtimeSinceBootClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/RealtimeSinceBootClock$onMessageChannelReady<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo/RealtimeSinceBootClock$onNavigationEvent<",
        "TMessageType;TBuilderType;>;>",
        "Lo/RealtimeSinceBootClock$ICustomTabsCallback<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lo/RealtimeSinceBootClock$onMessageChannelReady;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;-><init>(Lo/RealtimeSinceBootClock;)V

    return-void
.end method


# virtual methods
.method public final synthetic asInterface()Lo/NativeBlurFilter;
    .locals 1

    iget-boolean v0, p0, Lo/RealtimeSinceBootClock$onNavigationEvent;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/RealtimeSinceBootClock$onNavigationEvent;->onMessageChannelReady:Lo/RealtimeSinceBootClock;

    :goto_0
    check-cast v0, Lo/RealtimeSinceBootClock$onMessageChannelReady;

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/RealtimeSinceBootClock$onNavigationEvent;->onMessageChannelReady:Lo/RealtimeSinceBootClock;

    check-cast v0, Lo/RealtimeSinceBootClock$onMessageChannelReady;

    iget-object v0, v0, Lo/RealtimeSinceBootClock$onMessageChannelReady;->zzjv:Lo/nativeGetSizeInBytes;

    invoke-virtual {v0}, Lo/nativeGetSizeInBytes;->onNavigationEvent()V

    invoke-super {p0}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->extraCallback()Lo/RealtimeSinceBootClock;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic extraCallback()Lo/RealtimeSinceBootClock;
    .locals 1

    invoke-virtual {p0}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->asInterface()Lo/NativeBlurFilter;

    move-result-object v0

    check-cast v0, Lo/RealtimeSinceBootClock$onMessageChannelReady;

    return-object v0
.end method

.method protected final onPostMessage()V
    .locals 2

    iget-boolean v0, p0, Lo/RealtimeSinceBootClock$onNavigationEvent;->onNavigationEvent:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onPostMessage()V

    iget-object v0, p0, Lo/RealtimeSinceBootClock$onNavigationEvent;->onMessageChannelReady:Lo/RealtimeSinceBootClock;

    check-cast v0, Lo/RealtimeSinceBootClock$onMessageChannelReady;

    iget-object v1, p0, Lo/RealtimeSinceBootClock$onNavigationEvent;->onMessageChannelReady:Lo/RealtimeSinceBootClock;

    check-cast v1, Lo/RealtimeSinceBootClock$onMessageChannelReady;

    iget-object v1, v1, Lo/RealtimeSinceBootClock$onMessageChannelReady;->zzjv:Lo/nativeGetSizeInBytes;

    invoke-virtual {v1}, Lo/nativeGetSizeInBytes;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/nativeGetSizeInBytes;

    iput-object v1, v0, Lo/RealtimeSinceBootClock$onMessageChannelReady;->zzjv:Lo/nativeGetSizeInBytes;

    return-void
.end method
