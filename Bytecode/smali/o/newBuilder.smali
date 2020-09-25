.class public final Lo/newBuilder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;

.field private final arg$2:[B

.field private final arg$3:Lo/AutoValue_CrashlyticsReport_Session_Application;

.field private final arg$4:[Lo/populateFramesList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;[BLo/AutoValue_CrashlyticsReport_Session_Application;[Lo/populateFramesList;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/newBuilder;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;

    iput-object p2, p0, Lo/newBuilder;->arg$2:[B

    iput-object p3, p0, Lo/newBuilder;->arg$3:Lo/AutoValue_CrashlyticsReport_Session_Application;

    iput-object p4, p0, Lo/newBuilder;->arg$4:[Lo/populateFramesList;

    return-void
.end method

.method public static lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;[BLo/AutoValue_CrashlyticsReport_Session_Application;[Lo/populateFramesList;)Ljava/lang/Runnable;
    .locals 1

    .line 3000
    new-instance v0, Lo/newBuilder;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/newBuilder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;[BLo/AutoValue_CrashlyticsReport_Session_Application;[Lo/populateFramesList;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2000
    iget-object v0, p0, Lo/newBuilder;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;

    iget-object v1, p0, Lo/newBuilder;->arg$2:[B

    iget-object v2, p0, Lo/newBuilder;->arg$3:Lo/AutoValue_CrashlyticsReport_Session_Application;

    iget-object v3, p0, Lo/newBuilder;->arg$4:[Lo/populateFramesList;

    invoke-static {v0, v1, v2, v3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;->lambda$getAllDocumentsMatchingQuery$2(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;[BLo/AutoValue_CrashlyticsReport_Session_Application;[Lo/populateFramesList;)V

    return-void
.end method
