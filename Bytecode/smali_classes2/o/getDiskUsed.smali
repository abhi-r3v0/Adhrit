.class final synthetic Lo/getDiskUsed;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/from;


# instance fields
.field private final arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Device$extraCallback;


# direct methods
.method private constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Device$extraCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getDiskUsed;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Device$extraCallback;

    return-void
.end method

.method public static lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Device$extraCallback;)Lo/from;
    .locals 1

    new-instance v0, Lo/getDiskUsed;

    invoke-direct {v0, p0}, Lo/getDiskUsed;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Device$extraCallback;)V

    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/getDiskUsed;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Device$extraCallback;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->lambda$getMatchingKeysForTargetId$4(Lo/AutoValue_CrashlyticsReport_Session_Event_Device$extraCallback;Landroid/database/Cursor;)V

    return-void
.end method
