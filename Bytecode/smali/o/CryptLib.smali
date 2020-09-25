.class public interface abstract Lo/CryptLib;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CryptLib$extraCallback;
    }
.end annotation


# virtual methods
.method public abstract extraCallback(Lo/DreamAppGlideModule;I)V
.end method

.method public abstract onMessageChannelReady(JIIILo/CryptLib$extraCallback;)V
.end method

.method public abstract onNavigationEvent(Lo/Event$Action;IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(Lo/p$a;)V
.end method
