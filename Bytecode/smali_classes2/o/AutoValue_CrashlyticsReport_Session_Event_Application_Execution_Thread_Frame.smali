.class final synthetic Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/listIterator;


# instance fields
.field private final arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;


# direct methods
.method private constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;

    return-void
.end method

.method public static lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;)Lo/listIterator;
    .locals 1

    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame;

    invoke-direct {v0, p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;)V

    return-object v0
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;->lambda$get$0(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;Landroid/database/Cursor;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    move-result-object p1

    return-object p1
.end method
