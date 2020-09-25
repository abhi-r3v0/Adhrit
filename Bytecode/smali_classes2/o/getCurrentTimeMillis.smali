.class public interface abstract Lo/getCurrentTimeMillis;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getCurrentTimeMillis$onMessageChannelReady;,
        Lo/getCurrentTimeMillis$ICustomTabsCallback;,
        Lo/getCurrentTimeMillis$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis$onMessageChannelReady;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/getCurrentTimeMillis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lo/getCurrentTimeMillis$onMessageChannelReady;",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;)",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract getKey()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public abstract getLeft()Lo/getCurrentTimeMillis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract getMax()Lo/getCurrentTimeMillis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract getMin()Lo/getCurrentTimeMillis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract getRight()Lo/getCurrentTimeMillis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public abstract inOrderTraversal(Lo/getCurrentTimeMillis$ICustomTabsCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentTimeMillis$ICustomTabsCallback<",
            "TK;TV;>;)V"
        }
    .end annotation
.end method

.method public abstract insert(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lo/getCurrentTimeMillis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isRed()Z
.end method

.method public abstract remove(Ljava/lang/Object;Ljava/util/Comparator;)Lo/getCurrentTimeMillis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract shortCircuitingInOrderTraversal(Lo/getCurrentTimeMillis$onPostMessage;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentTimeMillis$onPostMessage<",
            "TK;TV;>;)Z"
        }
    .end annotation
.end method

.method public abstract shortCircuitingReverseOrderTraversal(Lo/getCurrentTimeMillis$onPostMessage;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentTimeMillis$onPostMessage<",
            "TK;TV;>;)Z"
        }
    .end annotation
.end method

.method public abstract size()I
.end method
