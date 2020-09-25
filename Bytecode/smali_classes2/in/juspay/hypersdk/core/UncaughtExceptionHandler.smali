.class public Lin/juspay/hypersdk/core/UncaughtExceptionHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

.field private paymentSessionInfo:Lin/juspay/hypersdk/data/PaymentSessionInfo;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lin/juspay/hypersdk/core/JuspayServices;Lin/juspay/hypersdk/data/PaymentSessionInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lin/juspay/hypersdk/core/UncaughtExceptionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/hypersdk/core/UncaughtExceptionHandler;->LOG_TAG:Ljava/lang/String;

    iput-object p1, p0, Lin/juspay/hypersdk/core/UncaughtExceptionHandler;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lin/juspay/hypersdk/core/UncaughtExceptionHandler;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    iput-object p3, p0, Lin/juspay/hypersdk/core/UncaughtExceptionHandler;->paymentSessionInfo:Lin/juspay/hypersdk/data/PaymentSessionInfo;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lin/juspay/hypersdk/core/UncaughtExceptionHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Uncaught Exception"

    invoke-static {v1, v2, p2}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lin/juspay/hypersdk/core/UncaughtExceptionHandler;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/core/UncaughtExceptionHandler;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v2, "GODEL_EXCEPTION_OFF"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lin/juspay/hypersdk/data/KeyValueStore;->write(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lin/juspay/hypersdk/core/UncaughtExceptionHandler;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v3, "EXCEPTION_INFO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lin/juspay/hypersdk/core/UncaughtExceptionHandler;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v5}, Lin/juspay/hypersdk/core/JuspayServices;->getSessionInfo()Lin/juspay/hypersdk/data/SessionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lin/juspay/hypersdk/data/SessionInfo;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lin/juspay/hypersdk/data/KeyValueStore;->write(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "main"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lin/juspay/hypersdk/HyperFragment;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_2

    sget-object v1, Lin/juspay/hypersdk/HyperFragment;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    instance-of v1, v1, Lin/juspay/hypersdk/core/UncaughtExceptionHandler;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lin/juspay/hypersdk/HyperFragment;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sget-object v1, Lin/juspay/hypersdk/HyperFragment;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_3
    iget-object p1, p0, Lin/juspay/hypersdk/core/UncaughtExceptionHandler;->paymentSessionInfo:Lin/juspay/hypersdk/data/PaymentSessionInfo;

    const-string p2, "ON_GODEL_EXCEPTION"

    invoke-virtual {p1, p2}, Lin/juspay/hypersdk/data/PaymentSessionInfo;->setGodelDisabled(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lin/juspay/hypersdk/core/UncaughtExceptionHandler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
