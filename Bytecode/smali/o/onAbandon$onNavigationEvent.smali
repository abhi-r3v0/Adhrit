.class final Lo/onAbandon$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/abandon$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onAbandon;-><init>(Landroid/content/Context;Lo/onDisconnectSetValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0016\u0010\u0002\u001a\u0012 \u0005*\u0008\u0018\u00010\u0003R\u00020\u00040\u0003R\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;",
        "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse;",
        "kotlin.jvm.PlatformType",
        "onSelected"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/onAbandon;

.field private synthetic onPostMessage:Lo/onDisconnectSetValue;


# direct methods
.method constructor <init>(Lo/onAbandon;Lo/onDisconnectSetValue;)V
    .locals 0

    iput-object p1, p0, Lo/onAbandon$onNavigationEvent;->onMessageChannelReady:Lo/onAbandon;

    iput-object p2, p0, Lo/onAbandon$onNavigationEvent;->onPostMessage:Lo/onDisconnectSetValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lo/onAbandon$onNavigationEvent;->onMessageChannelReady:Lo/onAbandon;

    .line 1039
    iget-object v1, v0, Lo/onAbandon;->onPostMessage:Lo/createAbtInstance;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1040
    iget-object v0, v0, Lo/onAbandon;->onPostMessage:Lo/createAbtInstance;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 17
    :cond_0
    iget-object v0, p0, Lo/onAbandon$onNavigationEvent;->onPostMessage:Lo/onDisconnectSetValue;

    const-string v1, "it"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
