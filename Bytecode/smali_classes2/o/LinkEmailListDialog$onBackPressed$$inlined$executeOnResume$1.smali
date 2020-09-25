.class final Lo/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Lo/PaymentModeListResponseJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/PaymentModeListResponseJsonAdapter<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Throwable;

.field private final extraCallback:Lo/Overlay$$Parcelable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/Throwable;

    new-instance p1, Lo/Overlay$$Parcelable;

    invoke-direct {p1}, Lo/Overlay$$Parcelable;-><init>()V

    iput-object p1, p0, Lo/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;->extraCallback:Lo/Overlay$$Parcelable;

    invoke-virtual {p1}, Lo/Overlay$$Parcelable;->onNavigationEvent()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lo/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object p2, p0, Lo/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/Throwable;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isDone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onPostMessage(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lo/LinkEmailListDialog$onBackPressed$$inlined$executeOnResume$1;->extraCallback:Lo/Overlay$$Parcelable;

    invoke-virtual {v0, p1, p2}, Lo/Overlay$$Parcelable;->onNavigationEvent(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
