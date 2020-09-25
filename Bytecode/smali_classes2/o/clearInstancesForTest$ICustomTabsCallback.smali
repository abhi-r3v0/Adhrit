.class final Lo/clearInstancesForTest$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/notifyBackgroundStateChangeListeners;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/clearInstancesForTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lo/clearInstancesForTest$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lo/clearInstancesForTest$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .locals 1

    .line 7
    iget-object v0, p0, Lo/clearInstancesForTest$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .locals 0

    .line 5
    iget-object p1, p0, Lo/clearInstancesForTest$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lo/clearInstancesForTest$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
