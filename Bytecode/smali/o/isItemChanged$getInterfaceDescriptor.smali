.class final Lo/isItemChanged$getInterfaceDescriptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isItemChanged;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lo/RecyclerView$OnFlingListener$onNavigationEvent;",
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
        "Lcom/dreamplug/fabrik/ui/track/TrackViewModel$State;",
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
.field final synthetic onMessageChannelReady:Lo/isItemChanged;


# direct methods
.method constructor <init>(Lo/isItemChanged;)V
    .locals 0

    iput-object p1, p0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    .line 67
    move-object/from16 v1, p1

    check-cast v1, Lo/RecyclerView$OnFlingListener$onNavigationEvent;

    .line 1240
    instance-of v2, v1, Lo/RecyclerView$OnFlingListener$onNavigationEvent$ICustomTabsCallback;

    const-string v3, "listOverlay"

    const-string v4, "onboardingView"

    const-string v5, "recyclerView"

    const-string v6, "poweredByContainer"

    const-string v7, "$this$visible"

    const-string v8, "$this$gone"

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-eqz v2, :cond_1

    .line 1241
    iget-object v2, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v11, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {v2, v11}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2009
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1242
    iget-object v2, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->onboardingView:I

    invoke-virtual {v2, v5}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2017
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1243
    iget-object v2, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->listOverlay:I

    invoke-virtual {v2, v4}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3017
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1244
    iget-object v2, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->loader:I

    invoke-virtual {v2, v3}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onDestroyView;

    invoke-virtual {v2}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1245
    iget-object v2, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->poweredByContainer:I

    invoke-virtual {v2, v3}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4017
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1246
    iget-object v2, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    invoke-static {v2}, Lo/isItemChanged;->onTransact(Lo/isItemChanged;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v1, Lo/RecyclerView$OnFlingListener$onNavigationEvent$ICustomTabsCallback;

    .line 4685
    iget-object v1, v1, Lo/RecyclerView$OnFlingListener$onNavigationEvent$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    const-string/jumbo v3, "value"

    .line 1246
    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6000
    iget-object v2, v2, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/checkSpanForGap;

    .line 5038
    invoke-virtual {v2, v1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 1247
    :cond_0
    iget-object v1, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    invoke-static {v1}, Lo/isItemChanged;->ICustomTabsCallback$Stub(Lo/isItemChanged;)V

    return-void

    .line 1249
    :cond_1
    instance-of v2, v1, Lo/RecyclerView$OnFlingListener$onNavigationEvent$onPostMessage;

    if-eqz v2, :cond_2

    .line 1250
    iget-object v1, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {v1, v2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6017
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1251
    iget-object v1, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->listOverlay:I

    invoke-virtual {v1, v2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7017
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1252
    iget-object v1, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->onboardingView:I

    invoke-virtual {v1, v2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8017
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1253
    iget-object v1, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->poweredByContainer:I

    invoke-virtual {v1, v2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9017
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1254
    iget-object v1, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->loader:I

    invoke-virtual {v1, v2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onDestroyView;

    invoke-virtual {v1, v10}, Lo/prependViewToAllSpans;->ICustomTabsCallback(Z)V

    return-void

    .line 1256
    :cond_2
    instance-of v2, v1, Lo/RecyclerView$OnFlingListener$onNavigationEvent$onMessageChannelReady;

    const-string v3, "imageView2"

    const-string v12, "$this$invisible"

    const-string v13, "contentOnboarding"

    const-string/jumbo v14, "titleOnboarding"

    const-string v15, "lottie"

    const-string v11, "ctaPrimary2"

    const-string v10, "ctaPrimary"

    const/16 v16, 0x1

    if-eqz v2, :cond_d

    .line 1257
    iget-object v2, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v9, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {v2, v9}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x8

    .line 10017
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1258
    iget-object v2, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->onboardingView:I

    invoke-virtual {v2, v5}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 11009
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1259
    iget-object v2, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->loader:I

    invoke-virtual {v2, v4}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onDestroyView;

    invoke-virtual {v2}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1260
    iget-object v2, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->titleOnboarding:I

    invoke-virtual {v2, v4}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lo/RecyclerView$OnFlingListener$onNavigationEvent$onMessageChannelReady;

    .line 11682
    iget-object v4, v1, Lo/RecyclerView$OnFlingListener$onNavigationEvent$onMessageChannelReady;->onPostMessage:Lcom/dreamplug/fabrik/ui/track/network/response/IntroInfo;

    .line 12040
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/track/network/response/IntroInfo;->onMessageChannelReady:Ljava/lang/String;

    .line 1260
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1261
    iget-object v2, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->contentOnboarding:I

    invoke-virtual {v2, v4}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/createFullSpanItemFromEnd;

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12682
    iget-object v4, v1, Lo/RecyclerView$OnFlingListener$onNavigationEvent$onMessageChannelReady;->onPostMessage:Lcom/dreamplug/fabrik/ui/track/network/response/IntroInfo;

    .line 13038
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/track/network/response/IntroInfo;->onNavigationEvent:Ljava/lang/String;

    .line 1261
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1262
    iget-object v2, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->poweredByContainer:I

    invoke-virtual {v2, v4}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 14009
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1263
    iget-object v2, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->poweredByContainer:I

    invoke-virtual {v2, v4}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->divider:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/getAdapterPosition;

    const-string v4, "poweredByContainer.divider"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    iget-object v4, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    .line 14079
    iget-boolean v4, v4, Lo/isItemChanged;->onNavigationEvent:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/16 v4, 0x8

    .line 1815
    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1265
    iget-object v2, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->lottie:I

    invoke-virtual {v2, v4}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setMinimumHeight;

    invoke-static {v2, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    .line 14682
    iget-object v4, v1, Lo/RecyclerView$OnFlingListener$onNavigationEvent$onMessageChannelReady;->onPostMessage:Lcom/dreamplug/fabrik/ui/track/network/response/IntroInfo;

    .line 15036
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/track/network/response/IntroInfo;->onPostMessage:Ljava/lang/String;

    if-nez v4, :cond_4

    const-string v4, ""

    .line 1265
    :cond_4
    invoke-static {v2, v4}, Lo/extraCallback;->ICustomTabsCallback(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)Lo/setMaxWidth$onNavigationEvent;

    .line 1266
    iget-object v2, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->lottie:I

    invoke-virtual {v2, v4}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setMinimumHeight;

    invoke-static {v2, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 16009
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1267
    iget-object v2, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->imageView2:I

    invoke-virtual {v2, v4}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 16013
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1269
    iget-object v2, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    invoke-static {v2}, Lo/isItemChanged;->asBinder(Lo/isItemChanged;)V

    .line 1271
    new-instance v2, Lo/isItemChanged$getInterfaceDescriptor$onNavigationEvent;

    invoke-direct {v2, v0}, Lo/isItemChanged$getInterfaceDescriptor$onNavigationEvent;-><init>(Lo/isItemChanged$getInterfaceDescriptor;)V

    check-cast v2, Lo/onDisconnectSetValue;

    .line 1281
    iget-object v3, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    .line 16079
    iget-boolean v4, v3, Lo/isItemChanged;->onNavigationEvent:Z

    xor-int/lit8 v4, v4, 0x1

    .line 1281
    invoke-virtual {v3, v4}, Lo/isItemChanged;->onNavigationEvent(Z)V

    .line 1282
    iget-object v3, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->ctaPrimary:I

    invoke-virtual {v3, v4}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/saveOldPosition;

    invoke-static {v3, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16682
    iget-object v4, v1, Lo/RecyclerView$OnFlingListener$onNavigationEvent$onMessageChannelReady;->onPostMessage:Lcom/dreamplug/fabrik/ui/track/network/response/IntroInfo;

    .line 17034
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/track/network/response/IntroInfo;->ICustomTabsCallback:Ljava/lang/String;

    .line 1282
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1283
    iget-object v3, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->ctaPrimary2:I

    invoke-virtual {v3, v4}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17682
    iget-object v4, v1, Lo/RecyclerView$OnFlingListener$onNavigationEvent$onMessageChannelReady;->onPostMessage:Lcom/dreamplug/fabrik/ui/track/network/response/IntroInfo;

    .line 18034
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/track/network/response/IntroInfo;->ICustomTabsCallback:Ljava/lang/String;

    .line 1283
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1284
    iget-object v3, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->ctaPrimary:I

    invoke-virtual {v3, v4}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/saveOldPosition;

    invoke-static {v3, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    iget-object v4, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    .line 18079
    iget-boolean v4, v4, Lo/isItemChanged;->onNavigationEvent:Z

    if-eqz v4, :cond_7

    .line 18682
    iget-object v4, v1, Lo/RecyclerView$OnFlingListener$onNavigationEvent$onMessageChannelReady;->onPostMessage:Lcom/dreamplug/fabrik/ui/track/network/response/IntroInfo;

    .line 19034
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/track/network/response/IntroInfo;->ICustomTabsCallback:Ljava/lang/String;

    .line 1284
    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_7

    const/4 v4, 0x1

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_8

    const/4 v4, 0x0

    goto :goto_4

    :cond_8
    const/16 v4, 0x8

    .line 1817
    :goto_4
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1285
    iget-object v3, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->ctaPrimary2:I

    invoke-virtual {v3, v4}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    iget-object v4, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    .line 19079
    iget-boolean v4, v4, Lo/isItemChanged;->onNavigationEvent:Z

    if-nez v4, :cond_b

    .line 19682
    iget-object v1, v1, Lo/RecyclerView$OnFlingListener$onNavigationEvent$onMessageChannelReady;->onPostMessage:Lcom/dreamplug/fabrik/ui/track/network/response/IntroInfo;

    .line 20034
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/track/network/response/IntroInfo;->ICustomTabsCallback:Ljava/lang/String;

    .line 1285
    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_9

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v1, 0x1

    :goto_6
    if-nez v1, :cond_b

    goto :goto_7

    :cond_b
    const/16 v16, 0x0

    :goto_7
    if-eqz v16, :cond_c

    const/4 v9, 0x0

    goto :goto_8

    :cond_c
    const/16 v9, 0x8

    .line 1819
    :goto_8
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1286
    iget-object v1, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->ctaPrimary:I

    invoke-virtual {v1, v3}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/saveOldPosition;

    invoke-static {v1, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 1287
    iget-object v1, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->ctaPrimary2:I

    invoke-virtual {v1, v3}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void

    .line 1289
    :cond_d
    instance-of v1, v1, Lo/RecyclerView$OnFlingListener$onNavigationEvent$onNavigationEvent;

    if-eqz v1, :cond_10

    .line 1290
    iget-object v1, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {v1, v2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 21017
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1291
    iget-object v1, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->onboardingView:I

    invoke-virtual {v1, v2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 22009
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1292
    iget-object v1, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->loader:I

    invoke-virtual {v1, v2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onDestroyView;

    invoke-virtual {v1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1293
    iget-object v1, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->lottie:I

    invoke-virtual {v1, v2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setMinimumHeight;

    invoke-static {v1, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 22013
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1294
    iget-object v1, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->imageView2:I

    invoke-virtual {v1, v2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 23009
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1295
    iget-object v1, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->titleOnboarding:I

    invoke-virtual {v1, v2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/createFullSpanItemFromEnd;

    invoke-static {v1, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v2, 0x7f130490

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1296
    iget-object v1, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->contentOnboarding:I

    invoke-virtual {v1, v2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/createFullSpanItemFromEnd;

    invoke-static {v1, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v2, 0x7f13048f

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    iget-object v1, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->poweredByContainer:I

    invoke-virtual {v1, v2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 23017
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1299
    new-instance v1, Lo/isItemChanged$getInterfaceDescriptor$onPostMessage;

    invoke-direct {v1, v0}, Lo/isItemChanged$getInterfaceDescriptor$onPostMessage;-><init>(Lo/isItemChanged$getInterfaceDescriptor;)V

    check-cast v1, Lo/onDisconnectSetValue;

    .line 1306
    iget-object v3, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    .line 23079
    iget-boolean v4, v3, Lo/isItemChanged;->onNavigationEvent:Z

    xor-int/lit8 v4, v4, 0x1

    .line 1306
    invoke-virtual {v3, v4}, Lo/isItemChanged;->onNavigationEvent(Z)V

    .line 1307
    iget-object v3, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->ctaPrimary:I

    invoke-virtual {v3, v4}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/saveOldPosition;

    invoke-static {v3, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    iget-object v4, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    .line 24079
    iget-boolean v4, v4, Lo/isItemChanged;->onNavigationEvent:Z

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    goto :goto_9

    :cond_e
    const/16 v4, 0x8

    .line 1821
    :goto_9
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1308
    iget-object v3, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->ctaPrimary2:I

    invoke-virtual {v3, v4}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    iget-object v4, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    .line 25079
    iget-boolean v4, v4, Lo/isItemChanged;->onNavigationEvent:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_f

    const/4 v9, 0x0

    goto :goto_a

    :cond_f
    const/16 v9, 0x8

    .line 1823
    :goto_a
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1309
    iget-object v2, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->ctaPrimary:I

    invoke-virtual {v2, v3}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/saveOldPosition;

    invoke-static {v2, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 1310
    iget-object v2, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->ctaPrimary2:I

    invoke-virtual {v2, v3}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v2, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 1311
    iget-object v1, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->ctaPrimary:I

    invoke-virtual {v1, v2}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/saveOldPosition;

    invoke-static {v1, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v2, 0x7f13048e

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1312
    iget-object v1, v0, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->ctaPrimary2:I

    invoke-virtual {v1, v3}, Lo/isItemChanged;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    return-void
.end method
