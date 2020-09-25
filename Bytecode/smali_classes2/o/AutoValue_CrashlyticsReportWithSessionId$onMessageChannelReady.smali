.class final Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReportWithSessionId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# static fields
.field static final ICustomTabsCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;

.field static final onPostMessage:Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;


# instance fields
.field final extraCallback:Z

.field final onMessageChannelReady:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 293
    invoke-static {}, Lo/AutoValue_CrashlyticsReportWithSessionId;->onMessageChannelReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 294
    sput-object v1, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;->ICustomTabsCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;

    .line 295
    sput-object v1, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;->onPostMessage:Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;

    return-void

    .line 297
    :cond_0
    new-instance v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;->ICustomTabsCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;

    .line 298
    new-instance v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;->onPostMessage:Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;

    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-boolean p1, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;->extraCallback:Z

    .line 307
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Throwable;

    return-void
.end method
