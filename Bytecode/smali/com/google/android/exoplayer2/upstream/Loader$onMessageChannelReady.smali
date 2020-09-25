.class public interface abstract Lcom/google/android/exoplayer2/upstream/Loader$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onMessageChannelReady(Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;JJZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJZ)V"
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;"
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Lcom/google/android/exoplayer2/upstream/Loader$ICustomTabsCallback;JJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)V"
        }
    .end annotation
.end method
