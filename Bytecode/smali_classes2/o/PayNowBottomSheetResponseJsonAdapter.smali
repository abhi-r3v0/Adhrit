.class final Lo/PayNowBottomSheetResponseJsonAdapter;
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
.field private final onNavigationEvent:Lo/Overlay$$Parcelable;

.field private final onPostMessage:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/PayNowBottomSheetResponseJsonAdapter;->onPostMessage:Ljava/lang/Object;

    new-instance p1, Lo/Overlay$$Parcelable;

    invoke-direct {p1}, Lo/Overlay$$Parcelable;-><init>()V

    iput-object p1, p0, Lo/PayNowBottomSheetResponseJsonAdapter;->onNavigationEvent:Lo/Overlay$$Parcelable;

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lo/PayNowBottomSheetResponseJsonAdapter;->onPostMessage:Ljava/lang/Object;

    return-object v0
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

    iget-object p1, p0, Lo/PayNowBottomSheetResponseJsonAdapter;->onPostMessage:Ljava/lang/Object;

    return-object p1
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

    iget-object v0, p0, Lo/PayNowBottomSheetResponseJsonAdapter;->onNavigationEvent:Lo/Overlay$$Parcelable;

    invoke-virtual {v0, p1, p2}, Lo/Overlay$$Parcelable;->onNavigationEvent(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
