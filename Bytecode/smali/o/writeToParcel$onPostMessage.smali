.class final Lo/writeToParcel$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getBatteryLevel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeToParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/getBatteryLevel<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/writeToParcel$ICustomTabsCallback<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/isBrowsable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isBrowsable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/writeToParcel$ICustomTabsCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/writeToParcel$ICustomTabsCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Lo/writeToParcel$onPostMessage$1;

    invoke-direct {v0, p0}, Lo/writeToParcel$onPostMessage$1;-><init>(Lo/writeToParcel$onPostMessage;)V

    iput-object v0, p0, Lo/writeToParcel$onPostMessage;->extraCallback:Lo/isBrowsable;

    .line 144
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/writeToParcel$onPostMessage;->ICustomTabsCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2

    .line 164
    iget-object v0, p0, Lo/writeToParcel$onPostMessage;->ICustomTabsCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/writeToParcel$ICustomTabsCallback;

    .line 165
    iget-object v1, p0, Lo/writeToParcel$onPostMessage;->extraCallback:Lo/isBrowsable;

    invoke-virtual {v1, p1}, Lo/isBrowsable;->cancel(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1313
    iput-object v1, v0, Lo/writeToParcel$ICustomTabsCallback;->onPostMessage:Ljava/lang/Object;

    .line 1314
    iput-object v1, v0, Lo/writeToParcel$ICustomTabsCallback;->ICustomTabsCallback:Lo/writeToParcel$onPostMessage;

    .line 1315
    iget-object v0, v0, Lo/writeToParcel$ICustomTabsCallback;->onNavigationEvent:Lo/toString;

    invoke-virtual {v0, v1}, Lo/toString;->extraCallback(Ljava/lang/Object;)Z

    :cond_0
    return p1
.end method

.method final extraCallback(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lo/writeToParcel$onPostMessage;->extraCallback:Lo/isBrowsable;

    invoke-virtual {v0, p1}, Lo/isBrowsable;->extraCallback(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lo/writeToParcel$onPostMessage;->extraCallback:Lo/isBrowsable;

    invoke-virtual {v0}, Lo/isBrowsable;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lo/writeToParcel$onPostMessage;->extraCallback:Lo/isBrowsable;

    invoke-virtual {v0, p1, p2, p3}, Lo/isBrowsable;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .locals 1

    .line 189
    iget-object v0, p0, Lo/writeToParcel$onPostMessage;->extraCallback:Lo/isBrowsable;

    invoke-virtual {v0}, Lo/isBrowsable;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final isDone()Z
    .locals 1

    .line 194
    iget-object v0, p0, Lo/writeToParcel$onPostMessage;->extraCallback:Lo/isBrowsable;

    invoke-virtual {v0}, Lo/isBrowsable;->isDone()Z

    move-result v0

    return v0
.end method

.method final onMessageChannelReady(Ljava/lang/Throwable;)Z
    .locals 1

    .line 184
    iget-object v0, p0, Lo/writeToParcel$onPostMessage;->extraCallback:Lo/isBrowsable;

    invoke-virtual {v0, p1}, Lo/isBrowsable;->onNavigationEvent(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lo/writeToParcel$onPostMessage;->extraCallback:Lo/isBrowsable;

    invoke-virtual {v0, p1, p2}, Lo/isBrowsable;->onNavigationEvent(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lo/writeToParcel$onPostMessage;->extraCallback:Lo/isBrowsable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
