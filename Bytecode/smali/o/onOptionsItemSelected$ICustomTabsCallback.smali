.class final Lo/onOptionsItemSelected$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onOptionsItemSelected;-><init>()V
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
        "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
        "Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012&\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005 \u0006*\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "callResult",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
.field private synthetic extraCallback:Lo/onOptionsItemSelected;


# direct methods
.method constructor <init>(Lo/onOptionsItemSelected;)V
    .locals 0

    iput-object p1, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 11

    .line 30
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition;

    if-eqz p1, :cond_e

    .line 1073
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2000
    sget-object v0, Lo/setTrackTintMode;->isConnected:Lo/setSubtitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v2, 0x31

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1074
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 3000
    sget-object v0, Lo/setTrackTintMode;->getExtras:Lo/setSubtitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v3, 0x30

    aget-object v1, v1, v3

    invoke-virtual {v0, v1, v2}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1076
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_c

    .line 1077
    iget-object v0, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v0, v1}, Lo/onOptionsItemSelected;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1078
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 3009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1078
    check-cast p1, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;

    if-eqz p1, :cond_f

    .line 1080
    iget-object v0, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->textView1:I

    invoke-virtual {v0, v1}, Lo/onOptionsItemSelected;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "textView1"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3019
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;->onPostMessage:Ljava/lang/String;

    .line 1080
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    iget-object v0, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->textView2:I

    invoke-virtual {v0, v1}, Lo/onOptionsItemSelected;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "textView2"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3021
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;->asBinder:Ljava/lang/String;

    .line 1081
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    iget-object v0, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->ctaTextView:I

    invoke-virtual {v0, v1}, Lo/onOptionsItemSelected;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "ctaTextView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3022
    iget-object v3, p1, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    .line 3062
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->onPostMessage:Ljava/lang/String;

    .line 1082
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    iget-object v0, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->ctaTextView:I

    invoke-virtual {v0, v3}, Lo/onOptionsItemSelected;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4022
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    .line 4063
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->onMessageChannelReady:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, "s_tDarkTwo_bgWhiteFour"

    .line 1084
    :cond_0
    sget-object v3, Lo/calculateScrollDirectionForPosition$onNavigationEvent;->ICustomTabsCallback:Lo/calculateScrollDirectionForPosition$onNavigationEvent;

    check-cast v3, Lo/calculateScrollDirectionForPosition;

    .line 1083
    invoke-static {v0, v1, v3}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;Ljava/lang/String;Lo/calculateScrollDirectionForPosition;)V

    .line 1085
    iget-object v0, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->iconView:I

    invoke-virtual {v0, v1}, Lo/onOptionsItemSelected;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lo/setSpeed;

    const-string v0, "iconView"

    invoke-static {v3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5017
    iget-object v4, p1, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;->extraCallback:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1085
    sget-object v7, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x36

    invoke-static/range {v3 .. v10}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 6015
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v0, :cond_1

    .line 6346
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->extraCallback:Ljava/lang/String;

    move-object v4, v0

    goto :goto_0

    :cond_1
    move-object v4, v2

    .line 1088
    :goto_0
    iget-object v0, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {v0, v1}, Lo/onOptionsItemSelected;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lo/setSpeed;

    const-string v0, "backgroundView"

    invoke-static {v3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lo/getInstallVersion;->extraCallback:Lo/getInstallVersion;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x36

    invoke-static/range {v3 .. v10}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 1089
    iget-object v0, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->parent:I

    invoke-virtual {v0, v1}, Lo/onOptionsItemSelected;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    const-string v1, "parent"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7015
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v1, :cond_2

    .line 7349
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onNavigationEvent:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    const/4 v3, 0x7

    .line 1089
    invoke-static {v1, v2, v2, v2, v3}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/onChildrenLoaded;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8015
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/asympote/campaign/LinkCampaignResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    const-string v0, "dark"

    if-eqz p1, :cond_3

    .line 8350
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onMessageChannelReady:Ljava/lang/String;

    if-nez p1, :cond_4

    :cond_3
    move-object p1, v0

    .line 1091
    :cond_4
    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1092
    iget-object p1, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->textView1:I

    invoke-virtual {p1, v0}, Lo/onOptionsItemSelected;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    const v1, 0x7f060238

    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1093
    iget-object p1, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->textView2:I

    invoke-virtual {p1, v0}, Lo/onOptionsItemSelected;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_6
    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1094
    iget-object p1, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->skip:I

    invoke-virtual {p1, v0}, Lo/onOptionsItemSelected;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_7
    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 1096
    :cond_8
    iget-object p1, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->textView1:I

    invoke-virtual {p1, v0}, Lo/onOptionsItemSelected;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_9
    const v1, 0x7f0600b2

    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1097
    iget-object p1, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->textView2:I

    invoke-virtual {p1, v0}, Lo/onOptionsItemSelected;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_a
    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1098
    iget-object p1, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->skip:I

    invoke-virtual {p1, v0}, Lo/onOptionsItemSelected;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_b
    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 1103
    :cond_c
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_d

    .line 1104
    iget-object v0, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 1105
    instance-of v1, v0, Lo/onOptionsItemSelected$onMessageChannelReady;

    if-eqz v1, :cond_f

    .line 1106
    check-cast v0, Lo/onOptionsItemSelected$onMessageChannelReady;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    const-string/jumbo v1, "result"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9014
    iget-object v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 10014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 9010
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v1, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object p1

    .line 1106
    invoke-interface {v0, p1}, Lo/onOptionsItemSelected$onMessageChannelReady;->extraCallback(Ljava/lang/String;)V

    :cond_d
    return-void

    .line 1111
    :cond_e
    iget-object p1, p0, Lo/onOptionsItemSelected$ICustomTabsCallback;->extraCallback:Lo/onOptionsItemSelected;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p1, v0}, Lo/onOptionsItemSelected;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    invoke-static {p1}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    :cond_f
    return-void
.end method
