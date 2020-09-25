.class public abstract Lo/setThreads;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static INDEXING_SUPPORT_ENABLED:Z

.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lo/setThreads;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setThreads;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    sput-boolean v0, Lo/setThreads;->INDEXING_SUPPORT_ENABLED:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getIndexManager()Lo/setArch;
.end method

.method abstract getMutationQueue(Lo/AutoValue_CrashlyticsReport_FilesPayload$1;)Lo/setCustomAttributes;
.end method

.method abstract getReferenceDelegate()Lo/setException;
.end method

.method abstract getRemoteDocumentCache()Lo/getSize;
.end method

.method abstract getTargetCache()Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;
.end method

.method public abstract isStarted()Z
.end method

.method abstract runTransaction(Ljava/lang/String;Lo/reportToJson;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lo/reportToJson<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method abstract runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V
.end method

.method public abstract shutdown()V
.end method

.method public abstract start()V
.end method
