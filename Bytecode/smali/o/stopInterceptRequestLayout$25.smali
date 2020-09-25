.class final Lo/stopInterceptRequestLayout$25;
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
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/PostSliderFormInitData;",
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
        "it",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/PostSliderFormInitData;",
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
.field private synthetic onMessageChannelReady:Lo/stopInterceptRequestLayout;


# direct methods
.method constructor <init>(Lo/stopInterceptRequestLayout;)V
    .locals 0

    iput-object p1, p0, Lo/stopInterceptRequestLayout$25;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 14

    .line 36
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/PostSliderFormInitData;

    if-eqz p1, :cond_3

    .line 2150
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/PostSliderFormInitData;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;

    if-eqz v0, :cond_3

    .line 1460
    iget-object v0, p0, Lo/stopInterceptRequestLayout$25;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 3036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->updateVisuals:Lo/setLayoutFrozen;

    const-string v1, "data"

    .line 1460
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3108
    iput-object p1, v0, Lo/setLayoutFrozen;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/redemption/PostSliderFormInitData;

    .line 3109
    iget-object v1, v0, Lo/setLayoutFrozen;->warmup:Lo/pullGlows;

    .line 4052
    iget-object v1, v1, Lo/pullGlows;->extraCallback:Lo/consumePendingUpdateOperations;

    .line 4150
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/PostSliderFormInitData;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;

    .line 3109
    invoke-virtual {v1, v2}, Lo/consumePendingUpdateOperations;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;)V

    .line 3110
    iget-object v1, v0, Lo/setLayoutFrozen;->onTransact:Landroid/widget/TextView;

    const-string v2, "amount"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 5122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v2

    const-string v3, "context"

    if-nez v2, :cond_0

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3110
    :cond_0
    check-cast v2, Landroid/content/Context;

    .line 3145
    new-instance v4, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;

    invoke-direct {v4, v2}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;-><init>(Landroid/content/Context;)V

    const-string v2, "INR"

    .line 3111
    invoke-static {v2}, Lo/pullGlows;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string/jumbo v5, "span"

    invoke-static {v2, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6059
    iget-object v6, v4, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6152
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/PostSliderFormInitData;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    .line 7040
    iget-wide v6, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onMessageChannelReady:D

    .line 3112
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/Number;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfe

    invoke-static/range {v6 .. v13}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7059
    iget-object v6, v4, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v2, " + "

    .line 3113
    invoke-virtual {v4, v2}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    .line 7154
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/PostSliderFormInitData;->onPostMessage:Ljava/lang/String;

    .line 3114
    invoke-static {v2}, Lo/pullGlows;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8059
    iget-object v6, v4, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 8152
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/PostSliderFormInitData;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    .line 9042
    iget-wide v6, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onTransact:D

    .line 3115
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/Number;

    const/4 v7, 0x0

    invoke-static/range {v6 .. v13}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9059
    iget-object v6, v4, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 9156
    iget-object v2, v4, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast v2, Ljava/lang/CharSequence;

    .line 3147
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10152
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/PostSliderFormInitData;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    .line 11046
    iget-boolean v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->ICustomTabsCallback$Stub:Z

    const-string/jumbo v2, "savingText"

    if-eqz v1, :cond_1

    .line 11152
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/redemption/PostSliderFormInitData;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    .line 12048
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onRelationshipValidationResult:Lo/getTargetScrollPosition;

    if-eqz p1, :cond_2

    .line 3119
    iget-object v1, v0, Lo/setLayoutFrozen;->newSession:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3120
    iget-object v1, v0, Lo/setLayoutFrozen;->newSession:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3149
    new-instance v2, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;-><init>(Landroid/content/Context;)V

    .line 13000
    iget-object p1, p1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 3121
    invoke-static {p1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13059
    iget-object v3, v2, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 13156
    iget-object p1, v2, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast p1, Ljava/lang/CharSequence;

    .line 3154
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3125
    :cond_1
    iget-object p1, v0, Lo/setLayoutFrozen;->newSession:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3127
    :cond_2
    :goto_0
    iget-object p1, v0, Lo/setLayoutFrozen;->ICustomTabsCallback$Stub$Proxy:Lo/releaseGlows;

    invoke-virtual {p1}, Lo/releaseGlows;->extraCallback()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v0, "reward_post_slider_screen_load"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    :cond_3
    return-void
.end method
