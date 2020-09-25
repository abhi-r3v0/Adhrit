.class final synthetic Lo/setOffset;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/from;


# instance fields
.field private final arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Device;


# direct methods
.method private constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setOffset;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Device;

    return-void
.end method

.method public static lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;)Lo/from;
    .locals 1

    new-instance v0, Lo/setOffset;

    invoke-direct {v0, p0}, Lo/setOffset;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;)V

    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/setOffset;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Device;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->lambda$start$0(Lo/AutoValue_CrashlyticsReport_Session_Event_Device;Landroid/database/Cursor;)V

    return-void
.end method
