.class public abstract Lo/MediaSessionCompat$Callback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaSessionCompat$Callback$onPostMessage;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private final extraCallback:I

.field private final onMessageChannelReady:I

.field private onNavigationEvent:Ljava/lang/Object;

.field private onPostMessage:Lo/MediaSessionCompat$Callback$onPostMessage;


# virtual methods
.method public ICustomTabsCallback()Ljava/lang/Object;
    .locals 4

    .line 168
    iget-object v0, p0, Lo/MediaSessionCompat$Callback;->onNavigationEvent:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 169
    iget v0, p0, Lo/MediaSessionCompat$Callback;->extraCallback:I

    iget v1, p0, Lo/MediaSessionCompat$Callback;->onMessageChannelReady:I

    iget v2, p0, Lo/MediaSessionCompat$Callback;->ICustomTabsCallback:I

    new-instance v3, Lo/MediaSessionCompat$Callback$3;

    invoke-direct {v3, p0}, Lo/MediaSessionCompat$Callback$3;-><init>(Lo/MediaSessionCompat$Callback;)V

    invoke-static {v0, v1, v2, v3}, Lo/onMediaButtonEvent;->onPostMessage(IIILo/onMediaButtonEvent$onMessageChannelReady;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/MediaSessionCompat$Callback;->onNavigationEvent:Ljava/lang/Object;

    .line 184
    :cond_0
    iget-object v0, p0, Lo/MediaSessionCompat$Callback;->onNavigationEvent:Ljava/lang/Object;

    return-object v0
.end method

.method public final extraCallback()I
    .locals 1

    .line 113
    iget v0, p0, Lo/MediaSessionCompat$Callback;->onMessageChannelReady:I

    return v0
.end method

.method public extraCallback(I)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 104
    iget v0, p0, Lo/MediaSessionCompat$Callback;->extraCallback:I

    return v0
.end method

.method public onMessageChannelReady(Lo/MediaSessionCompat$Callback$onPostMessage;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lo/MediaSessionCompat$Callback;->onPostMessage:Lo/MediaSessionCompat$Callback$onPostMessage;

    return-void
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 94
    iget v0, p0, Lo/MediaSessionCompat$Callback;->ICustomTabsCallback:I

    return v0
.end method

.method public onPostMessage(I)V
    .locals 0

    return-void
.end method
