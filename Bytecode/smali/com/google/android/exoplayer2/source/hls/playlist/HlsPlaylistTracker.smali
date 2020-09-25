.class public interface abstract Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistResetException;,
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;,
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$onMessageChannelReady;,
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$onNavigationEvent;,
        Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$extraCallback;
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback()V
.end method

.method public abstract ICustomTabsCallback(Landroid/net/Uri;Lo/Account$extraCallback;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$onNavigationEvent;)V
.end method

.method public abstract ICustomTabsCallback(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$onMessageChannelReady;)V
.end method

.method public abstract extraCallback(Landroid/net/Uri;Z)Lo/SessionCallResponseJsonAdapter;
.end method

.method public abstract extraCallback()Lo/ShortCircuitInfo;
.end method

.method public abstract extraCallback(Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Landroid/net/Uri;)Z
.end method

.method public abstract onNavigationEvent()Z
.end method

.method public abstract onPostMessage()J
.end method

.method public abstract onPostMessage(Landroid/net/Uri;)V
.end method

.method public abstract onPostMessage(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$onMessageChannelReady;)V
.end method
