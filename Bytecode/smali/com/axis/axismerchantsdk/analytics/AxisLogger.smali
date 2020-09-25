.class public Lcom/axis/axismerchantsdk/analytics/AxisLogger;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static extraCallback()V
    .locals 0

    return-void
.end method

.method public static onMessageChannelReady()V
    .locals 0

    return-void
.end method

.method public static onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 51
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    new-instance p0, Lcom/axis/axismerchantsdk/analytics/ExceptionTracker;

    invoke-direct {p0}, Lcom/axis/axismerchantsdk/analytics/ExceptionTracker;-><init>()V

    .line 1021
    iput-object p1, p0, Lcom/axis/axismerchantsdk/analytics/ExceptionTracker;->onPostMessage:Ljava/lang/String;

    .line 1030
    iput-object p2, p0, Lcom/axis/axismerchantsdk/analytics/ExceptionTracker;->extraCallback:Ljava/lang/Throwable;

    .line 53
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->onPostMessage(Lcom/axis/axismerchantsdk/analytics/ExceptionTracker;)V

    return-void
.end method

.method public static onPostMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 74
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance p0, Lcom/axis/axismerchantsdk/analytics/Event;

    invoke-direct {p0}, Lcom/axis/axismerchantsdk/analytics/Event;-><init>()V

    sget-object v0, Lcom/axis/axismerchantsdk/analytics/Event$Category;->onPostMessage:Lcom/axis/axismerchantsdk/analytics/Event$Category;

    .line 3048
    invoke-static {v0}, Lcom/axis/axismerchantsdk/analytics/Event$Category;->ICustomTabsCallback(Lcom/axis/axismerchantsdk/analytics/Event$Category;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/axis/axismerchantsdk/analytics/Event;->extraCallback:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;->onNavigationEvent:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    .line 4017
    iget-object v0, v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;->extraCallback:Ljava/lang/String;

    .line 4057
    iput-object v0, p0, Lcom/axis/axismerchantsdk/analytics/Event;->ICustomTabsCallback:Ljava/lang/String;

    .line 4066
    iput-object p1, p0, Lcom/axis/axismerchantsdk/analytics/Event;->onNavigationEvent:Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback(Lcom/axis/axismerchantsdk/analytics/Event;)V

    return-void
.end method

.method public static onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 66
    new-instance p0, Lcom/axis/axismerchantsdk/analytics/Event;

    invoke-direct {p0}, Lcom/axis/axismerchantsdk/analytics/Event;-><init>()V

    sget-object v0, Lcom/axis/axismerchantsdk/analytics/Event$Category;->onPostMessage:Lcom/axis/axismerchantsdk/analytics/Event$Category;

    .line 1048
    invoke-static {v0}, Lcom/axis/axismerchantsdk/analytics/Event$Category;->ICustomTabsCallback(Lcom/axis/axismerchantsdk/analytics/Event$Category;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/axis/axismerchantsdk/analytics/Event;->extraCallback:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;->onPostMessage:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    .line 2017
    iget-object v0, v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;->extraCallback:Ljava/lang/String;

    .line 2057
    iput-object v0, p0, Lcom/axis/axismerchantsdk/analytics/Event;->ICustomTabsCallback:Ljava/lang/String;

    .line 2066
    iput-object p1, p0, Lcom/axis/axismerchantsdk/analytics/Event;->onNavigationEvent:Ljava/lang/String;

    .line 2075
    iput-object p2, p0, Lcom/axis/axismerchantsdk/analytics/Event;->onMessageChannelReady:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->extraCallback()Lcom/axis/axismerchantsdk/analytics/AxisTracker;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/axis/axismerchantsdk/analytics/AxisTracker;->ICustomTabsCallback(Lcom/axis/axismerchantsdk/analytics/Event;)V

    return-void
.end method
