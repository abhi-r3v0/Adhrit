.class abstract Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReportWithSessionId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "extraCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 1150
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method abstract extraCallback(Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;)V
.end method

.method abstract extraCallback(Lo/AutoValue_CrashlyticsReportWithSessionId;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReportWithSessionId<",
            "*>;",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;",
            ")Z"
        }
    .end annotation
.end method

.method abstract onMessageChannelReady(Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;Ljava/lang/Thread;)V
.end method

.method abstract onMessageChannelReady(Lo/AutoValue_CrashlyticsReportWithSessionId;Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReportWithSessionId<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation
.end method

.method abstract onNavigationEvent(Lo/AutoValue_CrashlyticsReportWithSessionId;Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReportWithSessionId<",
            "*>;",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;",
            ")Z"
        }
    .end annotation
.end method
