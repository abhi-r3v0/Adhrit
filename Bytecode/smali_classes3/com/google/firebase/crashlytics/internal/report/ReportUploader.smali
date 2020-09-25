.class public Lcom/google/firebase/crashlytics/internal/report/ReportUploader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Worker;,
        Lcom/google/firebase/crashlytics/internal/report/ReportUploader$ReportFilesProvider;,
        Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Provider;,
        Lcom/google/firebase/crashlytics/internal/report/ReportUploader$HandlingExceptionCheck;
    }
.end annotation


# static fields
.field private static final RETRY_INTERVALS:[S


# instance fields
.field private final createReportCall:Lcom/google/firebase/crashlytics/internal/report/network/CreateReportSpiCall;

.field private final dataTransportState:Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

.field private final googleAppId:Ljava/lang/String;

.field private final handlingExceptionCheck:Lcom/google/firebase/crashlytics/internal/report/ReportUploader$HandlingExceptionCheck;

.field private final organizationId:Ljava/lang/String;

.field private final reportManager:Lcom/google/firebase/crashlytics/internal/report/ReportManager;

.field private uploadThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [S

    .line 49
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->RETRY_INTERVALS:[S

    return-void

    nop

    :array_0
    .array-data 2
        0xas
        0x14s
        0x1es
        0x3cs
        0x78s
        0x12cs
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/common/DataTransportState;Lcom/google/firebase/crashlytics/internal/report/ReportManager;Lcom/google/firebase/crashlytics/internal/report/network/CreateReportSpiCall;Lcom/google/firebase/crashlytics/internal/report/ReportUploader$HandlingExceptionCheck;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_0

    .line 69
    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->createReportCall:Lcom/google/firebase/crashlytics/internal/report/network/CreateReportSpiCall;

    .line 70
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->organizationId:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->googleAppId:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->dataTransportState:Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    .line 73
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->reportManager:Lcom/google/firebase/crashlytics/internal/report/ReportManager;

    .line 74
    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->handlingExceptionCheck:Lcom/google/firebase/crashlytics/internal/report/ReportUploader$HandlingExceptionCheck;

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "createReportCall must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$002(Lcom/google/firebase/crashlytics/internal/report/ReportUploader;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->uploadThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/firebase/crashlytics/internal/report/ReportUploader;)Lcom/google/firebase/crashlytics/internal/report/ReportUploader$HandlingExceptionCheck;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->handlingExceptionCheck:Lcom/google/firebase/crashlytics/internal/report/ReportUploader$HandlingExceptionCheck;

    return-object p0
.end method

.method static synthetic access$200()[S
    .locals 1

    .line 30
    sget-object v0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->RETRY_INTERVALS:[S

    return-object v0
.end method


# virtual methods
.method isUploading()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->uploadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public uploadReport(Lcom/google/firebase/crashlytics/internal/report/model/Report;Z)Z
    .locals 5

    const/4 v0, 0x0

    .line 102
    :try_start_0
    new-instance v1, Lcom/google/firebase/crashlytics/internal/report/model/CreateReportRequest;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->organizationId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->googleAppId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/firebase/crashlytics/internal/report/model/CreateReportRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/report/model/Report;)V

    .line 107
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->dataTransportState:Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    sget-object v3, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;->ALL:Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 108
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p2

    const-string v1, "Send to Reports Endpoint disabled. Removing Reports Endpoint report."

    .line 109
    invoke-virtual {p2, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->dataTransportState:Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    sget-object v3, Lcom/google/firebase/crashlytics/internal/common/DataTransportState;->JAVA_ONLY:Lcom/google/firebase/crashlytics/internal/common/DataTransportState;

    if-ne v2, v3, :cond_1

    .line 111
    invoke-interface {p1}, Lcom/google/firebase/crashlytics/internal/report/model/Report;->getType()Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;->JAVA:Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;

    if-ne v2, v3, :cond_1

    .line 112
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p2

    const-string v1, "Send to Reports Endpoint for non-native reports disabled. Removing Reports Uploader report."

    .line 113
    invoke-virtual {p2, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    :goto_0
    const/4 p2, 0x1

    goto :goto_2

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->createReportCall:Lcom/google/firebase/crashlytics/internal/report/network/CreateReportSpiCall;

    invoke-interface {v2, v1, p2}, Lcom/google/firebase/crashlytics/internal/report/network/CreateReportSpiCall;->invoke(Lcom/google/firebase/crashlytics/internal/report/model/CreateReportRequest;Z)Z

    move-result p2

    .line 117
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Crashlytics Reports Endpoint upload "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const-string v3, "complete: "

    goto :goto_1

    :cond_2
    const-string v3, "FAILED: "

    .line 120
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-interface {p1}, Lcom/google/firebase/crashlytics/internal/report/model/Report;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->i(Ljava/lang/String;)V

    :goto_2
    if-eqz p2, :cond_3

    .line 126
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->reportManager:Lcom/google/firebase/crashlytics/internal/report/ReportManager;

    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/internal/report/ReportManager;->deleteReport(Lcom/google/firebase/crashlytics/internal/report/model/Report;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_3

    :catch_0
    move-exception p2

    .line 130
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Error occurred sending report "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return v0
.end method

.method public declared-synchronized uploadReportsAsync(Ljava/util/List;ZF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/report/model/Report;",
            ">;ZF)V"
        }
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->uploadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p1

    const-string p2, "Report upload has already been started."

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 84
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Worker;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/report/ReportUploader$Worker;-><init>(Lcom/google/firebase/crashlytics/internal/report/ReportUploader;Ljava/util/List;ZF)V

    .line 85
    new-instance p1, Ljava/lang/Thread;

    const-string p2, "Crashlytics Report Uploader"

    invoke-direct {p1, v0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/report/ReportUploader;->uploadThread:Ljava/lang/Thread;

    .line 86
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
