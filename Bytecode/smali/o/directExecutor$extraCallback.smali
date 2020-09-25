.class public final Lo/directExecutor$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RemoteActionCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/directExecutor;->onPostMessage(Ljava/lang/String;)V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/dreamplug/auth/internals/AuthUpdater$update$1",
        "Lcom/dreamplug/auth/helpers/OnAuthUpdateListener;",
        "onFailure",
        "",
        "onUpdate",
        "authData",
        "Lcom/dreamplug/auth/data/AuthData;",
        "auth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-static {v0}, Lo/getBridge;->onPostMessage(I)V

    return-void
.end method

.method public final onPostMessage(Lo/checkCompatWrapper;)V
    .locals 1

    const-string v0, "authData"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {p1}, Lo/OperationCanceledException;->onPostMessage(Lo/checkCompatWrapper;)V

    const/4 p1, 0x0

    .line 29
    invoke-static {p1}, Lo/getBridge;->onPostMessage(I)V

    return-void
.end method
