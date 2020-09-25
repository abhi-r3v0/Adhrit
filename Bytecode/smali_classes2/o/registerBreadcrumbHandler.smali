.class public final Lo/registerBreadcrumbHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;)V
    .locals 0

    .line 3000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/registerBreadcrumbHandler;->arg$1:Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;

    return-void
.end method

.method public static extraCallback(Ljava/util/Collection;Ljava/util/Iterator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 355
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    .line 2890
    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 4000
    iget-object v0, p0, Lo/registerBreadcrumbHandler;->arg$1:Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;

    invoke-virtual {v0}, Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;->timeoutConnection()V

    return-void
.end method
