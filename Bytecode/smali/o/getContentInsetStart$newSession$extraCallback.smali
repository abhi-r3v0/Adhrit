.class public final Lo/getContentInsetStart$newSession$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getRadius$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getContentInsetStart$newSession;
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
        "com/dreamplug/androidapp/login/LoginViewModel$refreshProfile$1$onFailure$1",
        "Lcom/dreamplug/androidapp/utils/AlertData$Listeners;",
        "onPositiveClick",
        "",
        "type",
        "",
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
.field private synthetic onMessageChannelReady:Lo/getContentInsetStart$newSession;


# direct methods
.method constructor <init>(Lo/getContentInsetStart$newSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 523
    iput-object p1, p0, Lo/getContentInsetStart$newSession$extraCallback;->onMessageChannelReady:Lo/getContentInsetStart$newSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 2

    .line 525
    new-instance v0, Lo/inflateMenu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/inflateMenu;-><init>(B)V

    iget-object v1, p0, Lo/getContentInsetStart$newSession$extraCallback;->onMessageChannelReady:Lo/getContentInsetStart$newSession;

    iget-object v1, v1, Lo/getContentInsetStart$newSession;->onPostMessage:Lo/getContentInsetStart;

    invoke-static {v1}, Lo/getContentInsetStart;->onPostMessage(Lo/getContentInsetStart;)Landroid/app/Application;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/inflateMenu;->onPostMessage(Landroid/content/Context;)V

    return-void
.end method
