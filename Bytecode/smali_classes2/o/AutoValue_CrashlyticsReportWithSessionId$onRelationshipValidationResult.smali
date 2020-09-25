.class final Lo/AutoValue_CrashlyticsReportWithSessionId$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReportWithSessionId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onRelationshipValidationResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x0

    .line 323
    invoke-static {v0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->onNavigationEvent(Lo/AutoValue_CrashlyticsReportWithSessionId;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_0

    return-void

    .line 327
    :cond_0
    invoke-static {v0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->onMessageChannelReady(Lo/getBatteryLevel;)Ljava/lang/Object;

    move-result-object v1

    .line 328
    invoke-static {}, Lo/AutoValue_CrashlyticsReportWithSessionId;->ICustomTabsCallback()Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;

    move-result-object v2

    invoke-virtual {v2, v0, p0, v1}, Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;->onMessageChannelReady(Lo/AutoValue_CrashlyticsReportWithSessionId;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    invoke-static {v0}, Lo/AutoValue_CrashlyticsReportWithSessionId;->ICustomTabsCallback(Lo/AutoValue_CrashlyticsReportWithSessionId;)V

    :cond_1
    return-void
.end method
