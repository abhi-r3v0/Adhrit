.class final Lo/stopInterceptRequestLayout$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopInterceptRequestLayout;-><init>(Lo/releaseGlows;Lo/hasGapsToFix$onMessageChannelReady;Lo/pullGlows;Lo/getServerTime;)V
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
        "Lo/addWrite<",
        "+",
        "Ljava/lang/CharSequence;",
        "+",
        "Ljava/lang/CharSequence;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012.\u0010\u0002\u001a*\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004 \u0005*\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lkotlin/Pair;",
        "",
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
.field private synthetic ICustomTabsCallback:Lo/stopInterceptRequestLayout;


# direct methods
.method constructor <init>(Lo/stopInterceptRequestLayout;)V
    .locals 0

    iput-object p1, p0, Lo/stopInterceptRequestLayout$9;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 12

    .line 36
    check-cast p1, Lo/addWrite;

    .line 1310
    iget-object v0, p0, Lo/stopInterceptRequestLayout$9;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 2036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->requestPostMessageChannel:Lo/isLayoutSuppressed;

    .line 1310
    iget-object v1, p0, Lo/stopInterceptRequestLayout$9;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 2039
    iget-object v1, v1, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 1310
    invoke-virtual {v1}, Lo/pullGlows;->extraCallback()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/stopInterceptRequestLayout$9;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 3039
    iget-object v2, v2, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 1310
    invoke-virtual {v2}, Lo/pullGlows;->onPostMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4027
    iget-object v3, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1310
    check-cast v3, Ljava/lang/CharSequence;

    iget-object v4, p0, Lo/stopInterceptRequestLayout$9;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 4039
    iget-object v4, v4, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 4059
    iget-object v4, v4, Lo/pullGlows;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    if-eqz v4, :cond_0

    .line 4422
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->newSession:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz v4, :cond_0

    .line 5082
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v4, :cond_0

    .line 5101
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->asBinder:Lo/getTargetScrollPosition;

    if-eqz v4, :cond_0

    .line 6000
    iget-object v4, v4, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1310
    :goto_0
    iget-object v5, p0, Lo/stopInterceptRequestLayout$9;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 6039
    iget-object v5, v5, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 1310
    invoke-virtual {v5}, Lo/pullGlows;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v5

    const-string v6, "INR"

    invoke-static {v5, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 7028
    iget-object v6, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1310
    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, "brand"

    invoke-static {v1, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v8, "title"

    invoke-static {v2, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7109
    iget-object v9, v0, Lo/isLayoutSuppressed;->ICustomTabsCallback$Stub:Landroid/widget/TextView;

    const-string/jumbo v10, "this.brandName"

    invoke-static {v9, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7110
    iget-object v1, v0, Lo/isLayoutSuppressed;->onTransact:Landroid/widget/TextView;

    const-string/jumbo v9, "this.desc"

    invoke-static {v1, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7111
    iget-object v1, v0, Lo/isLayoutSuppressed;->asBinder:Landroid/widget/TextView;

    const-string/jumbo v2, "this.rewardAmount"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7145
    new-instance v2, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "context"

    invoke-static {v9, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v9}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;-><init>(Landroid/content/Context;)V

    .line 7112
    sget-object v9, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v9, 0x7f1302ea

    invoke-static {v9}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    if-eqz v5, :cond_2

    .line 7113
    move-object v5, v9

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 7114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_2
    if-nez v3, :cond_3

    const-string v3, ""

    .line 7116
    check-cast v3, Ljava/lang/CharSequence;

    :cond_3
    const-string/jumbo v5, "span"

    invoke-static {v3, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8059
    iget-object v9, v2, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 8156
    iget-object v2, v2, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast v2, Ljava/lang/CharSequence;

    .line 7150
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7118
    iget-object v1, v0, Lo/isLayoutSuppressed;->asInterface:Landroid/widget/TextView;

    const-string/jumbo v2, "this.disclaimer"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    const-string/jumbo v2, "this.rewardMrp"

    if-eqz v6, :cond_4

    .line 7120
    iget-object v3, v0, Lo/isLayoutSuppressed;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-static {v3, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 7121
    iget-object v0, v0, Lo/isLayoutSuppressed;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7154
    new-instance v2, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;-><init>(Landroid/content/Context;)V

    .line 7122
    invoke-static {v6, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9059
    iget-object v3, v2, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 9156
    iget-object v2, v2, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast v2, Ljava/lang/CharSequence;

    .line 7159
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 7125
    :cond_4
    iget-object v0, v0, Lo/isLayoutSuppressed;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1311
    :goto_2
    iget-object v0, p0, Lo/stopInterceptRequestLayout$9;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 10036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->mayLaunchUrl:Lo/onRequestFocusInDescendants;

    .line 1311
    iget-object v2, p0, Lo/stopInterceptRequestLayout$9;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 10039
    iget-object v2, v2, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 1311
    invoke-virtual {v2}, Lo/pullGlows;->extraCallback()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/stopInterceptRequestLayout$9;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 11039
    iget-object v3, v3, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 1311
    invoke-virtual {v3}, Lo/pullGlows;->onPostMessage()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 12027
    iget-object v4, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1311
    check-cast v4, Ljava/lang/CharSequence;

    .line 12028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1311
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v2, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12100
    iget-object v5, v0, Lo/onRequestFocusInDescendants;->extraCallback:Landroid/widget/TextView;

    const-string/jumbo v6, "sliderBrand"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12101
    iget-object v2, v0, Lo/onRequestFocusInDescendants;->onNavigationEvent:Landroid/widget/TextView;

    const-string/jumbo v5, "sliderTitle"

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12102
    iget-object v2, v0, Lo/onRequestFocusInDescendants;->onPostMessage:Landroid/widget/TextView;

    const-string/jumbo v3, "sliderAmount"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "storeSliderMrp"

    if-eqz p1, :cond_5

    .line 12104
    iget-object v1, v0, Lo/onRequestFocusInDescendants;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 12105
    iget-object v0, v0, Lo/onRequestFocusInDescendants;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 12107
    :cond_5
    iget-object p1, v0, Lo/onRequestFocusInDescendants;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1312
    :goto_3
    iget-object p1, p0, Lo/stopInterceptRequestLayout$9;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 13036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->updateVisuals:Lo/setLayoutFrozen;

    .line 1312
    iget-object v0, p0, Lo/stopInterceptRequestLayout$9;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 13039
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 1312
    invoke-virtual {v0}, Lo/pullGlows;->extraCallback()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/stopInterceptRequestLayout$9;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 14039
    iget-object v1, v1, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 1312
    invoke-virtual {v1}, Lo/pullGlows;->onPostMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15131
    iget-object v2, p1, Lo/setLayoutFrozen;->onPostMessage:Landroid/widget/TextView;

    const-string/jumbo v3, "this.brand"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15132
    iget-object p1, p1, Lo/setLayoutFrozen;->ICustomTabsCallback$Stub:Landroid/widget/TextView;

    const-string/jumbo v0, "this.title"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
