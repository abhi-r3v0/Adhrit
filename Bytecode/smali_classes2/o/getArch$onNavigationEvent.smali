.class public Lo/getArch$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getArch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field final changeSet:Lo/getStartedAt;

.field final documentSet:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

.field final mutatedKeys:Lo/CrashlyticsReportWithSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final needsRefill:Z


# direct methods
.method private constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;Lo/getStartedAt;Lo/CrashlyticsReportWithSessionId;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;",
            "Lo/getStartedAt;",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;Z)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lo/getArch$onNavigationEvent;->documentSet:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    .line 49
    iput-object p2, p0, Lo/getArch$onNavigationEvent;->changeSet:Lo/getStartedAt;

    .line 50
    iput-object p3, p0, Lo/getArch$onNavigationEvent;->mutatedKeys:Lo/CrashlyticsReportWithSessionId;

    .line 51
    iput-boolean p4, p0, Lo/getArch$onNavigationEvent;->needsRefill:Z

    return-void
.end method

.method synthetic constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;Lo/getStartedAt;Lo/CrashlyticsReportWithSessionId;ZLo/getArch$3;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lo/getArch$onNavigationEvent;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;Lo/getStartedAt;Lo/CrashlyticsReportWithSessionId;Z)V

    return-void
.end method

.method static synthetic access$100(Lo/getArch$onNavigationEvent;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lo/getArch$onNavigationEvent;->needsRefill:Z

    return p0
.end method


# virtual methods
.method public needsRefill()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lo/getArch$onNavigationEvent;->needsRefill:Z

    return v0
.end method
