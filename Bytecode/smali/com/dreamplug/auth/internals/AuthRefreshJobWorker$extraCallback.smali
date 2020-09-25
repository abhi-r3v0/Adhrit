.class final Lcom/dreamplug/auth/internals/AuthRefreshJobWorker$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/writeToParcel$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/auth/internals/AuthRefreshJobWorker;->ICustomTabsCallback()Lo/getBatteryLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/writeToParcel$extraCallback<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "completer",
        "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;",
        "Landroidx/work/ListenableWorker$Result;",
        "kotlin.jvm.PlatformType",
        "attachCompleter"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lcom/dreamplug/auth/internals/AuthRefreshJobWorker;


# direct methods
.method constructor <init>(Lcom/dreamplug/auth/internals/AuthRefreshJobWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/auth/internals/AuthRefreshJobWorker$extraCallback;->onMessageChannelReady:Lcom/dreamplug/auth/internals/AuthRefreshJobWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Lo/writeToParcel$ICustomTabsCallback;)Ljava/lang/Object;
    .locals 1

    const-string v0, "completer"

    .line 13
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1017
    iget-object v0, p0, Lcom/dreamplug/auth/internals/AuthRefreshJobWorker$extraCallback;->onMessageChannelReady:Lcom/dreamplug/auth/internals/AuthRefreshJobWorker;

    invoke-static {v0, p1}, Lcom/dreamplug/auth/internals/AuthRefreshJobWorker;->ICustomTabsCallback(Lcom/dreamplug/auth/internals/AuthRefreshJobWorker;Lo/writeToParcel$ICustomTabsCallback;)V

    .line 13
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
