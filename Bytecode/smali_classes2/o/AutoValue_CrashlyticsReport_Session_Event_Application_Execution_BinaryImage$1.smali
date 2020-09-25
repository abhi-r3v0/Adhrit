.class final synthetic Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/from;


# instance fields
.field private final arg$1:Lo/getBaseAddress;

.field private final arg$2:[I


# direct methods
.method private constructor <init>(Lo/getBaseAddress;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage$1;->arg$1:Lo/getBaseAddress;

    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage$1;->arg$2:[I

    return-void
.end method

.method public static lambdaFactory$(Lo/getBaseAddress;[I)Lo/from;
    .locals 1

    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage$1;

    invoke-direct {v0, p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage$1;-><init>(Lo/getBaseAddress;[I)V

    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage$1;->arg$1:Lo/getBaseAddress;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage$1;->arg$2:[I

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, p1}, Lo/getBaseAddress;->lambda$removeOrphanedDocuments$2(Lo/getBaseAddress;[ILandroid/database/Cursor;)V

    return-void
.end method
