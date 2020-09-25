.class final synthetic Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/from;


# instance fields
.field private final arg$1:Lo/setBaseAddress;

.field private final arg$2:Ljava/util/Set;

.field private final arg$3:Ljava/util/List;


# direct methods
.method private constructor <init>(Lo/setBaseAddress;Ljava/util/Set;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread;->arg$1:Lo/setBaseAddress;

    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread;->arg$2:Ljava/util/Set;

    iput-object p3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread;->arg$3:Ljava/util/List;

    return-void
.end method

.method public static lambdaFactory$(Lo/setBaseAddress;Ljava/util/Set;Ljava/util/List;)Lo/from;
    .locals 1

    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread;

    invoke-direct {v0, p0, p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread;-><init>(Lo/setBaseAddress;Ljava/util/Set;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread;->arg$1:Lo/setBaseAddress;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread;->arg$2:Ljava/util/Set;

    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread;->arg$3:Ljava/util/List;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, Lo/setBaseAddress;->lambda$getAllMutationBatchesAffectingDocumentKeys$8(Lo/setBaseAddress;Ljava/util/Set;Ljava/util/List;Landroid/database/Cursor;)V

    return-void
.end method
