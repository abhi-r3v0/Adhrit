.class final synthetic Lo/getPc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/from;


# instance fields
.field private final arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;

.field private final arg$2:I

.field private final arg$3:Lo/toArray;

.field private final arg$4:Lo/AutoValue_CrashlyticsReport_Session_Application;

.field private final arg$5:[Lo/populateFramesList;


# direct methods
.method private constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;ILo/toArray;Lo/AutoValue_CrashlyticsReport_Session_Application;[Lo/populateFramesList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getPc;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;

    iput p2, p0, Lo/getPc;->arg$2:I

    iput-object p3, p0, Lo/getPc;->arg$3:Lo/toArray;

    iput-object p4, p0, Lo/getPc;->arg$4:Lo/AutoValue_CrashlyticsReport_Session_Application;

    iput-object p5, p0, Lo/getPc;->arg$5:[Lo/populateFramesList;

    return-void
.end method

.method public static lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;ILo/toArray;Lo/AutoValue_CrashlyticsReport_Session_Application;[Lo/populateFramesList;)Lo/from;
    .locals 7

    new-instance v6, Lo/getPc;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/getPc;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;ILo/toArray;Lo/AutoValue_CrashlyticsReport_Session_Application;[Lo/populateFramesList;)V

    return-object v6
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lo/getPc;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;

    iget v1, p0, Lo/getPc;->arg$2:I

    iget-object v2, p0, Lo/getPc;->arg$3:Lo/toArray;

    iget-object v3, p0, Lo/getPc;->arg$4:Lo/AutoValue_CrashlyticsReport_Session_Application;

    iget-object v4, p0, Lo/getPc;->arg$5:[Lo/populateFramesList;

    move-object v5, p1

    check-cast v5, Landroid/database/Cursor;

    invoke-static/range {v0 .. v5}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;->lambda$getAllDocumentsMatchingQuery$3(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;ILo/toArray;Lo/AutoValue_CrashlyticsReport_Session_Application;[Lo/populateFramesList;Landroid/database/Cursor;)V

    return-void
.end method
