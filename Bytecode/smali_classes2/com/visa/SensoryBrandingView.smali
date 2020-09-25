.class public Lcom/visa/SensoryBrandingView;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static mayLaunchUrl:I


# instance fields
.field private ICustomTabsCallback:Landroid/view/View;

.field private ICustomTabsCallback$Stub:Landroidx/appcompat/widget/AppCompatImageView;

.field private ICustomTabsCallback$Stub$Proxy:Landroid/util/AttributeSet;

.field private ICustomTabsService:Landroid/content/Context;

.field private asBinder:Landroid/view/View;

.field private asInterface:Lo/getSSLCacheDirectory;

.field private extraCallback:Landroid/view/View;

.field private extraCommand:Z

.field private getInterfaceDescriptor:Lo/getSSLCacheDirectory;

.field private newSession:Z

.field private onMessageChannelReady:Landroid/view/View;

.field private onNavigationEvent:Landroid/view/View;

.field private onPostMessage:Landroid/view/View;

.field private onRelationshipValidationResult:Landroid/view/View;

.field private onTransact:Landroidx/appcompat/widget/AppCompatImageView;

.field private postMessage:I

.field private requestPostMessageChannel:Z

.field private updateVisuals:Z

.field private warmup:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/visa/SensoryBrandingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/visa/SensoryBrandingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/visa/SensoryBrandingView;->newSession:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/visa/R$color;->visa_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/visa/SensoryBrandingView;->postMessage:I

    iput-boolean p3, p0, Lcom/visa/SensoryBrandingView;->requestPostMessageChannel:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visa/SensoryBrandingView;->updateVisuals:Z

    iput-boolean v0, p0, Lcom/visa/SensoryBrandingView;->extraCommand:Z

    iput-object p1, p0, Lcom/visa/SensoryBrandingView;->ICustomTabsService:Landroid/content/Context;

    iput-object p2, p0, Lcom/visa/SensoryBrandingView;->ICustomTabsCallback$Stub$Proxy:Landroid/util/AttributeSet;

    const-string p2, "layout_inflater"

    .line 2000
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    if-eqz p1, :cond_0

    sget p2, Lcom/visa/R$layout;->sensory_branding:I

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 3000
    :cond_0
    sget p1, Lcom/visa/R$id;->top_flag_constrained:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/SensoryBrandingView;->extraCallback:Landroid/view/View;

    sget p1, Lcom/visa/R$id;->top_flag_constrained_small:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/SensoryBrandingView;->onMessageChannelReady:Landroid/view/View;

    sget p1, Lcom/visa/R$id;->bottom_flag_constrained:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/SensoryBrandingView;->ICustomTabsCallback:Landroid/view/View;

    sget p1, Lcom/visa/R$id;->bottom_flag_constrained_small:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/SensoryBrandingView;->asBinder:Landroid/view/View;

    sget p1, Lcom/visa/R$id;->top_flag:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/SensoryBrandingView;->onNavigationEvent:Landroid/view/View;

    sget p1, Lcom/visa/R$id;->bottom_flag:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/SensoryBrandingView;->onPostMessage:Landroid/view/View;

    sget p1, Lcom/visa/R$id;->visa_logo:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/visa/SensoryBrandingView;->onTransact:Landroidx/appcompat/widget/AppCompatImageView;

    sget p1, Lcom/visa/R$id;->right_overlay:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getSSLCacheDirectory;

    iput-object p1, p0, Lcom/visa/SensoryBrandingView;->getInterfaceDescriptor:Lo/getSSLCacheDirectory;

    sget p1, Lcom/visa/R$id;->left_overlay:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getSSLCacheDirectory;

    iput-object p1, p0, Lcom/visa/SensoryBrandingView;->asInterface:Lo/getSSLCacheDirectory;

    sget p1, Lcom/visa/R$id;->container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/visa/SensoryBrandingView;->warmup:Landroid/widget/RelativeLayout;

    sget p1, Lcom/visa/R$id;->hide_mask:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/SensoryBrandingView;->onRelationshipValidationResult:Landroid/view/View;

    sget p1, Lcom/visa/R$id;->checkmark:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/visa/SensoryBrandingView;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object p1, p0, Lcom/visa/SensoryBrandingView;->getInterfaceDescriptor:Lo/getSSLCacheDirectory;

    const-wide/high16 v0, 0x4051000000000000L    # 68.0

    .line 4000
    iput-wide v0, p1, Lo/getSSLCacheDirectory;->onNavigationEvent:D

    .line 3000
    iget-object p1, p0, Lcom/visa/SensoryBrandingView;->asInterface:Lo/getSSLCacheDirectory;

    .line 5000
    iput-wide v0, p1, Lo/getSSLCacheDirectory;->onNavigationEvent:D

    .line 6000
    iget-object p1, p0, Lcom/visa/SensoryBrandingView;->ICustomTabsCallback$Stub$Proxy:Landroid/util/AttributeSet;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/visa/SensoryBrandingView;->ICustomTabsService:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget-object p2, p0, Lcom/visa/SensoryBrandingView;->ICustomTabsCallback$Stub$Proxy:Landroid/util/AttributeSet;

    sget-object v0, Lcom/visa/R$styleable;->SensoryBrandingView:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/visa/R$styleable;->SensoryBrandingView_soundEnabled:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/visa/SensoryBrandingView;->updateVisuals:Z

    sget p2, Lcom/visa/R$styleable;->SensoryBrandingView_backdropColor:I

    invoke-virtual {p0}, Lcom/visa/SensoryBrandingView;->getBackdropColor()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/visa/SensoryBrandingView;->postMessage:I

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    sget p2, Lcom/visa/R$styleable;->SensoryBrandingView_constrainedFlags:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/visa/SensoryBrandingView;->requestPostMessageChannel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    .line 1000
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/visa/SensoryBrandingView;->ICustomTabsCallback()V

    return-void
.end method

.method private ICustomTabsCallback()V
    .locals 8

    .line 11000
    sget v0, Lcom/visa/SensoryBrandingView;->mayLaunchUrl:I

    iget-object v1, p0, Lcom/visa/SensoryBrandingView;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 14000
    sget v2, Lcom/visa/SensoryBrandingView;->mayLaunchUrl:I

    int-to-double v2, v2

    const-wide v4, 0x3fb70a3d70a3d70aL    # 0.09

    mul-double v2, v2, v4

    double-to-int v2, v2

    .line 12000
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/visa/SensoryBrandingView;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/visa/SensoryBrandingView;->onPostMessage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 17000
    sget v2, Lcom/visa/SensoryBrandingView;->mayLaunchUrl:I

    int-to-double v2, v2

    mul-double v2, v2, v4

    double-to-int v2, v2

    .line 15000
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/visa/SensoryBrandingView;->onPostMessage:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/visa/SensoryBrandingView;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 20000
    sget v2, Lcom/visa/SensoryBrandingView;->mayLaunchUrl:I

    int-to-double v2, v2

    mul-double v2, v2, v4

    double-to-int v2, v2

    .line 18000
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/visa/SensoryBrandingView;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/visa/SensoryBrandingView;->asBinder:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 23000
    sget v2, Lcom/visa/SensoryBrandingView;->mayLaunchUrl:I

    int-to-double v2, v2

    mul-double v2, v2, v4

    double-to-int v2, v2

    .line 21000
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/visa/SensoryBrandingView;->asBinder:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/visa/SensoryBrandingView;->extraCallback:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 26000
    sget v2, Lcom/visa/SensoryBrandingView;->mayLaunchUrl:I

    int-to-double v2, v2

    mul-double v2, v2, v4

    double-to-int v2, v2

    .line 24000
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/visa/SensoryBrandingView;->extraCallback:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/visa/SensoryBrandingView;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 29000
    sget v0, Lcom/visa/SensoryBrandingView;->mayLaunchUrl:I

    int-to-double v2, v0

    mul-double v2, v2, v4

    double-to-int v0, v2

    .line 27000
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->onTransact:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 30000
    sget v1, Lcom/visa/SensoryBrandingView;->mayLaunchUrl:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 32000
    sget v1, Lcom/visa/SensoryBrandingView;->mayLaunchUrl:I

    int-to-double v1, v1

    const-wide v6, 0x3fd47ae147ae147bL    # 0.32

    mul-double v1, v1, v6

    double-to-int v1, v1

    .line 31000
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35000
    sget v1, Lcom/visa/SensoryBrandingView;->mayLaunchUrl:I

    int-to-double v1, v1

    mul-double v1, v1, v4

    double-to-int v1, v1

    .line 33000
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 38000
    sget v1, Lcom/visa/SensoryBrandingView;->mayLaunchUrl:I

    int-to-double v1, v1

    mul-double v1, v1, v4

    double-to-int v1, v1

    .line 36000
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/visa/SensoryBrandingView;->onTransact:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->onRelationshipValidationResult:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 40000
    sget v1, Lcom/visa/SensoryBrandingView;->mayLaunchUrl:I

    int-to-double v2, v1

    mul-double v2, v2, v6

    double-to-int v2, v2

    mul-int v1, v1, v1

    mul-int v2, v2, v2

    add-int/2addr v1, v2

    int-to-double v1, v1

    .line 39000
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 45000
    sget v1, Lcom/visa/SensoryBrandingView;->mayLaunchUrl:I

    int-to-double v2, v1

    mul-double v2, v2, v6

    double-to-int v2, v2

    mul-int v1, v1, v1

    mul-int v2, v2, v2

    add-int/2addr v1, v2

    int-to-double v1, v1

    .line 44000
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/visa/SensoryBrandingView;->onRelationshipValidationResult:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->getInterfaceDescriptor:Lo/getSSLCacheDirectory;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 49000
    sget v1, Lcom/visa/SensoryBrandingView;->mayLaunchUrl:I

    .line 48000
    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 51000
    sget v1, Lcom/visa/SensoryBrandingView;->mayLaunchUrl:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/visa/SensoryBrandingView;->getInterfaceDescriptor:Lo/getSSLCacheDirectory;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->asInterface:Lo/getSSLCacheDirectory;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 51002
    sget v1, Lcom/visa/SensoryBrandingView;->mayLaunchUrl:I

    .line 51001
    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 51004
    sget v1, Lcom/visa/SensoryBrandingView;->mayLaunchUrl:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/visa/SensoryBrandingView;->asInterface:Lo/getSSLCacheDirectory;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 51007
    sget v1, Lcom/visa/SensoryBrandingView;->mayLaunchUrl:I

    int-to-double v1, v1

    mul-double v1, v1, v6

    double-to-int v1, v1

    .line 51006
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 51011
    sget v1, Lcom/visa/SensoryBrandingView;->mayLaunchUrl:I

    int-to-double v1, v1

    mul-double v1, v1, v6

    double-to-int v1, v1

    .line 51010
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private ICustomTabsCallback$Stub()V
    .locals 2

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->warmup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/visa/SensoryBrandingView;->warmup:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/visa/SensoryBrandingView;->warmup:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private asBinder()V
    .locals 13

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->onRelationshipValidationResult:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->onRelationshipValidationResult:Landroid/view/View;

    invoke-virtual {p0}, Lcom/visa/SensoryBrandingView;->getBackdropColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 51023
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x41b00000    # 22.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 51024
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v11, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v3, 0xf5

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v0, 0x2b7

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->onRelationshipValidationResult:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private asInterface()V
    .locals 13

    .line 51025
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v4, 0x1e9

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v4, 0x2ca

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 51026
    new-instance v4, Landroid/view/animation/RotateAnimation;

    const/high16 v7, 0x42a00000    # 80.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    invoke-virtual {v4, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v5, 0x18b

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v5, 0x328

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x664

    invoke-virtual {v5, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v1, 0xf4

    invoke-virtual {v5, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private extraCallback()V
    .locals 4

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->getInterfaceDescriptor:Lo/getSSLCacheDirectory;

    invoke-virtual {p0}, Lcom/visa/SensoryBrandingView;->getBackdropColor()I

    move-result v1

    .line 51016
    iput v1, v0, Lo/getSSLCacheDirectory;->extraCallback:I

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->asInterface:Lo/getSSLCacheDirectory;

    invoke-virtual {p0}, Lcom/visa/SensoryBrandingView;->getBackdropColor()I

    move-result v1

    .line 51017
    iput v1, v0, Lo/getSSLCacheDirectory;->extraCallback:I

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/visa/SensoryBrandingView;->hasConstrainedFlags()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->extraCallback:Landroid/view/View;

    iget v1, p0, Lcom/visa/SensoryBrandingView;->postMessage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->ICustomTabsCallback:Landroid/view/View;

    iget v1, p0, Lcom/visa/SensoryBrandingView;->postMessage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->onMessageChannelReady:Landroid/view/View;

    invoke-direct {p0}, Lcom/visa/SensoryBrandingView;->onPostMessage()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->asBinder:Landroid/view/View;

    invoke-direct {p0}, Lcom/visa/SensoryBrandingView;->onMessageChannelReady()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/visa/R$color;->visa_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/visa/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/visa/R$color;->dark_blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iget v3, p0, Lcom/visa/SensoryBrandingView;->postMessage:I

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->onPostMessage:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/visa/R$drawable;->gradient_orange:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/visa/R$drawable;->gradient_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->onTransact:Landroidx/appcompat/widget/AppCompatImageView;

    sget v1, Lcom/visa/R$drawable;->visa_logo_white:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/AppCompatImageView;

    sget v1, Lcom/visa/R$drawable;->animated_check_mark_white:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_1
    if-ne v3, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/visa/R$color;->visa_gold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/visa/SensoryBrandingView;->onPostMessage:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_2
    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->onTransact:Landroidx/appcompat/widget/AppCompatImageView;

    sget v1, Lcom/visa/R$drawable;->visa_logo_dark_blue:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/AppCompatImageView;

    sget v1, Lcom/visa/R$drawable;->animated_check_mark_dark_blue:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/visa/SensoryBrandingView;->postMessage:I

    invoke-static {v0, v3}, Lo/handleException;->extraCallback(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->onPostMessage:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->onPostMessage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private extraCallback(Lcom/visa/SensoryBrandingCompletionHandler;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/visa/SensoryBrandingView;->postMessage:I

    invoke-static {v0, v1}, Lo/handleException;->ICustomTabsCallback(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Invalid background color selected, contrast levels are below 3:1 against #FFFFFF and #1A1F71"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/visa/SensoryBrandingCompletionHandler;->onComplete(Ljava/lang/Error;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visa/SensoryBrandingView;->newSession:Z

    invoke-direct {p0}, Lcom/visa/SensoryBrandingView;->extraCallback()V

    invoke-direct {p0}, Lcom/visa/SensoryBrandingView;->ICustomTabsCallback()V

    invoke-direct {p0, p1}, Lcom/visa/SensoryBrandingView;->onMessageChannelReady(Lcom/visa/SensoryBrandingCompletionHandler;)V

    invoke-direct {p0}, Lcom/visa/SensoryBrandingView;->onTransact()V

    .line 51012
    invoke-direct {p0}, Lcom/visa/SensoryBrandingView;->onNavigationEvent()V

    .line 51013
    iget-object p1, p0, Lcom/visa/SensoryBrandingView;->onNavigationEvent:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/visa/SensoryBrandingView;->onNavigationEvent(Landroid/view/View;Z)V

    .line 51014
    iget-object p1, p0, Lcom/visa/SensoryBrandingView;->onPostMessage:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/visa/SensoryBrandingView;->onNavigationEvent(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/visa/SensoryBrandingView;->asBinder()V

    invoke-virtual {p0}, Lcom/visa/SensoryBrandingView;->isCheckMarkShown()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/visa/SensoryBrandingView;->asInterface()V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 51015
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    if-eqz p1, :cond_3

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_3
    return-void

    :array_0
    .array-data 8
        0x0
        0x66
        0x30
        0x72
        0xb3
        0x54
        0x3c
        0x5a
    .end array-data
.end method

.method private onMessageChannelReady()Landroid/graphics/drawable/GradientDrawable;
    .locals 5

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0}, Lcom/visa/SensoryBrandingView;->getBackdropColor()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private onMessageChannelReady(Lcom/visa/SensoryBrandingCompletionHandler;)V
    .locals 10

    .line 51018
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f605d56

    const v3, 0x3f605d56

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v0, 0x758

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->warmup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/visa/SensoryBrandingView$3;

    invoke-direct {v0, p0, p1}, Lcom/visa/SensoryBrandingView$3;-><init>(Lcom/visa/SensoryBrandingView;Lcom/visa/SensoryBrandingCompletionHandler;)V

    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private onNavigationEvent()V
    .locals 3

    iget-boolean v0, p0, Lcom/visa/SensoryBrandingView;->requestPostMessageChannel:Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->onPostMessage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->extraCallback:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->asBinder:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->onPostMessage:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->extraCallback:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->asBinder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private onNavigationEvent(Landroid/view/View;Z)V
    .locals 18

    move-object/from16 v0, p1

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 v2, -0x2

    const/4 v2, 0x1

    const/4 v3, -0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x2

    :goto_0
    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    int-to-float v11, v2

    const/high16 v13, 0x3f800000    # 1.0f

    .line 51021
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v12, 0x1

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v5, 0x55

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    int-to-float v11, v3

    const-wide/16 v14, 0x16e

    .line 51022
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v7, v3

    move-wide v5, v14

    move/from16 v14, v16

    move/from16 v15, v17

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v3, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v5, 0x55

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0x4b

    invoke-virtual {v4, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance v1, Lcom/visa/SensoryBrandingView$5;

    invoke-direct {v1, v0}, Lcom/visa/SensoryBrandingView$5;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private onPostMessage()Landroid/graphics/drawable/GradientDrawable;
    .locals 5

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0}, Lcom/visa/SensoryBrandingView;->getBackdropColor()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method static synthetic onPostMessage(Lcom/visa/SensoryBrandingView;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visa/SensoryBrandingView;->newSession:Z

    return v0
.end method

.method private onTransact()V
    .locals 14

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->onTransact:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/visa/SensoryBrandingView;->asInterface:Lo/getSSLCacheDirectory;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Lo/getSSLCacheDirectory;->setRotation(F)V

    .line 51019
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v2, 0xce

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v4, p0, Lcom/visa/SensoryBrandingView;->getInterfaceDescriptor:Lo/getSSLCacheDirectory;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 51020
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/visa/SensoryBrandingView;->asInterface:Lo/getSSLCacheDirectory;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public animate()Landroid/view/ViewPropertyAnimator;
    .locals 2

    iget-boolean v0, p0, Lcom/visa/SensoryBrandingView;->newSession:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/visa/SensoryBrandingView;->extraCallback(Lcom/visa/SensoryBrandingCompletionHandler;)V

    :cond_0
    return-object v1
.end method

.method public animate(Lcom/visa/SensoryBrandingCompletionHandler;)V
    .locals 2

    iget-boolean v0, p0, Lcom/visa/SensoryBrandingView;->newSession:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/visa/SensoryBrandingView;->extraCallback(Lcom/visa/SensoryBrandingCompletionHandler;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Previous animation still in progress, cannot start a new animation."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/visa/SensoryBrandingCompletionHandler;->onComplete(Ljava/lang/Error;)V

    return-void
.end method

.method public getBackdropColor()I
    .locals 1

    iget v0, p0, Lcom/visa/SensoryBrandingView;->postMessage:I

    return v0
.end method

.method public hasConstrainedFlags()Z
    .locals 1

    iget-boolean v0, p0, Lcom/visa/SensoryBrandingView;->requestPostMessageChannel:Z

    return v0
.end method

.method public isCheckMarkShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/visa/SensoryBrandingView;->extraCommand:Z

    return v0
.end method

.method public isSoundEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/visa/SensoryBrandingView;->updateVisuals:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/visa/SensoryBrandingView;->warmup:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setTop(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 9000
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    iget-boolean v4, p0, Lcom/visa/SensoryBrandingView;->requestPostMessageChannel:Z

    if-eqz v4, :cond_0

    const-wide v4, 0x3fc999999999999aL    # 0.2

    goto :goto_0

    :cond_0
    const-wide v4, 0x3fd6666666666666L    # 0.35

    :goto_0
    mul-double v4, v4, v2

    double-to-int v4, v4

    const-wide v5, 0x3fd999999999999aL    # 0.4

    mul-double v2, v2, v5

    double-to-int v2, v2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-ge v0, v4, :cond_2

    :goto_1
    move v0, v4

    goto :goto_2

    :cond_2
    move v4, v0

    if-le v0, v2, :cond_3

    move v0, v2

    :cond_3
    :goto_2
    int-to-double v2, v0

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double v2, v2, v5

    double-to-int p1, v2

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq p2, v2, :cond_5

    if-eqz p2, :cond_6

    if-eq p2, v3, :cond_4

    goto :goto_3

    :cond_4
    if-lt v1, p1, :cond_6

    goto :goto_4

    :cond_5
    if-lt v1, p1, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    move v1, p1

    :goto_4
    sput v0, Lcom/visa/SensoryBrandingView;->mayLaunchUrl:I

    invoke-virtual {p0, v4, v1}, Lcom/visa/SensoryBrandingView;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    div-int/2addr p1, p2

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    return-void
.end method

.method public setBackdropColor(I)V
    .locals 2

    iput p1, p0, Lcom/visa/SensoryBrandingView;->postMessage:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/visa/SensoryBrandingView;->onRelationshipValidationResult:Landroid/view/View;

    iget v0, p0, Lcom/visa/SensoryBrandingView;->postMessage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/visa/SensoryBrandingView;->onTransact:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/visa/SensoryBrandingView;->asInterface:Lo/getSSLCacheDirectory;

    iget v1, p0, Lcom/visa/SensoryBrandingView;->postMessage:I

    .line 7000
    iput v1, p1, Lo/getSSLCacheDirectory;->extraCallback:I

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lcom/visa/SensoryBrandingView;->getInterfaceDescriptor:Lo/getSSLCacheDirectory;

    iget v1, p0, Lcom/visa/SensoryBrandingView;->postMessage:I

    .line 8000
    iput v1, p1, Lo/getSSLCacheDirectory;->extraCallback:I

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/visa/SensoryBrandingView;->hasConstrainedFlags()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/visa/SensoryBrandingView;->extraCallback:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/visa/SensoryBrandingView;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/visa/SensoryBrandingView;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/visa/SensoryBrandingView;->asBinder:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-boolean p1, p0, Lcom/visa/SensoryBrandingView;->newSession:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/visa/SensoryBrandingView;->ICustomTabsCallback$Stub()V

    :cond_1
    return-void
.end method

.method public setCheckMarkShown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/visa/SensoryBrandingView;->extraCommand:Z

    iget-boolean p1, p0, Lcom/visa/SensoryBrandingView;->newSession:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/visa/SensoryBrandingView;->ICustomTabsCallback$Stub()V

    :cond_0
    return-void
.end method

.method public setConstrainedFlags(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/visa/SensoryBrandingView;->requestPostMessageChannel:Z

    iget-boolean p1, p0, Lcom/visa/SensoryBrandingView;->newSession:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/visa/SensoryBrandingView;->ICustomTabsCallback$Stub()V

    :cond_0
    return-void
.end method

.method public setSoundEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/visa/SensoryBrandingView;->updateVisuals:Z

    return-void
.end method
