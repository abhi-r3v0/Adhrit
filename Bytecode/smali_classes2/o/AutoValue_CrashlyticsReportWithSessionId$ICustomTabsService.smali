.class final Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReportWithSessionId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsService"
.end annotation


# static fields
.field static final extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;


# instance fields
.field volatile ICustomTabsCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

.field volatile onNavigationEvent:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 178
    new-instance v0, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;-><init>(B)V

    sput-object v0, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;->extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-static {}, Lo/AutoValue_CrashlyticsReportWithSessionId;->ICustomTabsCallback()Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;->onMessageChannelReady(Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;Ljava/lang/Thread;)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
