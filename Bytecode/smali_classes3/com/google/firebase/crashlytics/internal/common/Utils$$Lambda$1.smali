.class final synthetic Lcom/google/firebase/crashlytics/internal/common/Utils$$Lambda$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isDefaultApp;


# instance fields
.field private final arg$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$$Lambda$1;->arg$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/concurrent/CountDownLatch;)Lo/isDefaultApp;
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/Utils$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/common/Utils$$Lambda$1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$$Lambda$1;->arg$1:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/Utils;->lambda$awaitEvenIfOnMainThread$0(Ljava/util/concurrent/CountDownLatch;Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
