.class public interface abstract Lo/ah;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract ICustomTabsCallback(Lo/OaidClient$Info;)Z
.end method

.method public abstract extraCallback(Lo/OaidClient$Info;)J
.end method

.method public abstract extraCallback(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lo/markSupported;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Lo/OaidClient$Info;Lo/Foreground$4$4;)Lo/markSupported;
.end method

.method public abstract onNavigationEvent()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lo/OaidClient$Info;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lo/markSupported;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPostMessage()I
.end method

.method public abstract onPostMessage(Lo/OaidClient$Info;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/OaidClient$Info;",
            ")",
            "Ljava/lang/Iterable<",
            "Lo/markSupported;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onPostMessage(Lo/OaidClient$Info;J)V
.end method
