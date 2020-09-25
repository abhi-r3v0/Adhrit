.class public final Lo/onLoadChildren;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onLoadChildren$ICustomTabsCallback;,
        Lo/onLoadChildren$onMessageChannelReady;,
        Lo/onLoadChildren$onNavigationEvent;,
        Lo/onLoadChildren$onPostMessage;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Landroid/view/LayoutInflater;

.field private extraCallback:Lo/onLoadChildren$ICustomTabsCallback;

.field onMessageChannelReady:Landroid/os/Handler;

.field private onPostMessage:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p0, p0, Lo/onLoadChildren;->onPostMessage:Landroid/os/Handler$Callback;

    .line 76
    new-instance v0, Lo/onLoadChildren$onMessageChannelReady;

    invoke-direct {v0, p1}, Lo/onLoadChildren$onMessageChannelReady;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/onLoadChildren;->ICustomTabsCallback:Landroid/view/LayoutInflater;

    .line 77
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lo/onLoadChildren;->onPostMessage:Landroid/os/Handler$Callback;

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lo/onLoadChildren;->onMessageChannelReady:Landroid/os/Handler;

    .line 78
    invoke-static {}, Lo/onLoadChildren$ICustomTabsCallback;->onMessageChannelReady()Lo/onLoadChildren$ICustomTabsCallback;

    move-result-object p1

    iput-object p1, p0, Lo/onLoadChildren;->extraCallback:Lo/onLoadChildren$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/ViewGroup;Lo/onLoadChildren$onPostMessage;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lo/onLoadChildren;->extraCallback:Lo/onLoadChildren$ICustomTabsCallback;

    .line 1207
    iget-object v0, v0, Lo/onLoadChildren$ICustomTabsCallback;->onMessageChannelReady:Lo/RatingCompat$StarStyle$onMessageChannelReady;

    invoke-virtual {v0}, Lo/RatingCompat$StarStyle$onPostMessage;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onLoadChildren$onNavigationEvent;

    if-nez v0, :cond_0

    .line 1209
    new-instance v0, Lo/onLoadChildren$onNavigationEvent;

    invoke-direct {v0}, Lo/onLoadChildren$onNavigationEvent;-><init>()V

    .line 88
    :cond_0
    iput-object p0, v0, Lo/onLoadChildren$onNavigationEvent;->onMessageChannelReady:Lo/onLoadChildren;

    const v1, 0x7f0e033c

    .line 89
    iput v1, v0, Lo/onLoadChildren$onNavigationEvent;->onPostMessage:I

    .line 90
    iput-object p1, v0, Lo/onLoadChildren$onNavigationEvent;->ICustomTabsCallback:Landroid/view/ViewGroup;

    .line 91
    iput-object p2, v0, Lo/onLoadChildren$onNavigationEvent;->onNavigationEvent:Lo/onLoadChildren$onPostMessage;

    .line 92
    iget-object p1, p0, Lo/onLoadChildren;->extraCallback:Lo/onLoadChildren$ICustomTabsCallback;

    .line 1225
    :try_start_0
    iget-object p1, p1, Lo/onLoadChildren$ICustomTabsCallback;->extraCallback:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1227
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Failed to enqueue async inflate request"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 2098
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/onLoadChildren$onNavigationEvent;

    .line 2099
    iget-object v0, p1, Lo/onLoadChildren$onNavigationEvent;->extraCallback:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2100
    iget-object v0, p0, Lo/onLoadChildren;->ICustomTabsCallback:Landroid/view/LayoutInflater;

    iget v2, p1, Lo/onLoadChildren$onNavigationEvent;->onPostMessage:I

    iget-object v3, p1, Lo/onLoadChildren$onNavigationEvent;->ICustomTabsCallback:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lo/onLoadChildren$onNavigationEvent;->extraCallback:Landroid/view/View;

    .line 2103
    :cond_0
    iget-object v0, p1, Lo/onLoadChildren$onNavigationEvent;->onNavigationEvent:Lo/onLoadChildren$onPostMessage;

    iget-object v2, p1, Lo/onLoadChildren$onNavigationEvent;->extraCallback:Landroid/view/View;

    iget-object v3, p1, Lo/onLoadChildren$onNavigationEvent;->ICustomTabsCallback:Landroid/view/ViewGroup;

    invoke-interface {v0, v2, v3}, Lo/onLoadChildren$onPostMessage;->onMessageChannelReady(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 2105
    iget-object v0, p0, Lo/onLoadChildren;->extraCallback:Lo/onLoadChildren$ICustomTabsCallback;

    const/4 v2, 0x0

    .line 2215
    iput-object v2, p1, Lo/onLoadChildren$onNavigationEvent;->onNavigationEvent:Lo/onLoadChildren$onPostMessage;

    .line 2216
    iput-object v2, p1, Lo/onLoadChildren$onNavigationEvent;->onMessageChannelReady:Lo/onLoadChildren;

    .line 2217
    iput-object v2, p1, Lo/onLoadChildren$onNavigationEvent;->ICustomTabsCallback:Landroid/view/ViewGroup;

    .line 2218
    iput v1, p1, Lo/onLoadChildren$onNavigationEvent;->onPostMessage:I

    .line 2219
    iput-object v2, p1, Lo/onLoadChildren$onNavigationEvent;->extraCallback:Landroid/view/View;

    .line 2220
    iget-object v0, v0, Lo/onLoadChildren$ICustomTabsCallback;->onMessageChannelReady:Lo/RatingCompat$StarStyle$onMessageChannelReady;

    invoke-virtual {v0, p1}, Lo/RatingCompat$StarStyle$onPostMessage;->onMessageChannelReady(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method
