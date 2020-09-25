.class public abstract Lo/getMaxKey;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/getMaxKey<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPostMessage(Ljava/lang/String;)Lo/getMaxKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/getMaxKey<",
            "*>;"
        }
    .end annotation

    .line 76
    invoke-static {}, Lio/grpc/ManagedChannelProvider;->onNavigationEvent()Lio/grpc/ManagedChannelProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/ManagedChannelProvider;->onMessageChannelReady(Ljava/lang/String;)Lo/getMaxKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onMessageChannelReady()Lo/getMaxKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract onNavigationEvent()Lo/insert;
.end method

.method public onPostMessage(JLjava/util/concurrent/TimeUnit;)Lo/getMaxKey;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 353
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
