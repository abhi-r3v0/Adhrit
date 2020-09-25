.class final Lo/UnityVersionProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/UnityVersionProvider$onMessageChannelReady;,
        Lo/UnityVersionProvider$onNavigationEvent;,
        Lo/UnityVersionProvider$extraCallback;
    }
.end annotation


# static fields
.field private static onNavigationEvent:Ljava/lang/String; = "MixpanelAPI.DynamicEventTracker"


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Runnable;

.field private final extraCallback:Landroid/os/Handler;

.field private final onMessageChannelReady:Lo/Settings;

.field private final onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/UnityVersionProvider$onNavigationEvent;",
            "Lo/UnityVersionProvider$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lo/Settings;Landroid/os/Handler;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lo/UnityVersionProvider;->onMessageChannelReady:Lo/Settings;

    .line 31
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/UnityVersionProvider;->onPostMessage:Ljava/util/Map;

    .line 32
    new-instance p1, Lo/UnityVersionProvider$extraCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lo/UnityVersionProvider$extraCallback;-><init>(Lo/UnityVersionProvider;B)V

    iput-object p1, p0, Lo/UnityVersionProvider;->ICustomTabsCallback:Ljava/lang/Runnable;

    .line 33
    iput-object p2, p0, Lo/UnityVersionProvider;->extraCallback:Landroid/os/Handler;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/UnityVersionProvider;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lo/UnityVersionProvider;->extraCallback:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/UnityVersionProvider;)Lo/Settings;
    .locals 0

    .line 27
    iget-object p0, p0, Lo/UnityVersionProvider;->onMessageChannelReady:Lo/Settings;

    return-object p0
.end method

.method private static onNavigationEvent(Landroid/view/View;)Ljava/lang/String;
    .locals 8

    .line 105
    instance-of v0, p0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 106
    check-cast p0, Landroid/widget/TextView;

    .line 107
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 109
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 111
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    check-cast p0, Landroid/view/ViewGroup;

    .line 114
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x80

    if-ge v4, v2, :cond_3

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v7, v6, :cond_3

    .line 117
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 118
    invoke-static {v6}, Lo/UnityVersionProvider;->onNavigationEvent(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 119
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    if-eqz v5, :cond_1

    const-string v5, ", "

    .line 121
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-le p0, v6, :cond_4

    .line 129
    invoke-virtual {v0, v3, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    :goto_1
    return-object v1
.end method

.method static synthetic onNavigationEvent(Lo/UnityVersionProvider;)Ljava/util/Map;
    .locals 0

    .line 27
    iget-object p0, p0, Lo/UnityVersionProvider;->onPostMessage:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final onPostMessage(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 8

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 40
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-wide/16 v3, 0x3e8

    .line 42
    :try_start_0
    invoke-static {p1}, Lo/UnityVersionProvider;->onNavigationEvent(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "$text"

    .line 43
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "$from_binding"

    const/4 v6, 0x1

    .line 44
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "time"

    .line 48
    div-long v6, v0, v3

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 50
    sget-object v6, Lo/UnityVersionProvider;->onNavigationEvent:Ljava/lang/String;

    const-string v7, "Can\'t format properties from view due to JSON issue"

    invoke-static {v6, v7, v5}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p3, :cond_1

    .line 54
    new-instance p3, Lo/UnityVersionProvider$onNavigationEvent;

    invoke-direct {p3, p1, p2}, Lo/UnityVersionProvider$onNavigationEvent;-><init>(Landroid/view/View;Ljava/lang/String;)V

    .line 55
    new-instance p1, Lo/UnityVersionProvider$onMessageChannelReady;

    invoke-direct {p1, p2, v2, v0, v1}, Lo/UnityVersionProvider$onMessageChannelReady;-><init>(Ljava/lang/String;Lorg/json/JSONObject;J)V

    .line 60
    iget-object p2, p0, Lo/UnityVersionProvider;->onPostMessage:Ljava/util/Map;

    monitor-enter p2

    .line 61
    :try_start_1
    iget-object v0, p0, Lo/UnityVersionProvider;->onPostMessage:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 62
    iget-object v1, p0, Lo/UnityVersionProvider;->onPostMessage:Ljava/util/Map;

    invoke-interface {v1, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 64
    iget-object p1, p0, Lo/UnityVersionProvider;->extraCallback:Landroid/os/Handler;

    iget-object p3, p0, Lo/UnityVersionProvider;->ICustomTabsCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p3, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    :cond_0
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    .line 68
    :cond_1
    iget-object p1, p0, Lo/UnityVersionProvider;->onMessageChannelReady:Lo/Settings;

    invoke-virtual {p1, p2, v2}, Lo/Settings;->extraCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
