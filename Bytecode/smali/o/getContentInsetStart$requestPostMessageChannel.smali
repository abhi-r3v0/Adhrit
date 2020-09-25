.class public final Lo/getContentInsetStart$requestPostMessageChannel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapDataForType;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getContentInsetStart;->onNavigationEvent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapDataForType<",
        "Lcom/dreamplug/androidapp/login/model/OtpGenerateResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\t\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/androidapp/login/LoginViewModel$resendOtp$2",
        "Lcom/dreamplug/network/helper/LiveCallback;",
        "Lcom/dreamplug/androidapp/login/model/OtpGenerateResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onFailure",
        "",
        "t",
        "",
        "errorResponse",
        "onResponse",
        "response",
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
.field final synthetic onMessageChannelReady:Lo/getContentInsetStart;

.field private synthetic onNavigationEvent:Z


# direct methods
.method constructor <init>(Lo/getContentInsetStart;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 643
    iput-object p1, p0, Lo/getContentInsetStart$requestPostMessageChannel;->onMessageChannelReady:Lo/getContentInsetStart;

    iput-boolean p2, p0, Lo/getContentInsetStart$requestPostMessageChannel;->onNavigationEvent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 4

    .line 1645
    iget-object p1, p0, Lo/getContentInsetStart$requestPostMessageChannel;->onMessageChannelReady:Lo/getContentInsetStart;

    .line 2071
    iget-object p1, p1, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 1645
    new-instance p2, Lo/setContentInsetsRelative;

    .line 1646
    new-instance v0, Lo/getContentInsetStart$requestPostMessageChannel$onPostMessage;

    invoke-direct {v0, p0}, Lo/getContentInsetStart$requestPostMessageChannel$onPostMessage;-><init>(Lo/getContentInsetStart$requestPostMessageChannel;)V

    check-cast v0, Ljava/lang/Runnable;

    const/4 v1, 0x0

    const-string v2, "done"

    const/4 v3, 0x3

    .line 1645
    invoke-direct {p2, v1, v2, v0, v3}, Lo/setContentInsetsRelative;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Runnable;I)V

    invoke-virtual {p1, p2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 1654
    iget-object p1, p0, Lo/getContentInsetStart$requestPostMessageChannel;->onMessageChannelReady:Lo/getContentInsetStart;

    .line 2077
    iget-object p1, p1, Lo/getContentInsetStart;->asBinder:Lo/setActive;

    .line 1654
    new-instance p2, Lo/ensureContentInsets$ICustomTabsCallback;

    iget-object v0, p0, Lo/getContentInsetStart$requestPostMessageChannel;->onMessageChannelReady:Lo/getContentInsetStart;

    invoke-static {v0}, Lo/getContentInsetStart;->onPostMessage(Lo/getContentInsetStart;)Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f1303bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app.getString(R.string.resend_failed)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lo/ensureContentInsets$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 5

    .line 643
    check-cast p1, Lcom/dreamplug/androidapp/login/model/OtpGenerateResponse;

    .line 2658
    iget-object v0, p0, Lo/getContentInsetStart$requestPostMessageChannel;->onMessageChannelReady:Lo/getContentInsetStart;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/login/model/OtpGenerateResponse;->getOtpId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 3087
    :goto_0
    iput-object p1, v0, Lo/getContentInsetStart;->getInterfaceDescriptor:Ljava/lang/String;

    .line 2659
    iget-object p1, p0, Lo/getContentInsetStart$requestPostMessageChannel;->onMessageChannelReady:Lo/getContentInsetStart;

    .line 4071
    iget-object p1, p1, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 2659
    new-instance v0, Lo/setContentInsetsRelative;

    .line 2660
    new-instance v2, Lo/getContentInsetStart$requestPostMessageChannel$onNavigationEvent;

    invoke-direct {v2, p0}, Lo/getContentInsetStart$requestPostMessageChannel$onNavigationEvent;-><init>(Lo/getContentInsetStart$requestPostMessageChannel;)V

    check-cast v2, Ljava/lang/Runnable;

    const/4 v3, 0x3

    const-string v4, "done"

    .line 2659
    invoke-direct {v0, v1, v4, v2, v3}, Lo/setContentInsetsRelative;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Runnable;I)V

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 2668
    iget-object p1, p0, Lo/getContentInsetStart$requestPostMessageChannel;->onMessageChannelReady:Lo/getContentInsetStart;

    .line 4077
    iget-object p1, p1, Lo/getContentInsetStart;->asBinder:Lo/setActive;

    .line 2668
    new-instance v0, Lo/ensureContentInsets$ICustomTabsCallback;

    iget-object v1, p0, Lo/getContentInsetStart$requestPostMessageChannel;->onMessageChannelReady:Lo/getContentInsetStart;

    invoke-static {v1}, Lo/getContentInsetStart;->onPostMessage(Lo/getContentInsetStart;)Landroid/app/Application;

    move-result-object v1

    iget-boolean v2, p0, Lo/getContentInsetStart$requestPostMessageChannel;->onNavigationEvent:Z

    if-eqz v2, :cond_1

    const v2, 0x7f130348

    goto :goto_1

    :cond_1
    const v2, 0x7f130347

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app.getString(if (isVoic\u2026resent\n                })"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lo/ensureContentInsets$ICustomTabsCallback;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
