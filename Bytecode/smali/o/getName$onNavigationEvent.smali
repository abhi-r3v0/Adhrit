.class final Lo/getName$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/getBatteryLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getBatteryLevel<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Lo/writeSessionAppClsId$onMessageChannelReady$onNavigationEvent;

.field private onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/writeSessionAppClsId$onMessageChannelReady$onNavigationEvent;Ljava/lang/String;Lo/getBatteryLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/writeSessionAppClsId$onMessageChannelReady$onNavigationEvent;",
            "Ljava/lang/String;",
            "Lo/getBatteryLevel<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p1, p0, Lo/getName$onNavigationEvent;->onMessageChannelReady:Lo/writeSessionAppClsId$onMessageChannelReady$onNavigationEvent;

    .line 362
    iput-object p2, p0, Lo/getName$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    .line 363
    iput-object p3, p0, Lo/getName$onNavigationEvent;->ICustomTabsCallback:Lo/getBatteryLevel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 370
    :try_start_0
    iget-object v0, p0, Lo/getName$onNavigationEvent;->ICustomTabsCallback:Lo/getBatteryLevel;

    invoke-interface {v0}, Lo/getBatteryLevel;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 375
    :goto_0
    iget-object v1, p0, Lo/getName$onNavigationEvent;->onMessageChannelReady:Lo/writeSessionAppClsId$onMessageChannelReady$onNavigationEvent;

    iget-object v2, p0, Lo/getName$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lo/writeSessionAppClsId$onMessageChannelReady$onNavigationEvent;->onPostMessage(Ljava/lang/String;Z)V

    return-void
.end method
