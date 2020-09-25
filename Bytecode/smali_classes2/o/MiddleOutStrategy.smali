.class public Lo/MiddleOutStrategy;
.super Landroid/app/Activity;
.source ""


# instance fields
.field private ICustomTabsCallback:I

.field private onNavigationEvent:Lo/Settings;

.field private onPostMessage:Lo/SettingsSpiCall;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    .line 262
    iput v0, p0, Lo/MiddleOutStrategy;->ICustomTabsCallback:I

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/MiddleOutStrategy;)I
    .locals 0

    .line 51
    iget p0, p0, Lo/MiddleOutStrategy;->ICustomTabsCallback:I

    return p0
.end method

.method private ICustomTabsCallback(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/Button;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    .line 230
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f733333    # 0.95f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f733333    # 0.95f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v0, 0xc8

    .line 232
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v2, p1

    .line 233
    invoke-virtual {v2, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 235
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/high16 v16, 0x3f000000    # 0.5f

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 241
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 242
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p2

    .line 243
    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p3

    .line 244
    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 245
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 246
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 249
    :cond_0
    sget v0, Lo/writeCachedSettings$onPostMessage;->com_mixpanel_android_fade_in:I

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    move-object/from16 v2, p5

    .line 250
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/MiddleOutStrategy;)Lo/Settings;
    .locals 0

    .line 51
    iget-object p0, p0, Lo/MiddleOutStrategy;->onNavigationEvent:Lo/Settings;

    return-object p0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 255
    iget v0, p0, Lo/MiddleOutStrategy;->ICustomTabsCallback:I

    invoke-static {v0}, Lo/SettingsSpiCall;->ICustomTabsCallback(I)V

    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v6, p0

    .line 54
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.mixpanel.android.takeoverinapp.TakeoverInAppActivity.INTENT_ID_KEY"

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v6, Lo/MiddleOutStrategy;->ICustomTabsCallback:I

    .line 57
    invoke-static {v0}, Lo/SettingsSpiCall;->onMessageChannelReady(I)Lo/SettingsSpiCall;

    move-result-object v0

    iput-object v0, v6, Lo/MiddleOutStrategy;->onPostMessage:Lo/SettingsSpiCall;

    if-nez v0, :cond_0

    const-string v0, "MixpanelAPI.TakeoverInAppActivity"

    const-string v1, "TakeoverInAppActivity intent received, but nothing was found to show."

    .line 59
    invoke-static {v0, v1}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 1298
    :cond_0
    iget-object v0, v0, Lo/SettingsSpiCall;->onPostMessage:Ljava/lang/String;

    .line 63
    invoke-static {v6, v0}, Lo/Settings;->onPostMessage(Landroid/content/Context;Ljava/lang/String;)Lo/Settings;

    move-result-object v0

    iput-object v0, v6, Lo/MiddleOutStrategy;->onNavigationEvent:Lo/Settings;

    .line 2069
    sget v0, Lo/writeCachedSettings$onMessageChannelReady;->com_mixpanel_android_activity_notification_full:I

    invoke-virtual {v6, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 2071
    sget v0, Lo/writeCachedSettings$ICustomTabsCallback;->com_mixpanel_android_notification_gradient:I

    invoke-virtual {v6, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2072
    sget v1, Lo/writeCachedSettings$ICustomTabsCallback;->com_mixpanel_android_notification_image:I

    invoke-virtual {v6, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/getTrimmedStackTrace;

    .line 2073
    sget v2, Lo/writeCachedSettings$ICustomTabsCallback;->com_mixpanel_android_notification_title:I

    invoke-virtual {v6, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2074
    sget v3, Lo/writeCachedSettings$ICustomTabsCallback;->com_mixpanel_android_notification_subtext:I

    invoke-virtual {v6, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2075
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2076
    sget v5, Lo/writeCachedSettings$ICustomTabsCallback;->com_mixpanel_android_notification_button:I

    invoke-virtual {v6, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 2077
    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2078
    sget v7, Lo/writeCachedSettings$ICustomTabsCallback;->com_mixpanel_android_notification_second_button:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 2079
    invoke-virtual {v4, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2080
    sget v7, Lo/writeCachedSettings$ICustomTabsCallback;->com_mixpanel_android_button_exit_wrapper:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 2081
    sget v8, Lo/writeCachedSettings$ICustomTabsCallback;->com_mixpanel_android_image_close:I

    invoke-virtual {v6, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 2083
    iget-object v9, v6, Lo/MiddleOutStrategy;->onPostMessage:Lo/SettingsSpiCall;

    .line 2290
    iget-object v9, v9, Lo/SettingsSpiCall;->ICustomTabsCallback:Lo/SettingsSpiCall$onPostMessage;

    .line 2084
    check-cast v9, Lo/SettingsSpiCall$onPostMessage$onPostMessage;

    .line 3067
    iget-object v9, v9, Lo/SettingsSpiCall$onPostMessage$onPostMessage;->onPostMessage:Lo/AppRequestData;

    .line 2085
    check-cast v9, Lo/requestWasSuccessful;

    .line 2087
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 2088
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 2089
    invoke-virtual {v10, v11}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2091
    invoke-virtual/range {p0 .. p0}, Lo/MiddleOutStrategy;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-ne v10, v12, :cond_1

    .line 2092
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2093
    iget v11, v11, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    const v14, 0x3d75c28f    # 0.06f

    mul-float v11, v11, v14

    float-to-int v11, v11

    invoke-virtual {v10, v13, v13, v13, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 2094
    invoke-virtual {v7, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3081
    :cond_1
    iget-boolean v10, v9, Lo/requestWasSuccessful;->ICustomTabsService:Z

    .line 3099
    iput-boolean v10, v1, Lo/getTrimmedStackTrace;->ICustomTabsCallback:Z

    .line 3148
    iget v10, v9, Lo/AppRequestData;->ICustomTabsCallback:I

    .line 2099
    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4057
    iget-object v0, v9, Lo/requestWasSuccessful;->asInterface:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/16 v10, 0x8

    if-eqz v0, :cond_3

    .line 2102
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 4061
    iget-object v0, v9, Lo/requestWasSuccessful;->asInterface:Ljava/lang/String;

    .line 2103
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4065
    iget v0, v9, Lo/requestWasSuccessful;->getInterfaceDescriptor:I

    .line 2104
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 2106
    :cond_3
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 4152
    :goto_1
    iget-object v0, v9, Lo/AppRequestData;->onPostMessage:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    .line 2110
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 4156
    iget-object v0, v9, Lo/AppRequestData;->onPostMessage:Ljava/lang/String;

    .line 2111
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4160
    iget v0, v9, Lo/AppRequestData;->extraCallback:I

    .line 2112
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 2114
    :cond_5
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 4180
    :goto_3
    iget-object v0, v9, Lo/AppRequestData;->onRelationshipValidationResult:Landroid/graphics/Bitmap;

    .line 2117
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 2119
    :goto_4
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v11

    if-ge v0, v11, :cond_a

    .line 5073
    iget-object v11, v9, Lo/requestWasSuccessful;->onTransact:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/AbstractCollection;->size()I

    move-result v11

    const/4 v14, 0x0

    if-le v11, v0, :cond_6

    iget-object v11, v9, Lo/requestWasSuccessful;->onTransact:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/defaultSessionData;

    goto :goto_5

    :cond_6
    move-object v11, v14

    .line 2121
    :goto_5
    invoke-virtual {v4, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    if-eqz v11, :cond_9

    .line 5148
    invoke-virtual {v15, v13}, Landroid/view/View;->setVisibility(I)V

    .line 6046
    iget-object v13, v11, Lo/defaultSessionData;->onNavigationEvent:Ljava/lang/String;

    .line 5149
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6050
    iget v13, v11, Lo/defaultSessionData;->onMessageChannelReady:I

    .line 5150
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5151
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 5153
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 6054
    iget v14, v11, Lo/defaultSessionData;->ICustomTabsCallback:I

    const v16, 0x33868686

    if-eqz v14, :cond_7

    .line 7054
    iget v14, v11, Lo/defaultSessionData;->ICustomTabsCallback:I

    .line 8015
    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->red(I)I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v12, v17, v18

    int-to-float v12, v12

    .line 8016
    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->green(I)I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v10, v17, v18

    int-to-float v10, v10

    .line 8017
    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->blue(I)I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v14, v14, v16

    int-to-float v14, v14

    float-to-int v12, v12

    float-to-int v10, v10

    float-to-int v14, v14

    .line 8018
    invoke-static {v12, v10, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v16

    move/from16 v10, v16

    goto :goto_6

    :cond_7
    const v10, 0x33868686

    .line 5155
    :goto_6
    new-instance v12, Lo/MiddleOutStrategy$5;

    invoke-direct {v12, v10, v13, v11}, Lo/MiddleOutStrategy$5;-><init>(ILandroid/graphics/drawable/GradientDrawable;Lo/defaultSessionData;)V

    invoke-virtual {v15, v12}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8054
    iget v10, v11, Lo/defaultSessionData;->ICustomTabsCallback:I

    .line 5168
    invoke-virtual {v13, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v10, 0x40000000    # 2.0f

    .line 9010
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v12, v12

    const/high16 v14, 0x43200000    # 160.0f

    div-float/2addr v12, v14

    mul-float v12, v12, v10

    float-to-int v10, v12

    .line 9058
    iget v12, v11, Lo/defaultSessionData;->onPostMessage:I

    .line 5169
    invoke-virtual {v13, v10, v12}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/high16 v10, 0x40a00000    # 5.0f

    .line 10010
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v12, v12

    div-float/2addr v12, v14

    mul-float v12, v12, v10

    float-to-int v10, v12

    int-to-float v10, v10

    .line 5170
    invoke-virtual {v13, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 5172
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x10

    if-ge v10, v12, :cond_8

    .line 5173
    invoke-virtual {v15, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 5175
    :cond_8
    invoke-virtual {v15, v13}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5178
    :goto_7
    new-instance v10, Lo/MiddleOutStrategy$2;

    invoke-direct {v10, v6, v11, v9, v0}, Lo/MiddleOutStrategy$2;-><init>(Lo/MiddleOutStrategy;Lo/defaultSessionData;Lo/AppRequestData;I)V

    invoke-virtual {v15, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v10, 0x8

    goto :goto_8

    .line 5225
    :cond_9
    invoke-virtual {v15, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    add-int/lit8 v0, v0, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 10077
    :cond_a
    iget-object v0, v9, Lo/requestWasSuccessful;->onTransact:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_b

    .line 2127
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    .line 2128
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v10, -0x2

    .line 2129
    iput v10, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2130
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11069
    :cond_b
    iget v0, v9, Lo/requestWasSuccessful;->ICustomTabsCallback$Stub:I

    .line 2133
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2134
    new-instance v0, Lo/MiddleOutStrategy$1;

    invoke-direct {v0, v6}, Lo/MiddleOutStrategy$1;-><init>(Lo/MiddleOutStrategy;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    move-object v5, v7

    .line 2142
    invoke-direct/range {v0 .. v5}, Lo/MiddleOutStrategy;->ICustomTabsCallback(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/ArrayList;Landroid/widget/LinearLayout;)V

    return-void
.end method
