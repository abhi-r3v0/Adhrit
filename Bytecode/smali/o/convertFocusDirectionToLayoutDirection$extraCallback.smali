.class final Lo/convertFocusDirectionToLayoutDirection$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/convertFocusDirectionToLayoutDirection;-><init>()V
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
        "Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;",
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
        "certificateResponse",
        "Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;",
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
.field private synthetic onMessageChannelReady:Lo/convertFocusDirectionToLayoutDirection;


# direct methods
.method constructor <init>(Lo/convertFocusDirectionToLayoutDirection;)V
    .locals 0

    iput-object p1, p0, Lo/convertFocusDirectionToLayoutDirection$extraCallback;->onMessageChannelReady:Lo/convertFocusDirectionToLayoutDirection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 29

    move-object/from16 v0, p0

    .line 28
    move-object/from16 v1, p1

    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;

    if-eqz v1, :cond_0

    .line 2012
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    goto/16 :goto_b

    .line 1040
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const/16 v6, 0xe3d

    const-string/jumbo v7, "text3"

    const-string/jumbo v8, "text2"

    const-string/jumbo v9, "text1"

    const-string v13, "#CCCCCC"

    const-string v14, "certificateResponse"

    const-string v15, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    const-string v10, "$this$inflate"

    const-string v11, "cardParent"

    const-string v2, "Resources.getSystem()"

    const-string v12, "cardBackground"

    const-string v4, "dark"

    move-object/from16 v20, v7

    const/4 v7, 0x1

    if-eq v5, v6, :cond_d

    const/16 v6, 0xe3e

    if-eq v5, v6, :cond_2

    goto/16 :goto_b

    :cond_2
    const-string/jumbo v5, "t2"

    .line 1047
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1048
    iget-object v3, v0, Lo/convertFocusDirectionToLayoutDirection$extraCallback;->onMessageChannelReady:Lo/convertFocusDirectionToLayoutDirection;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->cardParent:I

    invoke-virtual {v3, v5}, Lo/convertFocusDirectionToLayoutDirection;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12011
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0e00d1

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1049
    iget-object v5, v0, Lo/convertFocusDirectionToLayoutDirection$extraCallback;->onMessageChannelReady:Lo/convertFocusDirectionToLayoutDirection;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->cardParent:I

    invoke-virtual {v5, v6}, Lo/convertFocusDirectionToLayoutDirection;->extraCallback(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1050
    iget-object v5, v0, Lo/convertFocusDirectionToLayoutDirection$extraCallback;->onMessageChannelReady:Lo/convertFocusDirectionToLayoutDirection;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->cardParent:I

    invoke-virtual {v5, v6}, Lo/convertFocusDirectionToLayoutDirection;->extraCallback(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1051
    new-instance v5, Lo/onSearchClicked$ICustomTabsCallback;

    invoke-direct {v5, v3}, Lo/onSearchClicked$ICustomTabsCallback;-><init>(Landroid/view/View;)V

    invoke-static {v1, v14}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13011
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v3, :cond_3

    .line 13350
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onMessageChannelReady:Ljava/lang/String;

    if-nez v3, :cond_4

    :cond_3
    move-object v3, v4

    .line 12031
    :cond_4
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 14011
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v4, :cond_5

    .line 14346
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->extraCallback:Ljava/lang/String;

    move-object/from16 v22, v4

    goto :goto_1

    :cond_5
    const/16 v22, 0x0

    .line 12034
    :goto_1
    iget-object v4, v5, Lo/onSearchClicked$ICustomTabsCallback;->extraCallback:Lo/setSpeed;

    invoke-static {v4, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x3e

    move-object/from16 v21, v4

    invoke-static/range {v21 .. v28}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 15011
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v4, :cond_6

    .line 15349
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onNavigationEvent:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    if-eqz v4, :cond_6

    .line 16009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v10, 0x41c00000    # 24.0f

    .line 16010
    invoke-static {v7, v10, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    .line 12035
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static {v4, v13, v6, v11, v10}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    .line 12036
    :goto_2
    iget-object v6, v5, Lo/onSearchClicked$ICustomTabsCallback;->extraCallback:Lo/setSpeed;

    invoke-static {v6, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16116
    iget-object v6, v6, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 16216
    iget-object v6, v6, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v6, :cond_c

    check-cast v6, Lo/setMaxFrame;

    .line 12036
    check-cast v6, Lo/getComposition;

    const/4 v10, 0x0

    .line 17564
    invoke-virtual {v6, v10, v4}, Lo/getComposition;->extraCallback(ILandroid/graphics/drawable/Drawable;)V

    .line 12038
    iget-object v4, v5, Lo/onSearchClicked$ICustomTabsCallback;->onNavigationEvent:Landroid/widget/ImageView;

    if-eqz v3, :cond_7

    const v10, 0x7f080302

    goto :goto_3

    :cond_7
    const v10, 0x7f080301

    :goto_3
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12046
    iget-object v4, v5, Lo/onSearchClicked$ICustomTabsCallback;->asBinder:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v3, :cond_8

    const v3, 0x7f060249

    goto :goto_4

    :cond_8
    const v3, 0x7f060061

    :goto_4
    invoke-static {v4, v3}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    .line 12048
    iget-object v4, v5, Lo/onSearchClicked$ICustomTabsCallback;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12049
    iget-object v4, v5, Lo/onSearchClicked$ICustomTabsCallback;->onMessageChannelReady:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12050
    iget-object v4, v5, Lo/onSearchClicked$ICustomTabsCallback;->onPostMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12052
    iget-object v3, v5, Lo/onSearchClicked$ICustomTabsCallback;->ICustomTabsCallback:Landroid/widget/TextView;

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18018
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->onNavigationEvent:Ljava/lang/String;

    .line 12052
    invoke-static {v3, v4}, Lo/onSearchClicked$ICustomTabsCallback;->onNavigationEvent(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 12053
    iget-object v3, v5, Lo/onSearchClicked$ICustomTabsCallback;->onMessageChannelReady:Landroid/widget/TextView;

    invoke-static {v3, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18020
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->asBinder:Ljava/lang/String;

    .line 12053
    invoke-static {v3, v4}, Lo/onSearchClicked$ICustomTabsCallback;->onNavigationEvent(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 12054
    iget-object v3, v5, Lo/onSearchClicked$ICustomTabsCallback;->onPostMessage:Landroid/widget/TextView;

    move-object/from16 v6, v20

    invoke-static {v3, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18022
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->onTransact:Ljava/lang/String;

    .line 12054
    invoke-static {v3, v4}, Lo/onSearchClicked$ICustomTabsCallback;->onNavigationEvent(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 18031
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Integer;

    const-string/jumbo v3, "shimSolid"

    const-string/jumbo v4, "shimGradient"

    if-eqz v1, :cond_b

    .line 12059
    iget-object v6, v5, Lo/onSearchClicked$ICustomTabsCallback;->asInterface:Landroid/view/View;

    invoke-static {v6, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 12060
    iget-object v6, v5, Lo/onSearchClicked$ICustomTabsCallback;->onTransact:Landroid/view/View;

    invoke-static {v6, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 12061
    sget-object v6, Lcom/dreamplug/utils/helpers/MoshiColorAdapter;->onNavigationEvent:Lcom/dreamplug/utils/helpers/MoshiColorAdapter;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1, v7}, Lcom/dreamplug/utils/helpers/MoshiColorAdapter;->onNavigationEvent(IZ)Ljava/lang/String;

    move-result-object v1

    .line 12062
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "#FF"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_a

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v8, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 12063
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "#00"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_9

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v9, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 12064
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    sget-object v9, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v6, v10, v11

    aput v1, v10, v7

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 12066
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 19009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v9, 0x41b00000    # 22.0f

    .line 19010
    invoke-static {v7, v9, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 12068
    new-instance v9, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v10, 0x8

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v11, v10, v12

    aput v11, v10, v7

    const/4 v7, 0x2

    aput v11, v10, v7

    const/4 v7, 0x3

    aput v11, v10, v7

    const/4 v7, 0x4

    aput v2, v10, v7

    const/4 v7, 0x5

    aput v2, v10, v7

    const/4 v7, 0x6

    aput v2, v10, v7

    const/4 v7, 0x7

    aput v2, v10, v7

    const/4 v2, 0x0

    invoke-direct {v9, v10, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    check-cast v9, Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 12070
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const-string/jumbo v7, "solidColorDrawable.paint"

    invoke-static {v2, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 12072
    iget-object v2, v5, Lo/onSearchClicked$ICustomTabsCallback;->asInterface:Landroid/view/View;

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 12073
    iget-object v2, v5, Lo/onSearchClicked$ICustomTabsCallback;->onTransact:Landroid/view/View;

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    .line 12063
    :cond_9
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12062
    :cond_a
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12075
    :cond_b
    iget-object v1, v5, Lo/onSearchClicked$ICustomTabsCallback;->asInterface:Landroid/view/View;

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12076
    iget-object v1, v5, Lo/onSearchClicked$ICustomTabsCallback;->onTransact:Landroid/view/View;

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    :cond_c
    const/4 v1, 0x0

    .line 17215
    throw v1

    :cond_d
    move-object/from16 v6, v20

    const-string/jumbo v5, "t1"

    .line 1041
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1042
    iget-object v3, v0, Lo/convertFocusDirectionToLayoutDirection$extraCallback;->onMessageChannelReady:Lo/convertFocusDirectionToLayoutDirection;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->cardParent:I

    invoke-virtual {v3, v5}, Lo/convertFocusDirectionToLayoutDirection;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3011
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v10, 0x7f0e00d0

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    iget-object v5, v0, Lo/convertFocusDirectionToLayoutDirection$extraCallback;->onMessageChannelReady:Lo/convertFocusDirectionToLayoutDirection;

    sget v10, Lo/getSwitchMinWidth$onPostMessage;->cardParent:I

    invoke-virtual {v5, v10}, Lo/convertFocusDirectionToLayoutDirection;->extraCallback(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1044
    iget-object v5, v0, Lo/convertFocusDirectionToLayoutDirection$extraCallback;->onMessageChannelReady:Lo/convertFocusDirectionToLayoutDirection;

    sget v10, Lo/getSwitchMinWidth$onPostMessage;->cardParent:I

    invoke-virtual {v5, v10}, Lo/convertFocusDirectionToLayoutDirection;->extraCallback(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1045
    new-instance v5, Lo/updateVoiceButton$onNavigationEvent;

    invoke-direct {v5, v3}, Lo/updateVoiceButton$onNavigationEvent;-><init>(Landroid/view/View;)V

    invoke-static {v1, v14}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4011
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v3, :cond_e

    .line 4350
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onMessageChannelReady:Ljava/lang/String;

    if-nez v3, :cond_f

    :cond_e
    move-object v3, v4

    .line 3027
    :cond_f
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 5011
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v4, :cond_10

    .line 5346
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->extraCallback:Ljava/lang/String;

    move-object/from16 v22, v4

    goto :goto_5

    :cond_10
    const/16 v22, 0x0

    .line 3030
    :goto_5
    iget-object v4, v5, Lo/updateVoiceButton$onNavigationEvent;->onMessageChannelReady:Lo/setSpeed;

    invoke-static {v4, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x3e

    move-object/from16 v21, v4

    invoke-static/range {v21 .. v28}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 6011
    iget-object v4, v1, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v4, :cond_11

    .line 6349
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;->onNavigationEvent:Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;

    if-eqz v4, :cond_11

    .line 7009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v10, 0x41c00000    # 24.0f

    .line 7010
    invoke-static {v7, v10, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 3031
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v7, 0x4

    const/4 v10, 0x0

    invoke-static {v4, v13, v2, v10, v7}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;Ljava/lang/String;Ljava/lang/Float;[FI)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_6

    :cond_11
    const/4 v11, 0x0

    .line 3032
    :goto_6
    iget-object v2, v5, Lo/updateVoiceButton$onNavigationEvent;->onMessageChannelReady:Lo/setSpeed;

    invoke-static {v2, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7116
    iget-object v2, v2, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 7216
    iget-object v2, v2, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v2, :cond_16

    check-cast v2, Lo/setMaxFrame;

    .line 3032
    check-cast v2, Lo/getComposition;

    const/4 v4, 0x0

    .line 8564
    invoke-virtual {v2, v4, v11}, Lo/getComposition;->extraCallback(ILandroid/graphics/drawable/Drawable;)V

    .line 3034
    iget-object v2, v5, Lo/updateVoiceButton$onNavigationEvent;->extraCallback:Landroid/widget/ImageView;

    if-eqz v3, :cond_12

    const v10, 0x7f080302

    goto :goto_7

    :cond_12
    const v10, 0x7f080301

    :goto_7
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3041
    iget-object v11, v5, Lo/updateVoiceButton$onNavigationEvent;->onNavigationEvent:Lo/setSpeed;

    const-string v2, "image1"

    invoke-static {v11, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9014
    iget-object v12, v1, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v12, :cond_13

    .line 9059
    invoke-virtual {v11, v4}, Lo/setSpeed;->setVisibility(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3e

    .line 9060
    invoke-static/range {v11 .. v18}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    goto :goto_8

    :cond_13
    const/16 v2, 0x8

    .line 9062
    invoke-virtual {v11, v2}, Lo/setSpeed;->setVisibility(I)V

    .line 3042
    :goto_8
    iget-object v12, v5, Lo/updateVoiceButton$onNavigationEvent;->ICustomTabsCallback:Lo/setSpeed;

    const-string v2, "image2"

    invoke-static {v12, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10016
    iget-object v13, v1, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->onPostMessage:Ljava/lang/String;

    if-eqz v13, :cond_14

    const/4 v2, 0x0

    .line 10059
    invoke-virtual {v12, v2}, Lo/setSpeed;->setVisibility(I)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3e

    .line 10060
    invoke-static/range {v12 .. v19}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    goto :goto_9

    :cond_14
    const/16 v2, 0x8

    .line 10062
    invoke-virtual {v12, v2}, Lo/setSpeed;->setVisibility(I)V

    .line 3044
    :goto_9
    iget-object v2, v5, Lo/updateVoiceButton$onNavigationEvent;->onRelationshipValidationResult:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v3, :cond_15

    const v3, 0x7f060238

    goto :goto_a

    :cond_15
    const v3, 0x7f0600b2

    :goto_a
    invoke-static {v2, v3}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    .line 3046
    iget-object v3, v5, Lo/updateVoiceButton$onNavigationEvent;->onPostMessage:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3047
    iget-object v3, v5, Lo/updateVoiceButton$onNavigationEvent;->ICustomTabsCallback$Stub:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3048
    iget-object v3, v5, Lo/updateVoiceButton$onNavigationEvent;->onTransact:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3049
    iget-object v3, v5, Lo/updateVoiceButton$onNavigationEvent;->asInterface:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3051
    iget-object v2, v5, Lo/updateVoiceButton$onNavigationEvent;->onPostMessage:Landroid/widget/TextView;

    invoke-static {v2, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11018
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->onNavigationEvent:Ljava/lang/String;

    .line 3051
    invoke-static {v2, v3}, Lo/updateVoiceButton$onNavigationEvent;->ICustomTabsCallback(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 3052
    iget-object v2, v5, Lo/updateVoiceButton$onNavigationEvent;->ICustomTabsCallback$Stub:Landroid/widget/TextView;

    invoke-static {v2, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11020
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->asBinder:Ljava/lang/String;

    .line 3052
    invoke-static {v2, v3}, Lo/updateVoiceButton$onNavigationEvent;->ICustomTabsCallback(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 3053
    iget-object v2, v5, Lo/updateVoiceButton$onNavigationEvent;->onTransact:Landroid/widget/TextView;

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11022
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->onTransact:Ljava/lang/String;

    .line 3053
    invoke-static {v2, v3}, Lo/updateVoiceButton$onNavigationEvent;->ICustomTabsCallback(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 3054
    iget-object v2, v5, Lo/updateVoiceButton$onNavigationEvent;->asInterface:Landroid/widget/TextView;

    const-string/jumbo v3, "text4"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11024
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->onRelationshipValidationResult:Ljava/lang/String;

    .line 3054
    invoke-static {v2, v1}, Lo/updateVoiceButton$onNavigationEvent;->ICustomTabsCallback(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_b

    :cond_16
    const/4 v1, 0x0

    .line 8215
    throw v1

    .line 1054
    :cond_17
    :goto_b
    iget-object v1, v0, Lo/convertFocusDirectionToLayoutDirection$extraCallback;->onMessageChannelReady:Lo/convertFocusDirectionToLayoutDirection;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v1, v2}, Lo/convertFocusDirectionToLayoutDirection;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onDestroyView;

    invoke-virtual {v1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1055
    iget-object v1, v0, Lo/convertFocusDirectionToLayoutDirection$extraCallback;->onMessageChannelReady:Lo/convertFocusDirectionToLayoutDirection;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->shareCta:I

    invoke-virtual {v1, v2}, Lo/convertFocusDirectionToLayoutDirection;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string/jumbo v2, "shareCta"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
