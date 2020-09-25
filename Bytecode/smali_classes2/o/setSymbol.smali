.class final synthetic Lo/setSymbol;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/from;


# instance fields
.field private final arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;


# direct methods
.method private constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setSymbol;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;

    return-void
.end method

.method public static lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)Lo/from;
    .locals 1

    new-instance v0, Lo/setSymbol;

    invoke-direct {v0, p0}, Lo/setSymbol;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)V

    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/setSymbol;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->lambda$dropLastLimboFreeSnapshotVersion$6(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;Landroid/database/Cursor;)V

    return-void
.end method
