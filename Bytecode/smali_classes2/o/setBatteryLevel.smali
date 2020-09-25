.class final synthetic Lo/setBatteryLevel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/from;


# instance fields
.field private final arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Device;

.field private final arg$2:Lo/setClsId;

.field private final arg$3:Lo/AutoValue_CrashlyticsReport_Session_Event_Device$ICustomTabsCallback;


# direct methods
.method private constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;Lo/setClsId;Lo/AutoValue_CrashlyticsReport_Session_Event_Device$ICustomTabsCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setBatteryLevel;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Device;

    iput-object p2, p0, Lo/setBatteryLevel;->arg$2:Lo/setClsId;

    iput-object p3, p0, Lo/setBatteryLevel;->arg$3:Lo/AutoValue_CrashlyticsReport_Session_Event_Device$ICustomTabsCallback;

    return-void
.end method

.method public static lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;Lo/setClsId;Lo/AutoValue_CrashlyticsReport_Session_Event_Device$ICustomTabsCallback;)Lo/from;
    .locals 1

    new-instance v0, Lo/setBatteryLevel;

    invoke-direct {v0, p0, p1, p2}, Lo/setBatteryLevel;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;Lo/setClsId;Lo/AutoValue_CrashlyticsReport_Session_Event_Device$ICustomTabsCallback;)V

    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lo/setBatteryLevel;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Device;

    iget-object v1, p0, Lo/setBatteryLevel;->arg$2:Lo/setClsId;

    iget-object v2, p0, Lo/setBatteryLevel;->arg$3:Lo/AutoValue_CrashlyticsReport_Session_Event_Device$ICustomTabsCallback;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->lambda$getTargetData$3(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;Lo/setClsId;Lo/AutoValue_CrashlyticsReport_Session_Event_Device$ICustomTabsCallback;Landroid/database/Cursor;)V

    return-void
.end method
