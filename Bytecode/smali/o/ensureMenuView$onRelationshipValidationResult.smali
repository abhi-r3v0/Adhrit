.class final Lo/ensureMenuView$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ensureMenuView;->onCreate(Landroid/os/Bundle;)V
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
        "Lo/setPlaybackToRemote<",
        "Lcom/dreamplug/androidapp/login/LoginUiModel;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "loginUiModel",
        "Lcom/dreamplug/androidapp/login/LoginUiModel;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/ensureMenuView;


# direct methods
.method constructor <init>(Lo/ensureMenuView;)V
    .locals 0

    iput-object p1, p0, Lo/ensureMenuView$onRelationshipValidationResult;->onNavigationEvent:Lo/ensureMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 12

    .line 35
    check-cast p1, Lcom/dreamplug/androidapp/login/LoginUiModel;

    .line 1088
    iget-object v0, p0, Lo/ensureMenuView$onRelationshipValidationResult;->onNavigationEvent:Lo/ensureMenuView;

    invoke-static {v0}, Lo/ensureMenuView;->onMessageChannelReady(Lo/ensureMenuView;)Lo/getContentInsetEnd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/getContentInsetEnd;->onPostMessage(Lcom/dreamplug/androidapp/login/LoginUiModel;)V

    if-eqz p1, :cond_d

    .line 1090
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/login/LoginUiModel;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x5c24b9c

    const-string/jumbo v3, "viewModel"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_8

    const v2, 0x5c24c11

    const-string v6, "fName"

    if-eq v1, v2, :cond_1

    const v2, 0x616d917

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v1, "lName"

    .line 1091
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1092
    :goto_0
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/login/LoginUiModel;->getState()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1093
    iget-object p1, p0, Lo/ensureMenuView$onRelationshipValidationResult;->onNavigationEvent:Lo/ensureMenuView;

    .line 2037
    iget-object p1, p1, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez p1, :cond_2

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2258
    :cond_2
    sget-object v0, Lo/onCreateOptionsMenu;->onPostMessage:Lo/onCreateOptionsMenu;

    new-instance v0, Lo/getContentInsetStart$onMessageChannelReady;

    invoke-direct {v0, p1}, Lo/getContentInsetStart$onMessageChannelReady;-><init>(Lo/getContentInsetStart;)V

    check-cast v0, Lo/onDisconnectSetValue;

    .line 4000
    sget-object p1, Lo/onCreateOptionsMenu;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/layoutChildRight;

    .line 3050
    invoke-interface {p1}, Lo/layoutChildRight;->onPostMessage()Lo/clearScrap;

    move-result-object p1

    new-instance v1, Lo/onCreateOptionsMenu$onPostMessage;

    invoke-direct {v1, v0}, Lo/onCreateOptionsMenu$onPostMessage;-><init>(Lo/onDisconnectSetValue;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 1095
    :cond_3
    iget-object p1, p0, Lo/ensureMenuView$onRelationshipValidationResult;->onNavigationEvent:Lo/ensureMenuView;

    new-instance v0, Lo/ensureMenu;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->consentTnC:I

    invoke-virtual {p1, v1}, Lo/ensureMenuView;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/createFullSpanItemFromEnd;

    invoke-direct {v0, v1}, Lo/ensureMenu;-><init>(Landroid/widget/TextView;)V

    invoke-static {p1, v0}, Lo/ensureMenuView;->extraCallback(Lo/ensureMenuView;Lo/ensureMenu;)V

    .line 1096
    iget-object p1, p0, Lo/ensureMenuView$onRelationshipValidationResult;->onNavigationEvent:Lo/ensureMenuView;

    invoke-static {p1}, Lo/ensureMenuView;->onPostMessage(Lo/ensureMenuView;)Lo/ensureMenu;

    move-result-object v6

    if-eqz v6, :cond_4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xe

    invoke-static/range {v6 .. v11}, Lo/ensureMenu;->onPostMessage(Lo/ensureMenu;ZZLjava/lang/CharSequence;II)V

    .line 1097
    :cond_4
    sget-object p1, Lo/cancelSuperTouch;->asInterface:Lo/cancelSuperTouch;

    .line 4320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 4321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_5

    goto :goto_1

    :cond_5
    move-object p1, v5

    .line 1097
    :goto_1
    check-cast p1, Lo/getThumbTintList;

    if-eqz p1, :cond_7

    .line 5011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v0, :cond_6

    goto :goto_2

    .line 5015
    :cond_6
    iput-boolean v4, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 5016
    iget-object v5, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1097
    :goto_2
    check-cast v5, Lo/toggle;

    if-eqz v5, :cond_7

    .line 1098
    new-instance p1, Lo/setTooltipText;

    iget-object v0, p0, Lo/ensureMenuView$onRelationshipValidationResult;->onNavigationEvent:Lo/ensureMenuView;

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Lo/setTooltipText;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_7
    return-void

    :cond_8
    const-string p1, "email"

    .line 1101
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1102
    iget-object p1, p0, Lo/ensureMenuView$onRelationshipValidationResult;->onNavigationEvent:Lo/ensureMenuView;

    new-instance v0, Lo/ensureMenu;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->whatsappConsent:I

    invoke-virtual {p1, v1}, Lo/ensureMenuView;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lo/ensureMenu;-><init>(Landroid/widget/TextView;)V

    invoke-static {p1, v0}, Lo/ensureMenuView;->ICustomTabsCallback(Lo/ensureMenuView;Lo/ensureMenu;)V

    .line 1103
    iget-object p1, p0, Lo/ensureMenuView$onRelationshipValidationResult;->onNavigationEvent:Lo/ensureMenuView;

    .line 5037
    iget-object p1, p1, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez p1, :cond_9

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 5084
    :cond_9
    iget-object p1, p1, Lo/getContentInsetStart;->asInterface:Lo/setActive;

    .line 5320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 5321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_a

    move-object v5, p1

    .line 1103
    :cond_a
    check-cast v5, Ljava/lang/Boolean;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 1104
    iget-object p1, p0, Lo/ensureMenuView$onRelationshipValidationResult;->onNavigationEvent:Lo/ensureMenuView;

    invoke-static {p1}, Lo/ensureMenuView;->onMessageChannelReady(Lo/ensureMenuView;)Lo/getContentInsetEnd;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/getContentInsetEnd;->extraCallback(Z)V

    return-void

    .line 1106
    :cond_b
    iget-object p1, p0, Lo/ensureMenuView$onRelationshipValidationResult;->onNavigationEvent:Lo/ensureMenuView;

    invoke-static {p1}, Lo/ensureMenuView;->onMessageChannelReady(Lo/ensureMenuView;)Lo/getContentInsetEnd;

    move-result-object p1

    invoke-virtual {p1, v4}, Lo/getContentInsetEnd;->extraCallback(Z)V

    .line 1107
    iget-object p1, p0, Lo/ensureMenuView$onRelationshipValidationResult;->onNavigationEvent:Lo/ensureMenuView;

    invoke-static {p1}, Lo/ensureMenuView;->extraCallback(Lo/ensureMenuView;)Lo/ensureMenu;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 6039
    iput-boolean v0, p1, Lo/ensureMenu;->onPostMessage:Z

    .line 1108
    :cond_c
    iget-object p1, p0, Lo/ensureMenuView$onRelationshipValidationResult;->onNavigationEvent:Lo/ensureMenuView;

    invoke-static {p1}, Lo/ensureMenuView;->extraCallback(Lo/ensureMenuView;)Lo/ensureMenu;

    move-result-object p1

    if-eqz p1, :cond_d

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f13042e

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v4, v0, v1, v0}, Lo/ensureMenu;->onNavigationEvent(ZZLjava/lang/CharSequence;I)V

    :cond_d
    :goto_3
    return-void
.end method
