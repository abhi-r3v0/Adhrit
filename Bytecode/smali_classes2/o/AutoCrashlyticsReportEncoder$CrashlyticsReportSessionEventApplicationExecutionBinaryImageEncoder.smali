.class final synthetic Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;


# instance fields
.field private final arg$1:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

.field private final arg$2:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;


# direct methods
.method private constructor <init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder;->arg$1:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    iput-object p2, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder;->arg$2:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;

    return-void
.end method

.method public static lambdaFactory$(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;
    .locals 1

    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder;

    invoke-direct {v0, p0, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder;-><init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V

    return-object v0
.end method


# virtual methods
.method public final onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 2

    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder;->arg$1:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder;->arg$2:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;

    check-cast p1, Lo/getDiskSpace;

    invoke-static {v0, v1, p1, p2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->lambda$addSnapshotListenerInternal$2(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;Lo/getDiskSpace;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method
