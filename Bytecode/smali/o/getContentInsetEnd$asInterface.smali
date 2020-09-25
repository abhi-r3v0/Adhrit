.class final Lo/getContentInsetEnd$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getContentInsetEnd;->onPostMessage(Lcom/dreamplug/androidapp/login/LoginUiModel;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "checkAndDismissKeyBoard"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getContentInsetEnd;

.field private synthetic onPostMessage:Lcom/dreamplug/androidapp/login/LoginUiModel;


# direct methods
.method constructor <init>(Lo/getContentInsetEnd;Lcom/dreamplug/androidapp/login/LoginUiModel;)V
    .locals 0

    iput-object p1, p0, Lo/getContentInsetEnd$asInterface;->ICustomTabsCallback:Lo/getContentInsetEnd;

    iput-object p2, p0, Lo/getContentInsetEnd$asInterface;->onPostMessage:Lcom/dreamplug/androidapp/login/LoginUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Z
    .locals 3

    .line 199
    iget-object v0, p0, Lo/getContentInsetEnd$asInterface;->ICustomTabsCallback:Lo/getContentInsetEnd;

    iget-object v1, p0, Lo/getContentInsetEnd$asInterface;->onPostMessage:Lcom/dreamplug/androidapp/login/LoginUiModel;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/login/LoginUiModel;->getState()Ljava/lang/String;

    move-result-object v1

    .line 1279
    sget-object v2, Lo/setCollapseIcon;->extraCallback:Lo/setCollapseIcon;

    invoke-virtual {v0, v1}, Lo/getContentInsetEnd;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/setCollapseIcon;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1280
    iget-object v0, v0, Lo/getContentInsetEnd;->extraCallback:Lo/getMaxEnd;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
