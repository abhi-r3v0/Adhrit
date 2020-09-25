.class final synthetic Lo/getInstallationUuid;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getNdkPayload;


# instance fields
.field private final arg$1:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

.field private final arg$2:Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;


# direct methods
.method private constructor <init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getInstallationUuid;->arg$1:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    iput-object p2, p0, Lo/getInstallationUuid;->arg$2:Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;

    return-void
.end method

.method public static lambdaFactory$(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;)Lo/getNdkPayload;
    .locals 1

    new-instance v0, Lo/getInstallationUuid;

    invoke-direct {v0, p0, p1}, Lo/getInstallationUuid;-><init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;)V

    return-object v0
.end method


# virtual methods
.method public final remove()V
    .locals 2

    iget-object v0, p0, Lo/getInstallationUuid;->arg$1:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    iget-object v1, p0, Lo/getInstallationUuid;->arg$2:Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;

    invoke-static {v0, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->lambda$addSnapshotsInSyncListener$4(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;)V

    return-void
.end method
