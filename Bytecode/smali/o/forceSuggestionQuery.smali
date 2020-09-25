.class public final Lo/forceSuggestionQuery;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/forceSuggestionQuery$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\n\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\u000bH\u0016J\u0008\u0010\u0010\u001a\u00020\u000bH\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000bH\u0016R\u001c\u0010\u0005\u001a\u0010\u0012\u000c\u0012\n \u0007*\u0004\u0018\u00010\u00030\u00030\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/time/DatadogTimeProvider;",
        "Lcom/datadog/android/core/internal/time/MutableTimeProvider;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "contextRef",
        "Ljava/lang/ref/WeakReference;",
        "kotlin.jvm.PlatformType",
        "samples",
        "",
        "serverOffset",
        "",
        "getDeviceTimestamp",
        "getPreferences",
        "Landroid/content/SharedPreferences;",
        "getServerOffsetNanos",
        "getServerTimestamp",
        "updateOffset",
        "",
        "offsetMs",
        "Companion",
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
.field private ICustomTabsCallback:J

.field private onNavigationEvent:I

.field private final onPostMessage:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/forceSuggestionQuery;->onPostMessage:Ljava/lang/ref/WeakReference;

    .line 2081
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "datadog"

    .line 2082
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo v2, "server_timestamp_offset_ms"

    .line 25
    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_1

    :cond_1
    move-wide v2, v0

    :goto_1
    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    .line 28
    iput-wide v2, p0, Lo/forceSuggestionQuery;->ICustomTabsCallback:J

    const/4 p1, 0x1

    .line 29
    iput p1, p0, Lo/forceSuggestionQuery;->onNavigationEvent:I

    :cond_2
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(J)V
    .locals 8

    .line 36
    iget-wide v0, p0, Lo/forceSuggestionQuery;->ICustomTabsCallback:J

    .line 38
    iget v2, p0, Lo/forceSuggestionQuery;->onNavigationEvent:I

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 39
    iput-wide p1, p0, Lo/forceSuggestionQuery;->ICustomTabsCallback:J

    .line 40
    iput v3, p0, Lo/forceSuggestionQuery;->onNavigationEvent:I

    goto :goto_0

    :cond_0
    sub-long v4, v0, p1

    .line 41
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 42
    iput-wide p1, p0, Lo/forceSuggestionQuery;->ICustomTabsCallback:J

    .line 43
    iput v3, p0, Lo/forceSuggestionQuery;->onNavigationEvent:I

    goto :goto_0

    .line 45
    :cond_1
    iget v2, p0, Lo/forceSuggestionQuery;->onNavigationEvent:I

    int-to-long v4, v2

    mul-long v0, v0, v4

    add-long/2addr v0, p1

    add-int/lit8 p1, v2, 0x1

    int-to-long p1, p1

    div-long/2addr v0, p1

    .line 46
    iput-wide v0, p0, Lo/forceSuggestionQuery;->ICustomTabsCallback:J

    const/16 p1, 0x40

    if-ge v2, p1, :cond_2

    add-int/2addr v2, v3

    .line 48
    iput v2, p0, Lo/forceSuggestionQuery;->onNavigationEvent:I

    .line 1081
    :cond_2
    :goto_0
    iget-object p1, p0, Lo/forceSuggestionQuery;->onPostMessage:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    const-string v0, "datadog"

    .line 1082
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 54
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 55
    iget-wide v0, p0, Lo/forceSuggestionQuery;->ICustomTabsCallback:J

    const-string/jumbo p2, "server_timestamp_offset_ms"

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 56
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    return-void
.end method

.method public final onMessageChannelReady()J
    .locals 3

    .line 73
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lo/forceSuggestionQuery;->ICustomTabsCallback:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final onNavigationEvent()J
    .locals 4

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lo/forceSuggestionQuery;->ICustomTabsCallback:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final onPostMessage()J
    .locals 2

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
