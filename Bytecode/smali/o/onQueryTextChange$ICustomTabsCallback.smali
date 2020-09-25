.class public final Lo/onQueryTextChange$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onQueryTextChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eJ\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u0008\u0010\u0011\u001a\u00020\u0010H\u0002J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0004J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0004J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0008J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0004J\u0010\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u000bJ\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/datadog/android/log/Logger$Builder;",
        "",
        "()V",
        "bundleWithTraceEnabled",
        "",
        "datadogLogsEnabled",
        "logcatLogsEnabled",
        "loggerName",
        "",
        "networkInfoEnabled",
        "sampleRate",
        "",
        "serviceName",
        "build",
        "Lcom/datadog/android/log/Logger;",
        "buildDatadogHandler",
        "Lcom/datadog/android/log/internal/logger/LogHandler;",
        "buildLogcatHandler",
        "setBundleWithTraceEnabled",
        "enabled",
        "setDatadogLogsEnabled",
        "setLogcatLogsEnabled",
        "setLoggerName",
        "name",
        "setNetworkInfoEnabled",
        "setSampleRate",
        "rate",
        "setServiceName",
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
.field public ICustomTabsCallback:Z

.field public extraCallback:Z

.field public onMessageChannelReady:Z

.field public onNavigationEvent:Ljava/lang/String;

.field public onPostMessage:Ljava/lang/String;

.field public onTransact:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    sget-object v0, Lo/SearchView$OnQueryTextListener;->asInterface:Lo/SearchView$OnQueryTextListener;

    invoke-static {}, Lo/SearchView$OnQueryTextListener;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/onQueryTextChange$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lo/onQueryTextChange$ICustomTabsCallback;->onMessageChannelReady:Z

    .line 180
    iput-boolean v0, p0, Lo/onQueryTextChange$ICustomTabsCallback;->ICustomTabsCallback:Z

    .line 181
    sget-object v0, Lo/getMaxWidth;->onPostMessage:Lo/getMaxWidth;

    invoke-static {}, Lo/getMaxWidth;->asInterface()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/onQueryTextChange$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 182
    iput v0, p0, Lo/onQueryTextChange$ICustomTabsCallback;->onTransact:F

    return-void
.end method
