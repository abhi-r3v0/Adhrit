.class public final Lcom/dreamplug/auth/internals/AuthRefreshJobWorker$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/instantiateReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/auth/internals/AuthRefreshJobWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/auth/internals/AuthRefreshJobWorker$onStartJob$1",
        "Lcom/dreamplug/auth/helpers/AuthStateChangeListener;",
        "onChange",
        "",
        "authState",
        "",
        "auth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/writeToParcel$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/writeToParcel$ICustomTabsCallback;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/dreamplug/auth/internals/AuthRefreshJobWorker$onMessageChannelReady;->extraCallback:Lo/writeToParcel$ICustomTabsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "AuthRefreshJobService:JobFinished"

    .line 30
    invoke-static {v0, p1}, Lo/replaceAll;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    .line 31
    iget-object p1, p0, Lcom/dreamplug/auth/internals/AuthRefreshJobWorker$onMessageChannelReady;->extraCallback:Lo/writeToParcel$ICustomTabsCallback;

    .line 1334
    new-instance v0, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$ICustomTabsCallback$ICustomTabsCallback;-><init>()V

    .line 31
    invoke-virtual {p1, v0}, Lo/writeToParcel$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/Object;)Z

    .line 32
    sget-object p1, Lo/getBridge;->onPostMessage:Lo/getBridge;

    move-object p1, p0

    check-cast p1, Lo/instantiateReceiver;

    invoke-static {p1}, Lo/getBridge;->onPostMessage(Lo/instantiateReceiver;)V

    :cond_0
    return-void
.end method
