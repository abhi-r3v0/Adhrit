.class public Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final documents:Lo/populateFramesList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/setDiskUsed;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteKeys:Lo/CrashlyticsReportWithSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/populateFramesList;Lo/CrashlyticsReportWithSessionId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/setDiskUsed;",
            ">;",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$1;->documents:Lo/populateFramesList;

    .line 31
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$1;->remoteKeys:Lo/CrashlyticsReportWithSessionId;

    return-void
.end method


# virtual methods
.method public getDocuments()Lo/populateFramesList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/setDiskUsed;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$1;->documents:Lo/populateFramesList;

    return-object v0
.end method

.method public getRemoteKeys()Lo/CrashlyticsReportWithSessionId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution$1;->remoteKeys:Lo/CrashlyticsReportWithSessionId;

    return-object v0
.end method
