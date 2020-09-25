.class final synthetic Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionUserEncoder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/listIterator;


# instance fields
.field private final arg$1:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

.field private final arg$2:Ljava/util/concurrent/Executor;

.field private final arg$3:Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;


# direct methods
.method private constructor <init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Ljava/util/concurrent/Executor;Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionUserEncoder;->arg$1:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    iput-object p2, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionUserEncoder;->arg$2:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionUserEncoder;->arg$3:Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;

    return-void
.end method

.method public static lambdaFactory$(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Ljava/util/concurrent/Executor;Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;)Lo/listIterator;
    .locals 1

    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionUserEncoder;

    invoke-direct {v0, p0, p1, p2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionUserEncoder;-><init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Ljava/util/concurrent/Executor;Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;)V

    return-object v0
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionUserEncoder;->arg$1:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionUserEncoder;->arg$2:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionUserEncoder;->arg$3:Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;

    check-cast p1, Lo/getClsId;

    invoke-static {v0, v1, v2, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->lambda$runTransaction$1(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;Ljava/util/concurrent/Executor;Lo/AutoValue_CrashlyticsReport_CustomAttribute$1$onMessageChannelReady;Lo/getClsId;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
