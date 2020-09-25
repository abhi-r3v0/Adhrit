.class public interface abstract Lo/allow;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/allow$onNavigationEvent;,
        Lo/allow$onMessageChannelReady;,
        Lo/allow$ICustomTabsCallback;
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback(Lo/allow$onNavigationEvent;)V
.end method

.method public abstract ICustomTabsCallback$Stub()Lo/allow$onMessageChannelReady;
.end method

.method public abstract ICustomTabsCallback$Stub$Proxy()I
.end method

.method public abstract ICustomTabsService()Z
.end method

.method public abstract ICustomTabsService$Stub()J
.end method

.method public abstract ICustomTabsService$Stub$Proxy()J
.end method

.method public abstract INotificationSideChannel()J
.end method

.method public abstract IPostMessageService()J
.end method

.method public abstract IPostMessageService$Stub()I
.end method

.method public abstract IPostMessageService$Stub$Proxy()I
.end method

.method public abstract asBinder()Lo/allow$ICustomTabsCallback;
.end method

.method public abstract cancel()J
.end method

.method public abstract cancelAll()Lo/JuspaySessionToken;
.end method

.method public abstract extraCallback(IJ)V
.end method

.method public abstract extraCallback()Z
.end method

.method public abstract extraCommand()I
.end method

.method public abstract getDefaultImpl()Lo/InstrumentDataJsonAdapter;
.end method

.method public abstract getInterfaceDescriptor()Lcom/google/android/exoplayer2/ExoPlaybackException;
.end method

.method public abstract newSession()I
.end method

.method public abstract onMessageChannelReady()I
.end method

.method public abstract onMessageChannelReady(I)V
.end method

.method public abstract onMessageChannelReady(Lo/allow$onNavigationEvent;)V
.end method

.method public abstract onNavigationEvent()I
.end method

.method public abstract onNavigationEvent(I)I
.end method

.method public abstract onNavigationEvent(Z)V
.end method

.method public abstract onPostMessage(Z)V
.end method

.method public abstract onPostMessage()Z
.end method

.method public abstract onRelationshipValidationResult()Landroid/os/Looper;
.end method

.method public abstract onTransact()Z
.end method

.method public abstract requestPostMessageChannel()Lo/r;
.end method

.method public abstract setDefaultImpl()Lo/t;
.end method

.method public abstract updateVisuals()Z
.end method

.method public abstract validateRelationship()Z
.end method

.method public abstract warmup()I
.end method
