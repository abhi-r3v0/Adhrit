.class final synthetic Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Exception;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/from;


# instance fields
.field private final arg$1:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Exception;->arg$1:Ljava/util/List;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/List;)Lo/from;
    .locals 1

    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Exception;

    invoke-direct {v0, p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Exception;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Exception;->arg$1:Ljava/util/List;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lo/setBaseAddress;->lambda$performConsistencyCheck$11(Ljava/util/List;Landroid/database/Cursor;)V

    return-void
.end method
