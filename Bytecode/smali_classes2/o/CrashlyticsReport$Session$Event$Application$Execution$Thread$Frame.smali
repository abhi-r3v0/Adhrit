.class public interface abstract Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onClose(Lo/emptyMap;)V
.end method

.method public abstract onHeaders(Lo/getPredecessorKey;)V
.end method

.method public abstract onNext(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation
.end method

.method public abstract onOpen()V
.end method
