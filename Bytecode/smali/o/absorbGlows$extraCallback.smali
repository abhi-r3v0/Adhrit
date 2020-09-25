.class final Lo/absorbGlows$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/absorbGlows;-><init>()V
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
        "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;",
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
        "campaign",
        "Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;",
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
.field final synthetic ICustomTabsCallback:Lo/absorbGlows;


# direct methods
.method constructor <init>(Lo/absorbGlows;)V
    .locals 0

    iput-object p1, p0, Lo/absorbGlows$extraCallback;->ICustomTabsCallback:Lo/absorbGlows;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 13

    .line 34
    check-cast p1, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;

    .line 1119
    iget-object v0, p0, Lo/absorbGlows$extraCallback;->ICustomTabsCallback:Lo/absorbGlows;

    invoke-static {v0}, Lo/absorbGlows;->onMessageChannelReady(Lo/absorbGlows;)Lo/setCompatVectorFromResourcesEnabled;

    move-result-object v0

    const-string v1, "campaign"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/absorbGlows$extraCallback;->ICustomTabsCallback:Lo/absorbGlows;

    invoke-static {v1}, Lo/absorbGlows;->onNavigationEvent(Lo/absorbGlows;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/absorbGlows$extraCallback;->ICustomTabsCallback:Lo/absorbGlows;

    invoke-static {v2}, Lo/absorbGlows;->ICustomTabsCallback$Stub(Lo/absorbGlows;)Lo/absorbGlows$onNavigationEvent;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2226
    iget-object v2, v2, Lo/absorbGlows$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v4, "referral_bottom_sheet"

    .line 1119
    invoke-virtual {v0, p1, v4, v1, v2}, Lo/setCompatVectorFromResourcesEnabled;->onPostMessage(Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    iget-object v0, p1, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->requestPostMessageChannel:Ljava/lang/String;

    .line 1121
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    const-string/jumbo v4, "shareImage"

    if-nez v0, :cond_3

    .line 1122
    iget-object v0, p0, Lo/absorbGlows$extraCallback;->ICustomTabsCallback:Lo/absorbGlows;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->shareImage:I

    invoke-virtual {v0, v5}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lo/setSpeed;

    invoke-static {v5, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4044
    iget-object v6, p1, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->requestPostMessageChannel:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1122
    new-instance v0, Lo/absorbGlows$extraCallback$1;

    invoke-direct {v0, p0}, Lo/absorbGlows$extraCallback$1;-><init>(Lo/absorbGlows$extraCallback;)V

    move-object v11, v0

    check-cast v11, Lo/onDisconnectSetValue;

    const/16 v12, 0x1e

    invoke-static/range {v5 .. v12}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 1138
    :cond_3
    iget-object v0, p0, Lo/absorbGlows$extraCallback;->ICustomTabsCallback:Lo/absorbGlows;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v0

    const v5, 0x7f0b0107

    .line 4123
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v5, :cond_18

    const v5, 0x7f0b011b

    .line 4128
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/prepareFromUri;

    if-eqz v5, :cond_17

    const v5, 0x7f0b013c

    .line 4133
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/PlaybackStateCompat;

    if-eqz v5, :cond_16

    const v6, 0x7f0b0235

    .line 4138
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_15

    const v7, 0x7f0b0245

    .line 4143
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_14

    const v7, 0x7f0b03d6

    .line 4148
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lo/applyOptions;

    if-eqz v7, :cond_13

    const v7, 0x7f0b03de

    .line 4153
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lo/applyOptions;

    if-eqz v7, :cond_12

    const v7, 0x7f0b03ec

    .line 4158
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lo/applyOptions;

    if-eqz v7, :cond_11

    const v7, 0x7f0b05fe

    .line 4163
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lo/createFullSpanItemFromEnd;

    if-eqz v7, :cond_10

    const v7, 0x7f0b0620

    .line 4168
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lo/onChildrenLoaded;

    if-eqz v7, :cond_f

    const v7, 0x7f0b0778

    .line 4173
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lo/setSpeed;

    if-eqz v7, :cond_19

    const v4, 0x7f0b0837

    .line 4178
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/createFullSpanItemFromEnd;

    if-eqz v4, :cond_e

    const v4, 0x7f0b08c0

    .line 4183
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/createFullSpanItemFromEnd;

    if-eqz v4, :cond_d

    const v4, 0x7f0b09ba

    .line 4188
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 4193
    new-instance v0, Lo/constrain;

    invoke-direct {v0, v5, v6}, Lo/constrain;-><init>(Lo/PlaybackStateCompat;Landroid/widget/LinearLayout;)V

    const-string v4, "FragmentFabrikShareRefrr\u2026nding.bind(requireView())"

    .line 1138
    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5048
    iget-object v4, p1, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->updateVisuals:Lcom/dreamplug/androidapp/data/repository/campaign/CampaignImages;

    if-eqz v4, :cond_7

    .line 5052
    iget-object v4, v4, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignImages;->extraCallback:Ljava/util/List;

    if-eqz v4, :cond_7

    .line 1139
    check-cast v4, Ljava/lang/Iterable;

    .line 1228
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 1229
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    .line 1139
    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_4

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1230
    :cond_6
    check-cast v3, Ljava/util/List;

    .line 1141
    :cond_7
    iget-object v4, p0, Lo/absorbGlows$extraCallback;->ICustomTabsCallback:Lo/absorbGlows;

    invoke-static {v4}, Lo/absorbGlows;->extraCallback(Lo/absorbGlows;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v4, 0x1

    :goto_6
    if-nez v4, :cond_a

    .line 1142
    iget-object v4, p0, Lo/absorbGlows$extraCallback;->ICustomTabsCallback:Lo/absorbGlows;

    .line 6048
    iget-object p1, p1, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->updateVisuals:Lcom/dreamplug/androidapp/data/repository/campaign/CampaignImages;

    .line 6053
    iget p1, p1, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignImages;->onNavigationEvent:F

    .line 1142
    invoke-static {v4, v0, v3, p1}, Lo/absorbGlows;->onMessageChannelReady(Lo/absorbGlows;Lo/constrain;Ljava/util/List;F)V

    goto :goto_7

    .line 1144
    :cond_a
    iget-object p1, p0, Lo/absorbGlows$extraCallback;->ICustomTabsCallback:Lo/absorbGlows;

    invoke-static {p1, v0}, Lo/absorbGlows;->extraCallback(Lo/absorbGlows;Lo/constrain;)V

    .line 1147
    :goto_7
    iget-object p1, p0, Lo/absorbGlows$extraCallback;->ICustomTabsCallback:Lo/absorbGlows;

    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    :goto_8
    invoke-static {p1, v0}, Lo/absorbGlows;->onPostMessage(Lo/absorbGlows;I)V

    const/4 p1, 0x3

    new-array v0, p1, [Lo/addWrite;

    .line 1149
    iget-object v3, p0, Lo/absorbGlows$extraCallback;->ICustomTabsCallback:Lo/absorbGlows;

    invoke-static {v3}, Lo/absorbGlows;->onNavigationEvent(Lo/absorbGlows;)Ljava/lang/String;

    move-result-object v3

    .line 7043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "source"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v2

    .line 1150
    iget-object v2, p0, Lo/absorbGlows$extraCallback;->ICustomTabsCallback:Lo/absorbGlows;

    invoke-static {v2}, Lo/absorbGlows;->extraCallback(Lo/absorbGlows;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 8043
    new-instance v3, Lo/addWrite;

    const-string v4, "bottom_sheet_with_image"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x2

    .line 1150
    iget-object v2, p0, Lo/absorbGlows$extraCallback;->ICustomTabsCallback:Lo/absorbGlows;

    invoke-static {v2}, Lo/absorbGlows;->ICustomTabsCallback(Lo/absorbGlows;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 9043
    new-instance v3, Lo/addWrite;

    const-string v4, "card_count"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const-string v1, "pairs"

    .line 1149
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "invite_friend_screen_load"

    .line 1149
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void

    :cond_c
    const-string/jumbo v4, "whatsappIcon"

    goto :goto_9

    :cond_d
    const-string/jumbo v4, "titleTv"

    goto :goto_9

    :cond_e
    const-string/jumbo v4, "subtitleTv"

    goto :goto_9

    :cond_f
    const-string v4, "parent"

    goto :goto_9

    :cond_10
    const-string v4, "openContact"

    goto :goto_9

    :cond_11
    const-string v4, "guideStart"

    goto :goto_9

    :cond_12
    const-string v4, "guideEnd"

    goto :goto_9

    :cond_13
    const-string v4, "guideBottom"

    goto :goto_9

    :cond_14
    const-string v4, "ctaText"

    goto :goto_9

    :cond_15
    const-string v4, "ctaButton"

    goto :goto_9

    :cond_16
    const-string v4, "campaignImages"

    goto :goto_9

    :cond_17
    const-string v4, "bottomsheetView"

    goto :goto_9

    :cond_18
    const-string v4, "bottomSheetViewCoordinator"

    .line 4198
    :cond_19
    :goto_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
