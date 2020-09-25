.class public Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final eventListener:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private volatile muted:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
            "TT;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;->muted:Z

    .line 33
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;->executor:Ljava/util/concurrent/Executor;

    .line 34
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;->eventListener:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;

    return-void
.end method

.method public static synthetic lambda$onEvent$0(Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 1

    .line 41
    iget-boolean v0, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;->muted:Z

    if-nez v0, :cond_0

    .line 42
    iget-object p0, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;->eventListener:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;

    invoke-interface {p0, p1, p2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public mute()V
    .locals 1

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;->muted:Z

    return-void
.end method

.method public onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/firebase/firestore/FirebaseFirestoreException;",
            ")V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p0, p1, p2}, Lo/addAllInternal;->lambdaFactory$(Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
