.class final synthetic Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$Builder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/from;


# instance fields
.field private final arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;

.field private final arg$2:Ljava/util/Map;


# direct methods
.method private constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$Builder;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;

    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$Builder;->arg$2:Ljava/util/Map;

    return-void
.end method

.method public static lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;Ljava/util/Map;)Lo/from;
    .locals 1

    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$Builder;

    invoke-direct {v0, p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$Builder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$Builder;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$Builder;->arg$2:Ljava/util/Map;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;->lambda$getAll$1(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;Ljava/util/Map;Landroid/database/Cursor;)V

    return-void
.end method
