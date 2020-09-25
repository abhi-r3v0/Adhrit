.class public interface abstract Lcom/google/android/exoplayer2/upstream/cache/Cache;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;,
        Lcom/google/android/exoplayer2/upstream/cache/Cache$extraCallback;
    }
.end annotation


# virtual methods
.method public abstract extraCallback()J
.end method

.method public abstract extraCallback(Ljava/lang/String;)Lo/PaymentContainerFragment$changeMethodClicked$$inlined$executeOnResume$1;
.end method

.method public abstract extraCallback(Ljava/lang/String;Lo/VisaPayloadWrapper;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation
.end method

.method public abstract extraCallback(Lo/JustPaySafePayloadJsonAdapter;)V
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;JJ)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;J)Lo/JustPaySafePayloadJsonAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/io/File;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Lo/JustPaySafePayloadJsonAdapter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;J)Lo/JustPaySafePayloadJsonAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation
.end method
