.class public Lo/DeliveryMechanism$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DeliveryMechanism;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private jitterFactor:D

.field private final logger:Lo/FileLogStore;

.field private minRetryDelayAfterFailure:J

.field private retryExponent:D

.field private retryMaxDelay:J

.field private final service:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lo/deleteLogFile;Ljava/lang/String;)V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 117
    iput-wide v0, p0, Lo/DeliveryMechanism$ICustomTabsCallback;->minRetryDelayAfterFailure:J

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 118
    iput-wide v0, p0, Lo/DeliveryMechanism$ICustomTabsCallback;->jitterFactor:D

    const-wide/16 v0, 0x7530

    .line 119
    iput-wide v0, p0, Lo/DeliveryMechanism$ICustomTabsCallback;->retryMaxDelay:J

    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    .line 120
    iput-wide v0, p0, Lo/DeliveryMechanism$ICustomTabsCallback;->retryExponent:D

    .line 124
    iput-object p1, p0, Lo/DeliveryMechanism$ICustomTabsCallback;->service:Ljava/util/concurrent/ScheduledExecutorService;

    .line 125
    new-instance p1, Lo/FileLogStore;

    invoke-direct {p1, p2, p3}, Lo/FileLogStore;-><init>(Lo/deleteLogFile;Ljava/lang/String;)V

    iput-object p1, p0, Lo/DeliveryMechanism$ICustomTabsCallback;->logger:Lo/FileLogStore;

    return-void
.end method


# virtual methods
.method public build()Lo/DeliveryMechanism;
    .locals 13

    .line 152
    new-instance v12, Lo/DeliveryMechanism;

    iget-object v1, p0, Lo/DeliveryMechanism$ICustomTabsCallback;->service:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lo/DeliveryMechanism$ICustomTabsCallback;->logger:Lo/FileLogStore;

    iget-wide v3, p0, Lo/DeliveryMechanism$ICustomTabsCallback;->minRetryDelayAfterFailure:J

    iget-wide v5, p0, Lo/DeliveryMechanism$ICustomTabsCallback;->retryMaxDelay:J

    iget-wide v7, p0, Lo/DeliveryMechanism$ICustomTabsCallback;->retryExponent:D

    iget-wide v9, p0, Lo/DeliveryMechanism$ICustomTabsCallback;->jitterFactor:D

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lo/DeliveryMechanism;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lo/FileLogStore;JJDDLo/DeliveryMechanism$1;)V

    return-object v12
.end method

.method public withJitterFactor(D)Lo/DeliveryMechanism$ICustomTabsCallback;
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_0

    .line 147
    iput-wide p1, p0, Lo/DeliveryMechanism$ICustomTabsCallback;->jitterFactor:D

    return-object p0

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Argument out of range: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withMaxDelay(J)Lo/DeliveryMechanism$ICustomTabsCallback;
    .locals 0

    .line 134
    iput-wide p1, p0, Lo/DeliveryMechanism$ICustomTabsCallback;->retryMaxDelay:J

    return-object p0
.end method

.method public withMinDelayAfterFailure(J)Lo/DeliveryMechanism$ICustomTabsCallback;
    .locals 0

    .line 129
    iput-wide p1, p0, Lo/DeliveryMechanism$ICustomTabsCallback;->minRetryDelayAfterFailure:J

    return-object p0
.end method

.method public withRetryExponent(D)Lo/DeliveryMechanism$ICustomTabsCallback;
    .locals 0

    .line 139
    iput-wide p1, p0, Lo/DeliveryMechanism$ICustomTabsCallback;->retryExponent:D

    return-object p0
.end method
