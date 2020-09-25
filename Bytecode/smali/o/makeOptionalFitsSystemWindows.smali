.class public Lo/makeOptionalFitsSystemWindows;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private ICustomTabsCallback:Lo/PlaybackStateCompat;

.field private ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:Lo/PlaybackStateCompat$onPostMessage;

.field private asBinder:I

.field private asInterface:F

.field private extraCallback:F

.field private onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private onNavigationEvent:F

.field private onPostMessage:F

.field private onRelationshipValidationResult:Z

.field private onTransact:I

.field private warmup:Landroid/animation/ArgbEvaluator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lo/makeOptionalFitsSystemWindows;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lo/makeOptionalFitsSystemWindows;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lo/makeOptionalFitsSystemWindows;->warmup:Landroid/animation/ArgbEvaluator;

    .line 172
    new-instance p1, Lo/makeOptionalFitsSystemWindows$4;

    invoke-direct {p1, p0}, Lo/makeOptionalFitsSystemWindows$4;-><init>(Lo/makeOptionalFitsSystemWindows;)V

    iput-object p1, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback$Stub$Proxy:Lo/PlaybackStateCompat$onPostMessage;

    .line 1056
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/makeOptionalFitsSystemWindows;->onMessageChannelReady:Ljava/util/List;

    const/4 p1, 0x0

    .line 1057
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1266
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float p3, p3, v0

    float-to-int p3, p3

    int-to-float p3, p3

    .line 1059
    iput p3, p0, Lo/makeOptionalFitsSystemWindows;->onNavigationEvent:F

    .line 2266
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float p3, p3, v0

    float-to-int p3, p3

    int-to-float p3, p3

    .line 1060
    iput p3, p0, Lo/makeOptionalFitsSystemWindows;->extraCallback:F

    .line 1061
    iget p3, p0, Lo/makeOptionalFitsSystemWindows;->onNavigationEvent:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    iput p3, p0, Lo/makeOptionalFitsSystemWindows;->onPostMessage:F

    const/high16 p3, 0x40200000    # 2.5f

    .line 1063
    iput p3, p0, Lo/makeOptionalFitsSystemWindows;->asInterface:F

    const v1, -0xff0001

    .line 1064
    iput v1, p0, Lo/makeOptionalFitsSystemWindows;->onTransact:I

    const/4 v2, 0x1

    .line 1065
    iput-boolean v2, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback$Stub:Z

    const/4 v3, 0x5

    if-eqz p2, :cond_1

    .line 1068
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lo/getSwitchMinWidth$onMessageChannelReady;->DotRectIndicator:[I

    invoke-virtual {v4, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1070
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lo/makeOptionalFitsSystemWindows;->onTransact:I

    const/4 v4, 0x6

    .line 1071
    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lo/makeOptionalFitsSystemWindows;->asBinder:I

    const/4 v1, 0x4

    .line 1073
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lo/makeOptionalFitsSystemWindows;->asInterface:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 1075
    iput p3, p0, Lo/makeOptionalFitsSystemWindows;->asInterface:F

    :cond_0
    const/4 p3, 0x2

    .line 1078
    iget v1, p0, Lo/makeOptionalFitsSystemWindows;->onNavigationEvent:F

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lo/makeOptionalFitsSystemWindows;->onNavigationEvent:F

    div-float/2addr p3, v0

    .line 1079
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    int-to-float p3, p3

    iput p3, p0, Lo/makeOptionalFitsSystemWindows;->onPostMessage:F

    const/4 p3, 0x3

    .line 1080
    iget v0, p0, Lo/makeOptionalFitsSystemWindows;->extraCallback:F

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lo/makeOptionalFitsSystemWindows;->extraCallback:F

    .line 1082
    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lo/makeOptionalFitsSystemWindows;->onRelationshipValidationResult:Z

    .line 1084
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1087
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1088
    invoke-direct {p0, v3}, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback(I)V

    .line 1091
    :cond_2
    invoke-direct {p0}, Lo/makeOptionalFitsSystemWindows;->onNavigationEvent()V

    return-void
.end method

.method private ICustomTabsCallback(I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0e0078

    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b02a6

    .line 128
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 129
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 130
    iget v5, p0, Lo/makeOptionalFitsSystemWindows;->onNavigationEvent:F

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 131
    iget v5, p0, Lo/makeOptionalFitsSystemWindows;->extraCallback:F

    float-to-int v6, v5

    float-to-int v5, v5

    invoke-virtual {v4, v6, v0, v5, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 132
    new-instance v4, Lo/getHint;

    invoke-direct {v4}, Lo/getHint;-><init>()V

    .line 133
    iget v5, p0, Lo/makeOptionalFitsSystemWindows;->onPostMessage:F

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_0

    .line 135
    iget v5, p0, Lo/makeOptionalFitsSystemWindows;->asBinder:I

    goto :goto_1

    :cond_0
    iget v5, p0, Lo/makeOptionalFitsSystemWindows;->onTransact:I

    :goto_1
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_3

    .line 137
    :cond_1
    iget-object v5, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback:Lo/PlaybackStateCompat;

    .line 2627
    iget v5, v5, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    if-ne v5, v1, :cond_2

    .line 137
    iget v5, p0, Lo/makeOptionalFitsSystemWindows;->asBinder:I

    goto :goto_2

    :cond_2
    iget v5, p0, Lo/makeOptionalFitsSystemWindows;->onTransact:I

    :goto_2
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 139
    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    new-instance v4, Lo/makeOptionalFitsSystemWindows$2;

    invoke-direct {v4, p0, v1}, Lo/makeOptionalFitsSystemWindows$2;-><init>(Lo/makeOptionalFitsSystemWindows;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v4, p0, Lo/makeOptionalFitsSystemWindows;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/makeOptionalFitsSystemWindows;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback$Stub:Z

    return p0
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/makeOptionalFitsSystemWindows;)F
    .locals 0

    .line 24
    iget p0, p0, Lo/makeOptionalFitsSystemWindows;->onNavigationEvent:F

    return p0
.end method

.method static synthetic ICustomTabsService(Lo/makeOptionalFitsSystemWindows;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/makeOptionalFitsSystemWindows;->onNavigationEvent()V

    return-void
.end method

.method static synthetic asBinder(Lo/makeOptionalFitsSystemWindows;)Lo/PlaybackStateCompat;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback:Lo/PlaybackStateCompat;

    return-object p0
.end method

.method static synthetic asInterface(Lo/makeOptionalFitsSystemWindows;)I
    .locals 0

    .line 24
    iget p0, p0, Lo/makeOptionalFitsSystemWindows;->onTransact:I

    return p0
.end method

.method private extraCallback()V
    .locals 4

    .line 226
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows;->onMessageChannelReady:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 229
    :goto_0
    iget-object v1, p0, Lo/makeOptionalFitsSystemWindows;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 230
    iget-object v1, p0, Lo/makeOptionalFitsSystemWindows;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 231
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lo/getHint;

    .line 233
    iget-object v3, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback:Lo/PlaybackStateCompat;

    .line 3627
    iget v3, v3, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    if-eq v0, v3, :cond_2

    .line 233
    iget-boolean v3, p0, Lo/makeOptionalFitsSystemWindows;->onRelationshipValidationResult:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback:Lo/PlaybackStateCompat;

    .line 4627
    iget v3, v3, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    if-ge v0, v3, :cond_1

    goto :goto_1

    .line 236
    :cond_1
    iget v3, p0, Lo/makeOptionalFitsSystemWindows;->onTransact:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_2

    .line 234
    :cond_2
    :goto_1
    iget v3, p0, Lo/makeOptionalFitsSystemWindows;->asBinder:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 239
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 240
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic extraCallback(Landroid/widget/ImageView;I)V
    .locals 1

    .line 18220
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 18221
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 18222
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic extraCallback(Lo/makeOptionalFitsSystemWindows;)V
    .locals 4

    .line 12245
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows;->onMessageChannelReady:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 12248
    :goto_0
    iget-object v1, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback:Lo/PlaybackStateCompat;

    .line 12627
    iget v1, v1, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    if-ge v0, v1, :cond_0

    .line 12249
    iget-object v1, p0, Lo/makeOptionalFitsSystemWindows;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v2, p0, Lo/makeOptionalFitsSystemWindows;->onNavigationEvent:F

    float-to-int v2, v2

    .line 13220
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 13221
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 13222
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic getInterfaceDescriptor(Lo/makeOptionalFitsSystemWindows;)Landroid/animation/ArgbEvaluator;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/makeOptionalFitsSystemWindows;->warmup:Landroid/animation/ArgbEvaluator;

    return-object p0
.end method

.method static synthetic newSession(Lo/makeOptionalFitsSystemWindows;)I
    .locals 0

    .line 24
    iget p0, p0, Lo/makeOptionalFitsSystemWindows;->asBinder:I

    return p0
.end method

.method static synthetic onMessageChannelReady(Lo/makeOptionalFitsSystemWindows;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/makeOptionalFitsSystemWindows;->extraCallback()V

    return-void
.end method

.method private onNavigationEvent()V
    .locals 2

    .line 101
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback:Lo/PlaybackStateCompat;

    if-eqz v0, :cond_0

    .line 2572
    iget-object v0, v0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Lo/makeOptionalFitsSystemWindows$1;

    invoke-direct {v0, p0}, Lo/makeOptionalFitsSystemWindows$1;-><init>(Lo/makeOptionalFitsSystemWindows;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 113
    :cond_0
    const-class v0, Lo/makeOptionalFitsSystemWindows;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "You have to set an adapter to the view pager before !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/makeOptionalFitsSystemWindows;)V
    .locals 3

    .line 14165
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback:Lo/PlaybackStateCompat;

    if-eqz v0, :cond_2

    .line 14572
    iget-object v0, v0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    if-eqz v0, :cond_2

    .line 14165
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback:Lo/PlaybackStateCompat;

    .line 15572
    iget-object v0, v0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    .line 14165
    invoke-virtual {v0}, Lo/toKeyCode;->extraCallback()I

    move-result v0

    if-lez v0, :cond_2

    .line 14166
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback:Lo/PlaybackStateCompat;

    iget-object v1, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback$Stub$Proxy:Lo/PlaybackStateCompat$onPostMessage;

    .line 15736
    iget-object v2, v0, Lo/PlaybackStateCompat;->extraCallback:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 15737
    iget-object v0, v0, Lo/PlaybackStateCompat;->extraCallback:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 14167
    :cond_0
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback:Lo/PlaybackStateCompat;

    iget-object v1, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback$Stub$Proxy:Lo/PlaybackStateCompat$onPostMessage;

    .line 16723
    iget-object v2, v0, Lo/PlaybackStateCompat;->extraCallback:Ljava/util/List;

    if-nez v2, :cond_1

    .line 16724
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lo/PlaybackStateCompat;->extraCallback:Ljava/util/List;

    .line 16726
    :cond_1
    iget-object v0, v0, Lo/PlaybackStateCompat;->extraCallback:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14168
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback$Stub$Proxy:Lo/PlaybackStateCompat$onPostMessage;

    iget-object p0, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback:Lo/PlaybackStateCompat;

    .line 17627
    iget p0, p0, Lo/PlaybackStateCompat;->onMessageChannelReady:I

    const/4 v1, 0x0

    .line 14168
    invoke-interface {v0, p0, v1}, Lo/PlaybackStateCompat$onPostMessage;->onMessageChannelReady(IF)V

    :cond_2
    return-void
.end method

.method static synthetic onPostMessage(Lo/makeOptionalFitsSystemWindows;)V
    .locals 4

    .line 8118
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback:Lo/PlaybackStateCompat;

    .line 8572
    iget-object v1, v1, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    .line 8118
    invoke-virtual {v1}, Lo/toKeyCode;->extraCallback()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 8119
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback:Lo/PlaybackStateCompat;

    .line 9572
    iget-object v0, v0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    .line 8119
    invoke-virtual {v0}, Lo/toKeyCode;->extraCallback()I

    move-result v0

    iget-object v1, p0, Lo/makeOptionalFitsSystemWindows;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback(I)V

    return-void

    .line 8120
    :cond_0
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback:Lo/PlaybackStateCompat;

    .line 10572
    iget-object v1, v1, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    .line 8120
    invoke-virtual {v1}, Lo/toKeyCode;->extraCallback()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 8121
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback:Lo/PlaybackStateCompat;

    .line 11572
    iget-object v1, v1, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    .line 8121
    invoke-virtual {v1}, Lo/toKeyCode;->extraCallback()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 12159
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 12160
    iget-object v2, p0, Lo/makeOptionalFitsSystemWindows;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic onPostMessage(Lo/makeOptionalFitsSystemWindows;I)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 19216
    iget-object p0, p0, Lo/makeOptionalFitsSystemWindows;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic onRelationshipValidationResult(Lo/makeOptionalFitsSystemWindows;)F
    .locals 0

    .line 24
    iget p0, p0, Lo/makeOptionalFitsSystemWindows;->asInterface:F

    return p0
.end method

.method static synthetic onTransact(Lo/makeOptionalFitsSystemWindows;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/makeOptionalFitsSystemWindows;->onMessageChannelReady:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 96
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 97
    invoke-direct {p0}, Lo/makeOptionalFitsSystemWindows;->onNavigationEvent()V

    return-void
.end method

.method public setDotsClickable(Z)V
    .locals 0

    .line 284
    iput-boolean p1, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback$Stub:Z

    return-void
.end method

.method public setPointsColor(I)V
    .locals 0

    .line 274
    iput p1, p0, Lo/makeOptionalFitsSystemWindows;->onTransact:I

    .line 275
    invoke-direct {p0}, Lo/makeOptionalFitsSystemWindows;->extraCallback()V

    return-void
.end method

.method public setSelectedPointColor(I)V
    .locals 0

    .line 279
    iput p1, p0, Lo/makeOptionalFitsSystemWindows;->asBinder:I

    .line 280
    invoke-direct {p0}, Lo/makeOptionalFitsSystemWindows;->extraCallback()V

    return-void
.end method

.method public setViewPager(Lo/PlaybackStateCompat;)V
    .locals 1

    .line 288
    iput-object p1, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback:Lo/PlaybackStateCompat;

    .line 5572
    iget-object p1, p1, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    if-eqz p1, :cond_0

    .line 5255
    iget-object p1, p0, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback:Lo/PlaybackStateCompat;

    .line 6572
    iget-object p1, p1, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    .line 5255
    new-instance v0, Lo/makeOptionalFitsSystemWindows$3;

    invoke-direct {v0, p0}, Lo/makeOptionalFitsSystemWindows$3;-><init>(Lo/makeOptionalFitsSystemWindows;)V

    .line 7303
    iget-object p1, p1, Lo/toKeyCode;->extraCallback:Landroid/database/DataSetObservable;

    invoke-virtual {p1, v0}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    .line 290
    :cond_0
    invoke-direct {p0}, Lo/makeOptionalFitsSystemWindows;->onNavigationEvent()V

    return-void
.end method
