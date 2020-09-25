.class public final Lo/setMaxWidth$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setMaxWidth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0003H\u0002J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0008J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0003J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0008J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0003J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0008J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0003J\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0003J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0003J\u0006\u0010\u001e\u001a\u00020\u0000J\u0006\u0010\u001f\u001a\u00020\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/datadog/android/DatadogConfig$Builder;",
        "",
        "clientToken",
        "",
        "(Ljava/lang/String;)V",
        "crashReportConfig",
        "Lcom/datadog/android/DatadogConfig$FeatureConfig;",
        "crashReportsEnabled",
        "",
        "logsConfig",
        "logsEnabled",
        "needsClearTextHttp",
        "tracesConfig",
        "tracesEnabled",
        "build",
        "Lcom/datadog/android/DatadogConfig;",
        "checkCustomEndpoint",
        "",
        "endpoint",
        "setCrashReportsEnabled",
        "enabled",
        "setEnvironmentName",
        "envName",
        "setLogsEnabled",
        "setServiceName",
        "serviceName",
        "setTracesEnabled",
        "useCustomCrashReportsEndpoint",
        "useCustomLogsEndpoint",
        "useCustomTracesEndpoint",
        "useEUEndpoints",
        "useUSEndpoints",
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
.field public ICustomTabsCallback:Lo/setMaxWidth$ICustomTabsCallback;

.field public extraCallback:Lo/setMaxWidth$ICustomTabsCallback;

.field public onMessageChannelReady:Z

.field public onNavigationEvent:Lo/setMaxWidth$ICustomTabsCallback;

.field public onPostMessage:Z

.field public onTransact:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const-string v0, "clientToken"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lo/setMaxWidth$ICustomTabsCallback;

    const-string v1, "https://mobile-http-intake.logs.datadoghq.com"

    const-string v2, ""

    const-string v3, "android"

    invoke-direct {v0, p1, v1, v3, v2}, Lo/setMaxWidth$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lo/setMaxWidth$extraCallback;->ICustomTabsCallback:Lo/setMaxWidth$ICustomTabsCallback;

    .line 44
    new-instance v0, Lo/setMaxWidth$ICustomTabsCallback;

    const-string v4, "https://public-trace-http-intake.logs.datadoghq.com"

    invoke-direct {v0, p1, v4, v3, v2}, Lo/setMaxWidth$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lo/setMaxWidth$extraCallback;->extraCallback:Lo/setMaxWidth$ICustomTabsCallback;

    .line 50
    new-instance v0, Lo/setMaxWidth$ICustomTabsCallback;

    invoke-direct {v0, p1, v1, v3, v2}, Lo/setMaxWidth$ICustomTabsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lo/setMaxWidth$extraCallback;->onNavigationEvent:Lo/setMaxWidth$ICustomTabsCallback;

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lo/setMaxWidth$extraCallback;->onMessageChannelReady:Z

    .line 58
    iput-boolean p1, p0, Lo/setMaxWidth$extraCallback;->onPostMessage:Z

    .line 59
    iput-boolean p1, p0, Lo/setMaxWidth$extraCallback;->onTransact:Z

    return-void
.end method
