.class final Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReportWithSessionId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# static fields
.field static final onPostMessage:Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;


# instance fields
.field final ICustomTabsCallback:Ljava/lang/Runnable;

.field extraCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;

.field final onMessageChannelReady:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 253
    new-instance v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sput-object v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;->onPostMessage:Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/Runnable;

    .line 262
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    return-void
.end method
