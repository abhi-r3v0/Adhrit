.class final Lo/getBody;
.super Ljava/util/concurrent/FutureTask;

# interfaces
.implements Lo/PaymentModeListResponseJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Lo/PaymentModeListResponseJsonAdapter<",
        "TV;>;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/Overlay$$Parcelable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    new-instance p1, Lo/Overlay$$Parcelable;

    invoke-direct {p1}, Lo/Overlay$$Parcelable;-><init>()V

    iput-object p1, p0, Lo/getBody;->ICustomTabsCallback:Lo/Overlay$$Parcelable;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p1, Lo/Overlay$$Parcelable;

    invoke-direct {p1}, Lo/Overlay$$Parcelable;-><init>()V

    iput-object p1, p0, Lo/getBody;->ICustomTabsCallback:Lo/Overlay$$Parcelable;

    return-void
.end method


# virtual methods
.method protected final done()V
    .locals 1

    iget-object v0, p0, Lo/getBody;->ICustomTabsCallback:Lo/Overlay$$Parcelable;

    invoke-virtual {v0}, Lo/Overlay$$Parcelable;->onNavigationEvent()V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lo/getBody;->ICustomTabsCallback:Lo/Overlay$$Parcelable;

    invoke-virtual {v0, p1, p2}, Lo/Overlay$$Parcelable;->onNavigationEvent(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
