.class Lo/AutoValue_CrashlyticsReport_Session_Event_Device$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReport_Session_Event_Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field keys:Lo/CrashlyticsReportWithSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->emptyKeySet()Lo/CrashlyticsReportWithSessionId;

    move-result-object v0

    iput-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$extraCallback;->keys:Lo/CrashlyticsReportWithSessionId;

    return-void
.end method

.method synthetic constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Device$2;)V
    .locals 0

    .line 300
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device$extraCallback;-><init>()V

    return-void
.end method
