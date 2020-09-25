.class public interface abstract Lo/Event;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract extraCallback(Lo/ExceptionTracker;)V
.end method

.method public abstract extraCallback(Lo/Event$Action;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Lo/Event$Action;Lo/SessionInfo;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
