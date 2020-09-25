.class public final Lo/isLandscapeMode$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isLandscapeMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017R\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n \u0007*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n \u0007*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \u0007*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \u0007*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \u0007*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/holders/MasonryCardSingleItemHolder;",
        "",
        "view",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "backGroundView",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "kotlin.jvm.PlatformType",
        "cardView",
        "Landroidx/cardview/widget/CardView;",
        "logoView",
        "masonaryShimGradient",
        "masonaryShimSolid",
        "text1",
        "Landroid/widget/TextView;",
        "text2",
        "getView",
        "()Landroid/view/View;",
        "bind",
        "",
        "lifestyleMinItem",
        "Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleMinItem;",
        "miniCards",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;",
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
.field private final ICustomTabsCallback:Landroidx/cardview/widget/CardView;

.field private final asBinder:Lo/setSpeed;

.field private final asInterface:Landroid/view/View;

.field private final extraCallback:Landroid/widget/TextView;

.field private final onMessageChannelReady:Landroid/widget/TextView;

.field private final onNavigationEvent:Lo/setSpeed;

.field public final onPostMessage:Landroid/view/View;

.field private final onRelationshipValidationResult:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onPostMessage:Landroid/view/View;

    const v0, 0x7f0b0180

    .line 11022
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lo/isLandscapeMode$ICustomTabsCallback;->ICustomTabsCallback:Landroidx/cardview/widget/CardView;

    .line 11023
    iget-object p1, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onPostMessage:Landroid/view/View;

    const v0, 0x7f0b087a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onMessageChannelReady:Landroid/widget/TextView;

    .line 11024
    iget-object p1, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onPostMessage:Landroid/view/View;

    const v0, 0x7f0b087d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/isLandscapeMode$ICustomTabsCallback;->extraCallback:Landroid/widget/TextView;

    .line 11025
    iget-object p1, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onPostMessage:Landroid/view/View;

    const v0, 0x7f0b00ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onNavigationEvent:Lo/setSpeed;

    .line 11026
    iget-object p1, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onPostMessage:Landroid/view/View;

    const v0, 0x7f0b052d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/isLandscapeMode$ICustomTabsCallback;->asBinder:Lo/setSpeed;

    .line 11027
    iget-object p1, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onPostMessage:Landroid/view/View;

    const v0, 0x7f0b0557

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onRelationshipValidationResult:Landroid/view/View;

    .line 11028
    iget-object p1, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onPostMessage:Landroid/view/View;

    const v0, 0x7f0b0556

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/isLandscapeMode$ICustomTabsCallback;->asInterface:Landroid/view/View;

    .line 11031
    iget-object p1, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onNavigationEvent:Lo/setSpeed;

    const-string v0, "backGroundView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11116
    iget-object p1, p1, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 11216
    iget-object p1, p1, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    check-cast p1, Lo/setMaxFrame;

    .line 11031
    check-cast p1, Lo/getComposition;

    const-string v1, "backGroundView.hierarchy"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->ICustomTabsCallback()Lo/setFailureListener$extraCallback;

    move-result-object v1

    if-eqz v1, :cond_a

    const/4 v2, 0x2

    .line 13369
    invoke-virtual {p1, v2}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object p1

    .line 13370
    instance-of v3, p1, Lo/fromAssets;

    if-eqz v3, :cond_0

    .line 13371
    check-cast p1, Lo/fromAssets;

    goto :goto_0

    .line 13373
    :cond_0
    sget-object v3, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {p1, v3}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object p1

    .line 14094
    :goto_0
    iget-object v3, p1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v1, :cond_2

    if-eqz v3, :cond_1

    .line 15053
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_3

    .line 14098
    iput-object v1, p1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 14099
    iput-object v0, p1, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 14100
    invoke-virtual {p1}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 14101
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 11032
    :cond_3
    iget-object p1, p0, Lo/isLandscapeMode$ICustomTabsCallback;->asBinder:Lo/setSpeed;

    const-string v1, "logoView"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15116
    iget-object p1, p1, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 15216
    iget-object p1, p1, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz p1, :cond_9

    check-cast p1, Lo/setMaxFrame;

    .line 11032
    check-cast p1, Lo/getComposition;

    const-string v1, "logoView.hierarchy"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/onRequestPermissionsResult;->onMessageChannelReady:Lo/onRequestPermissionsResult;

    invoke-static {}, Lo/onRequestPermissionsResult;->asInterface()Lo/setFailureListener$extraCallback;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 17369
    invoke-virtual {p1, v2}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object p1

    .line 17370
    instance-of v2, p1, Lo/fromAssets;

    if-eqz v2, :cond_4

    .line 17371
    check-cast p1, Lo/fromAssets;

    goto :goto_3

    .line 17373
    :cond_4
    sget-object v2, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {p1, v2}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object p1

    .line 18094
    :goto_3
    iget-object v2, p1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    if-eq v2, v1, :cond_5

    if-eqz v2, :cond_6

    .line 19053
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v4, 0x1

    :cond_6
    if-nez v4, :cond_7

    .line 18098
    iput-object v1, p1, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 18099
    iput-object v0, p1, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 18100
    invoke-virtual {p1}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 18101
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_7
    return-void

    .line 17215
    :cond_8
    throw v0

    .line 16215
    :cond_9
    throw v0

    .line 13215
    :cond_a
    throw v0

    .line 12215
    :cond_b
    throw v0
.end method


# virtual methods
.method public final extraCallback(Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;)V
    .locals 12

    if-eqz p1, :cond_d

    .line 1043
    iget-object v0, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onPostMessage:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1045
    iget-object v0, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onMessageChannelReady:Landroid/widget/TextView;

    const-string/jumbo v2, "text1"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1320
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;->onRelationshipValidationResult:Ljava/lang/String;

    .line 1045
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    iget-object v0, p0, Lo/isLandscapeMode$ICustomTabsCallback;->extraCallback:Landroid/widget/TextView;

    const-string/jumbo v2, "text2"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1322
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;->asBinder:Ljava/lang/String;

    .line 1046
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2318
    iget-object v4, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;->onMessageChannelReady:Ljava/lang/String;

    .line 1049
    iget-object v3, p0, Lo/isLandscapeMode$ICustomTabsCallback;->asBinder:Lo/setSpeed;

    const-string v0, "logoView"

    invoke-static {v3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x36

    invoke-static/range {v3 .. v10}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 3316
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3346
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->extraCallback:Ljava/lang/String;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 1052
    :goto_0
    iget-object v3, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onNavigationEvent:Lo/setSpeed;

    const-string v0, "backGroundView"

    invoke-static {v3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lo/getInstallVersion;->extraCallback:Lo/getInstallVersion;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x36

    invoke-static/range {v3 .. v10}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 4316
    iget-object v3, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    const-string v4, "dark"

    if-eqz v3, :cond_1

    .line 4350
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onMessageChannelReady:Ljava/lang/String;

    if-nez v3, :cond_2

    :cond_1
    move-object v3, v4

    .line 1055
    :cond_2
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1056
    iget-object v5, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onMessageChannelReady:Landroid/widget/TextView;

    iget-object v6, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onPostMessage:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f060220

    invoke-static {v6, v7}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1057
    iget-object v5, p0, Lo/isLandscapeMode$ICustomTabsCallback;->extraCallback:Landroid/widget/TextView;

    iget-object v6, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onPostMessage:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1059
    :cond_3
    iget-object v5, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onMessageChannelReady:Landroid/widget/TextView;

    iget-object v6, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onPostMessage:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0600c6

    invoke-static {v6, v7}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1060
    iget-object v5, p0, Lo/isLandscapeMode$ICustomTabsCallback;->extraCallback:Landroid/widget/TextView;

    iget-object v6, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onPostMessage:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5325
    :goto_1
    iget-object v5, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;->asInterface:Ljava/lang/Integer;

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    .line 1065
    sget-object v7, Lcom/dreamplug/utils/helpers/MoshiColorAdapter;->onNavigationEvent:Lcom/dreamplug/utils/helpers/MoshiColorAdapter;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5, v6}, Lcom/dreamplug/utils/helpers/MoshiColorAdapter;->onNavigationEvent(IZ)Ljava/lang/String;

    move-result-object v5

    .line 1066
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "#FF"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "null cannot be cast to non-null type java.lang.String"

    if-eqz v5, :cond_5

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v9, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    .line 1067
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "#00"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 1068
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    sget-object v9, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v10, 0x2

    new-array v10, v10, [I

    aput v7, v10, v1

    aput v5, v10, v6

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1069
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 1070
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 1073
    iget-object v7, p0, Lo/isLandscapeMode$ICustomTabsCallback;->asInterface:Landroid/view/View;

    const-string v9, "masonaryShimGradient"

    invoke-static {v7, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1074
    iget-object v7, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onRelationshipValidationResult:Landroid/view/View;

    const-string v8, "masonaryShimSolid"

    invoke-static {v7, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1067
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1066
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v8}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1076
    :cond_6
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1077
    iget-object v5, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onRelationshipValidationResult:Landroid/view/View;

    const v7, 0x7f0804cc

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1078
    iget-object v5, p0, Lo/isLandscapeMode$ICustomTabsCallback;->asInterface:Landroid/view/View;

    const v7, 0x7f080454

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 1080
    :cond_7
    iget-object v5, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onRelationshipValidationResult:Landroid/view/View;

    const v7, 0x7f0804cd

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1081
    iget-object v5, p0, Lo/isLandscapeMode$ICustomTabsCallback;->asInterface:Landroid/view/View;

    const v7, 0x7f080455

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1084
    :goto_2
    iget-object v5, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onNavigationEvent:Lo/setSpeed;

    invoke-static {v5, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6116
    iget-object v0, v5, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 6216
    iget-object v0, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v0, :cond_c

    check-cast v0, Lo/setMaxFrame;

    .line 1084
    check-cast v0, Lo/getComposition;

    .line 7316
    iget-object v5, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v5, :cond_8

    .line 7349
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onNavigationEvent:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    goto :goto_3

    :cond_8
    move-object v5, v2

    :goto_3
    const/4 v7, 0x7

    .line 1084
    invoke-static {v5, v2, v2, v2, v7}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 7564
    invoke-virtual {v0, v1, v5}, Lo/getComposition;->extraCallback(ILandroid/graphics/drawable/Drawable;)V

    .line 1085
    iget-object v0, p0, Lo/isLandscapeMode$ICustomTabsCallback;->ICustomTabsCallback:Landroidx/cardview/widget/CardView;

    .line 8316
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz p1, :cond_a

    .line 8349
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onNavigationEvent:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    if-eqz p1, :cond_a

    .line 9039
    iget-object p1, p1, Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;->ICustomTabsCallback:Ljava/util/List;

    if-eqz p1, :cond_a

    const-string v5, "$this$getOrNull"

    .line 1085
    invoke-static {p1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$this$lastIndex"

    .line 9266
    invoke-static {p1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10210
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    if-ltz v5, :cond_9

    .line 9266
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1085
    :cond_9
    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_4

    .line 1086
    :cond_a
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v6

    if-eqz p1, :cond_b

    const/high16 p1, -0x1000000

    goto :goto_4

    :cond_b
    const/4 p1, -0x1

    .line 1085
    :goto_4
    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    return-void

    .line 7215
    :cond_c
    throw v2

    .line 1088
    :cond_d
    iget-object p1, p0, Lo/isLandscapeMode$ICustomTabsCallback;->onPostMessage:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
