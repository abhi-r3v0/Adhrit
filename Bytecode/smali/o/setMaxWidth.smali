.class public final Lo/setMaxWidth;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setMaxWidth$ICustomTabsCallback;,
        Lo/setMaxWidth$extraCallback;,
        Lo/setMaxWidth$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 \u00102\u00020\u0001:\u0003\u000f\u0010\u0011B-\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0008R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/datadog/android/DatadogConfig;",
        "",
        "needsClearTextHttp",
        "",
        "logsConfig",
        "Lcom/datadog/android/DatadogConfig$FeatureConfig;",
        "tracesConfig",
        "crashReportConfig",
        "(ZLcom/datadog/android/DatadogConfig$FeatureConfig;Lcom/datadog/android/DatadogConfig$FeatureConfig;Lcom/datadog/android/DatadogConfig$FeatureConfig;)V",
        "getCrashReportConfig$dd_sdk_android_release",
        "()Lcom/datadog/android/DatadogConfig$FeatureConfig;",
        "getLogsConfig$dd_sdk_android_release",
        "getNeedsClearTextHttp$dd_sdk_android_release",
        "()Z",
        "getTracesConfig$dd_sdk_android_release",
        "Builder",
        "Companion",
        "FeatureConfig",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Z

.field final extraCallback:Lo/setMaxWidth$ICustomTabsCallback;

.field final onNavigationEvent:Lo/setMaxWidth$ICustomTabsCallback;

.field final onPostMessage:Lo/setMaxWidth$ICustomTabsCallback;


# direct methods
.method private constructor <init>(ZLo/setMaxWidth$ICustomTabsCallback;Lo/setMaxWidth$ICustomTabsCallback;Lo/setMaxWidth$ICustomTabsCallback;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/setMaxWidth;->ICustomTabsCallback:Z

    iput-object p2, p0, Lo/setMaxWidth;->onNavigationEvent:Lo/setMaxWidth$ICustomTabsCallback;

    iput-object p3, p0, Lo/setMaxWidth;->onPostMessage:Lo/setMaxWidth$ICustomTabsCallback;

    iput-object p4, p0, Lo/setMaxWidth;->extraCallback:Lo/setMaxWidth$ICustomTabsCallback;

    return-void
.end method

.method public synthetic constructor <init>(ZLo/setMaxWidth$ICustomTabsCallback;Lo/setMaxWidth$ICustomTabsCallback;Lo/setMaxWidth$ICustomTabsCallback;B)V
    .locals 0

    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lo/setMaxWidth;-><init>(ZLo/setMaxWidth$ICustomTabsCallback;Lo/setMaxWidth$ICustomTabsCallback;Lo/setMaxWidth$ICustomTabsCallback;)V

    return-void
.end method
