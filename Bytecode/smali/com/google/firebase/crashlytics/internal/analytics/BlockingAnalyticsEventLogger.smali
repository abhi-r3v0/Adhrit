.class public Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;
.implements Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventLogger;


# static fields
.field static final APP_EXCEPTION_EVENT_NAME:Ljava/lang/String; = "_ae"


# instance fields
.field private final baseAnalyticsEventLogger:Lcom/google/firebase/crashlytics/internal/analytics/CrashlyticsOriginAnalyticsEventLogger;

.field private callbackReceived:Z

.field private eventLatch:Ljava/util/concurrent/CountDownLatch;

.field private final latchLock:Ljava/lang/Object;

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;

.field private final timeout:I


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/analytics/CrashlyticsOriginAnalyticsEventLogger;ILjava/util/concurrent/TimeUnit;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->latchLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->callbackReceived:Z

    .line 46
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->baseAnalyticsEventLogger:Lcom/google/firebase/crashlytics/internal/analytics/CrashlyticsOriginAnalyticsEventLogger;

    .line 47
    iput p2, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->timeout:I

    .line 48
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->timeUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method isCallbackReceived()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->callbackReceived:Z

    return v0
.end method

.method public logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->latchLock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    const-string v2, "Logging Crashlytics event to Firebase"

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 55
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->eventLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->callbackReceived:Z

    .line 58
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->baseAnalyticsEventLogger:Lcom/google/firebase/crashlytics/internal/analytics/CrashlyticsOriginAnalyticsEventLogger;

    invoke-virtual {v1, p1, p2}, Lcom/google/firebase/crashlytics/internal/analytics/CrashlyticsOriginAnalyticsEventLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 60
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p1

    const-string p2, "Awaiting app exception callback from FA..."

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :try_start_1
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->eventLatch:Ljava/util/concurrent/CountDownLatch;

    iget p2, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->timeout:I

    int-to-long v3, p2

    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    iput-boolean v2, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->callbackReceived:Z

    .line 64
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p1

    const-string p2, "App exception callback received from FA listener."

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p1

    const-string p2, "Timeout exceeded while awaiting app exception callback from FA listener."

    .line 67
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p1

    const-string p2, "Interrupted while awaiting app exception callback from FA listener."

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->eventLatch:Ljava/util/concurrent/CountDownLatch;

    .line 74
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 80
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->eventLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "_ae"

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 87
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void
.end method
