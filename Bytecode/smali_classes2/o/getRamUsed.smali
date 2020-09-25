.class final synthetic Lo/getRamUsed;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/from;


# instance fields
.field private final arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Device;

.field private final arg$2:Lo/from;


# direct methods
.method private constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;Lo/from;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getRamUsed;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Device;

    iput-object p2, p0, Lo/getRamUsed;->arg$2:Lo/from;

    return-void
.end method

.method public static lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;Lo/from;)Lo/from;
    .locals 1

    new-instance v0, Lo/getRamUsed;

    invoke-direct {v0, p0, p1}, Lo/getRamUsed;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;Lo/from;)V

    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lo/getRamUsed;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Device;

    iget-object v1, p0, Lo/getRamUsed;->arg$2:Lo/from;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->lambda$forEachTarget$1(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;Lo/from;Landroid/database/Cursor;)V

    return-void
.end method
