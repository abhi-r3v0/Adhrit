.class final Lo/KeysExpiredException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CustomEventBanner;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    return-object p1
.end method

.method public final onPostMessage(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation

    return-object p1
.end method
