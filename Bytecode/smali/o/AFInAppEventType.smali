.class public final Lo/AFInAppEventType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AFInAppEventType;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;

    return-void
.end method

.method public static lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)Ljava/lang/Runnable;
    .locals 1

    .line 3000
    new-instance v0, Lo/AFInAppEventType;

    invoke-direct {v0, p0}, Lo/AFInAppEventType;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/AFInAppEventType;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;

    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->lambda$createLocalDocumentsCollectionIndex$5(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)V

    return-void
.end method
