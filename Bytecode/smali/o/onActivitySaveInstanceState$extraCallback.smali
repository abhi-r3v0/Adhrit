.class public final Lo/onActivitySaveInstanceState$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivitySaveInstanceState;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/contacts/festives/FestiveGreetingsViewModel$generateOnelink$1",
        "Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;",
        "onResponse",
        "",
        "message",
        "",
        "onResponseError",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:Lo/onActivitySaveInstanceState;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/onActivitySaveInstanceState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lo/onActivitySaveInstanceState$extraCallback;->onMessageChannelReady:Lo/onActivitySaveInstanceState;

    iput-object p2, p0, Lo/onActivitySaveInstanceState$extraCallback;->onPostMessage:Ljava/lang/String;

    iput-object p3, p0, Lo/onActivitySaveInstanceState$extraCallback;->extraCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lo/onActivitySaveInstanceState$extraCallback;->onMessageChannelReady:Lo/onActivitySaveInstanceState;

    invoke-static {v0}, Lo/onActivitySaveInstanceState;->onNavigationEvent(Lo/onActivitySaveInstanceState;)Lo/setActive;

    move-result-object v0

    new-instance v1, Lo/onActivityStopped;

    iget-object v2, p0, Lo/onActivitySaveInstanceState$extraCallback;->onPostMessage:Ljava/lang/String;

    sget-object v3, Lo/getChildFragmentManager;->onNavigationEvent:Lo/getChildFragmentManager;

    invoke-static {p1}, Lo/getChildFragmentManager;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lo/onActivitySaveInstanceState$extraCallback;->extraCallback:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v3}, Lo/onActivityStopped;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onResponseError(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lo/onActivitySaveInstanceState$extraCallback;->onMessageChannelReady:Lo/onActivitySaveInstanceState;

    invoke-static {v0}, Lo/onActivitySaveInstanceState;->onNavigationEvent(Lo/onActivitySaveInstanceState;)Lo/setActive;

    move-result-object v0

    new-instance v1, Lo/onActivityStopped;

    iget-object v2, p0, Lo/onActivitySaveInstanceState$extraCallback;->onPostMessage:Ljava/lang/String;

    sget-object v3, Lo/getChildFragmentManager;->onNavigationEvent:Lo/getChildFragmentManager;

    invoke-static {p1}, Lo/getChildFragmentManager;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lo/onActivitySaveInstanceState$extraCallback;->extraCallback:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v3}, Lo/onActivityStopped;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
