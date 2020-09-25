.class public final Lo/onActivityPaused$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ReflectiveGenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityPaused;-><init>(Landroid/app/Application;)V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/contacts/ContactsInviteViewModel$syncCompleteListener$1",
        "Lcom/dreamplug/fabrik/ui/contacts/helper/OnSyncCompleteListener;",
        "onPermissionMissing",
        "",
        "permission",
        "",
        "onSyncComplete",
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
.field private synthetic onNavigationEvent:Lo/onActivityPaused;


# direct methods
.method constructor <init>(Lo/onActivityPaused;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lo/onActivityPaused$extraCallback;->onNavigationEvent:Lo/onActivityPaused;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 59
    iget-object v0, p0, Lo/onActivityPaused$extraCallback;->onNavigationEvent:Lo/onActivityPaused;

    .line 1114
    sget-object v1, Lo/onActivityPostCreated;->extraCallback:Lo/onActivityPostCreated;

    iget-object v0, v0, Lo/onActivityPaused;->asBinder:Lo/onActivityPaused$onNavigationEvent;

    check-cast v0, Lo/setChildInsets;

    invoke-static {v0}, Lo/onActivityPostCreated;->onMessageChannelReady(Lo/setChildInsets;)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "permission"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lo/onActivityPaused$extraCallback;->onNavigationEvent:Lo/onActivityPaused;

    invoke-static {v0}, Lo/onActivityPaused;->extraCallback(Lo/onActivityPaused;)Lo/setActive;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
