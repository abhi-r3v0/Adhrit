.class final synthetic Lo/AutoValue_CrashlyticsReport_Session_Event_Device$Builder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/from;


# instance fields
.field private final arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Device;

.field private final arg$2:Landroid/util/SparseArray;

.field private final arg$3:[I


# direct methods
.method private constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;Landroid/util/SparseArray;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$Builder;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Device;

    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$Builder;->arg$2:Landroid/util/SparseArray;

    iput-object p3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$Builder;->arg$3:[I

    return-void
.end method

.method public static lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;Landroid/util/SparseArray;[I)Lo/from;
    .locals 1

    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$Builder;

    invoke-direct {v0, p0, p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$Builder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;Landroid/util/SparseArray;[I)V

    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$Builder;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Device;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$Builder;->arg$2:Landroid/util/SparseArray;

    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$Builder;->arg$3:[I

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->lambda$removeQueries$2(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;Landroid/util/SparseArray;[ILandroid/database/Cursor;)V

    return-void
.end method
