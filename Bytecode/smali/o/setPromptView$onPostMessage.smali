.class public final Lo/setPromptView$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setPromptView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/cred/pay/repository/CardService$Companion;",
        "",
        "()V",
        "getInstance",
        "Lcom/cred/pay/repository/CardService;",
        "credpayrepository_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field static final synthetic onMessageChannelReady:Lo/setPromptView$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lo/setPromptView$onPostMessage;

    invoke-direct {v0}, Lo/setPromptView$onPostMessage;-><init>()V

    sput-object v0, Lo/setPromptView$onPostMessage;->onMessageChannelReady:Lo/setPromptView$onPostMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPostMessage()Lo/setPromptView;
    .locals 2

    .line 17
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 20
    sget-object v0, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    const-class v0, Lo/setPromptView;

    const-string v1, "cls"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    sget-object v1, Lo/getScrapCount;->onPostMessage:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/NodeFromJSON;

    .line 1083
    invoke-virtual {v1, v0}, Lo/NodeFromJSON;->ICustomTabsCallback(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Lo/setPromptView;

    return-object v0
.end method
