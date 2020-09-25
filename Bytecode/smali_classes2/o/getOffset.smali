.class final synthetic Lo/getOffset;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/from;


# instance fields
.field private final arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getOffset;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;

    iput-object p2, p0, Lo/getOffset;->arg$2:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;Ljava/lang/String;)Lo/from;
    .locals 1

    new-instance v0, Lo/getOffset;

    invoke-direct {v0, p0, p1}, Lo/getOffset;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lo/getOffset;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;

    iget-object v1, p0, Lo/getOffset;->arg$2:Ljava/lang/String;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->lambda$removeAcknowledgedMutations$1(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;Ljava/lang/String;Landroid/database/Cursor;)V

    return-void
.end method
