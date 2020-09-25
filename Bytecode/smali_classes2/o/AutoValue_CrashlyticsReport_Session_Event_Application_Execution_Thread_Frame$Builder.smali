.class final synthetic Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame$Builder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/from;


# instance fields
.field private final arg$1:Lo/from;


# direct methods
.method private constructor <init>(Lo/from;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame$Builder;->arg$1:Lo/from;

    return-void
.end method

.method public static lambdaFactory$(Lo/from;)Lo/from;
    .locals 1

    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame$Builder;

    invoke-direct {v0, p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame$Builder;-><init>(Lo/from;)V

    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame$Builder;->arg$1:Lo/from;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->lambda$createV8CollectionParentsIndex$12(Lo/from;Landroid/database/Cursor;)V

    return-void
.end method
