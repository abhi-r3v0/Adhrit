.class public interface abstract Lo/enableFacebookDeferredApplinks$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/enableFacebookDeferredApplinks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "extraCallback"
.end annotation


# virtual methods
.method public abstract extraCallback()V
.end method

.method public abstract onMessageChannelReady(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/Throwable;)V
.end method
