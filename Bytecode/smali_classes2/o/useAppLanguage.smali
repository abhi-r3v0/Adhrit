.class public Lo/useAppLanguage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/useAppLanguage$extraCallback;,
        Lo/useAppLanguage$ICustomTabsCallback;
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/signOut;


# instance fields
.field public ICustomTabsCallback:Lo/getScaleX;

.field ICustomTabsCallback$Stub:Lo/signOut;

.field asBinder:Lo/signOut;

.field public asInterface:Lo/signOut;

.field getInterfaceDescriptor:Lo/getTenantId;

.field newSession:Lo/getTenantId;

.field public onMessageChannelReady:Lo/getScaleX;

.field public onNavigationEvent:Lo/getScaleX;

.field public onPostMessage:Lo/getScaleX;

.field onRelationshipValidationResult:Lo/signOut;

.field public onTransact:Lo/getTenantId;

.field warmup:Lo/getTenantId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 565
    new-instance v0, Lo/onAuthStateChanged;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lo/onAuthStateChanged;-><init>(F)V

    sput-object v0, Lo/useAppLanguage;->extraCallback:Lo/signOut;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18043
    new-instance v0, Lo/getFirebaseAuthSettings;

    invoke-direct {v0}, Lo/getFirebaseAuthSettings;-><init>()V

    .line 599
    iput-object v0, p0, Lo/useAppLanguage;->onPostMessage:Lo/getScaleX;

    .line 19043
    new-instance v0, Lo/getFirebaseAuthSettings;

    invoke-direct {v0}, Lo/getFirebaseAuthSettings;-><init>()V

    .line 600
    iput-object v0, p0, Lo/useAppLanguage;->onNavigationEvent:Lo/getScaleX;

    .line 20043
    new-instance v0, Lo/getFirebaseAuthSettings;

    invoke-direct {v0}, Lo/getFirebaseAuthSettings;-><init>()V

    .line 601
    iput-object v0, p0, Lo/useAppLanguage;->onMessageChannelReady:Lo/getScaleX;

    .line 21043
    new-instance v0, Lo/getFirebaseAuthSettings;

    invoke-direct {v0}, Lo/getFirebaseAuthSettings;-><init>()V

    .line 602
    iput-object v0, p0, Lo/useAppLanguage;->ICustomTabsCallback:Lo/getScaleX;

    .line 604
    new-instance v0, Lo/startActivityForSignInWithProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v0, p0, Lo/useAppLanguage;->asInterface:Lo/signOut;

    .line 605
    new-instance v0, Lo/startActivityForSignInWithProvider;

    invoke-direct {v0, v1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v0, p0, Lo/useAppLanguage;->asBinder:Lo/signOut;

    .line 606
    new-instance v0, Lo/startActivityForSignInWithProvider;

    invoke-direct {v0, v1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v0, p0, Lo/useAppLanguage;->ICustomTabsCallback$Stub:Lo/signOut;

    .line 607
    new-instance v0, Lo/startActivityForSignInWithProvider;

    invoke-direct {v0, v1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v0, p0, Lo/useAppLanguage;->onRelationshipValidationResult:Lo/signOut;

    .line 21048
    new-instance v0, Lo/getTenantId;

    invoke-direct {v0}, Lo/getTenantId;-><init>()V

    .line 609
    iput-object v0, p0, Lo/useAppLanguage;->onTransact:Lo/getTenantId;

    .line 22048
    new-instance v0, Lo/getTenantId;

    invoke-direct {v0}, Lo/getTenantId;-><init>()V

    .line 610
    iput-object v0, p0, Lo/useAppLanguage;->warmup:Lo/getTenantId;

    .line 23048
    new-instance v0, Lo/getTenantId;

    invoke-direct {v0}, Lo/getTenantId;-><init>()V

    .line 611
    iput-object v0, p0, Lo/useAppLanguage;->getInterfaceDescriptor:Lo/getTenantId;

    .line 24048
    new-instance v0, Lo/getTenantId;

    invoke-direct {v0}, Lo/getTenantId;-><init>()V

    .line 612
    iput-object v0, p0, Lo/useAppLanguage;->newSession:Lo/getTenantId;

    return-void
.end method

.method private constructor <init>(Lo/useAppLanguage$ICustomTabsCallback;)V
    .locals 1

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6044
    iget-object v0, p1, Lo/useAppLanguage$ICustomTabsCallback;->extraCallback:Lo/getScaleX;

    .line 581
    iput-object v0, p0, Lo/useAppLanguage;->onPostMessage:Lo/getScaleX;

    .line 7044
    iget-object v0, p1, Lo/useAppLanguage$ICustomTabsCallback;->onMessageChannelReady:Lo/getScaleX;

    .line 582
    iput-object v0, p0, Lo/useAppLanguage;->onNavigationEvent:Lo/getScaleX;

    .line 8044
    iget-object v0, p1, Lo/useAppLanguage$ICustomTabsCallback;->ICustomTabsCallback:Lo/getScaleX;

    .line 583
    iput-object v0, p0, Lo/useAppLanguage;->onMessageChannelReady:Lo/getScaleX;

    .line 9044
    iget-object v0, p1, Lo/useAppLanguage$ICustomTabsCallback;->onNavigationEvent:Lo/getScaleX;

    .line 584
    iput-object v0, p0, Lo/useAppLanguage;->ICustomTabsCallback:Lo/getScaleX;

    .line 10044
    iget-object v0, p1, Lo/useAppLanguage$ICustomTabsCallback;->onPostMessage:Lo/signOut;

    .line 586
    iput-object v0, p0, Lo/useAppLanguage;->asInterface:Lo/signOut;

    .line 11044
    iget-object v0, p1, Lo/useAppLanguage$ICustomTabsCallback;->onTransact:Lo/signOut;

    .line 587
    iput-object v0, p0, Lo/useAppLanguage;->asBinder:Lo/signOut;

    .line 12044
    iget-object v0, p1, Lo/useAppLanguage$ICustomTabsCallback;->onRelationshipValidationResult:Lo/signOut;

    .line 588
    iput-object v0, p0, Lo/useAppLanguage;->ICustomTabsCallback$Stub:Lo/signOut;

    .line 13044
    iget-object v0, p1, Lo/useAppLanguage$ICustomTabsCallback;->asBinder:Lo/signOut;

    .line 589
    iput-object v0, p0, Lo/useAppLanguage;->onRelationshipValidationResult:Lo/signOut;

    .line 14044
    iget-object v0, p1, Lo/useAppLanguage$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/getTenantId;

    .line 591
    iput-object v0, p0, Lo/useAppLanguage;->onTransact:Lo/getTenantId;

    .line 15044
    iget-object v0, p1, Lo/useAppLanguage$ICustomTabsCallback;->asInterface:Lo/getTenantId;

    .line 592
    iput-object v0, p0, Lo/useAppLanguage;->warmup:Lo/getTenantId;

    .line 16044
    iget-object v0, p1, Lo/useAppLanguage$ICustomTabsCallback;->ICustomTabsService:Lo/getTenantId;

    .line 593
    iput-object v0, p0, Lo/useAppLanguage;->getInterfaceDescriptor:Lo/getTenantId;

    .line 17044
    iget-object p1, p1, Lo/useAppLanguage$ICustomTabsCallback;->getInterfaceDescriptor:Lo/getTenantId;

    .line 594
    iput-object p1, p0, Lo/useAppLanguage;->newSession:Lo/getTenantId;

    return-void
.end method

.method public synthetic constructor <init>(Lo/useAppLanguage$ICustomTabsCallback;B)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lo/useAppLanguage;-><init>(Lo/useAppLanguage$ICustomTabsCallback;)V

    return-void
.end method

.method public static extraCallback(Landroid/content/Context;Landroid/util/AttributeSet;IILo/signOut;)Lo/useAppLanguage$ICustomTabsCallback;
    .locals 1

    .line 465
    sget-object v0, Lo/toStringMap$newSession;->MaterialShape:[I

    .line 466
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 468
    sget p2, Lo/toStringMap$newSession;->MaterialShape_shapeAppearance:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 469
    sget v0, Lo/toStringMap$newSession;->MaterialShape_shapeAppearanceOverlay:I

    .line 470
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 471
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 472
    invoke-static {p0, p2, p3, p4}, Lo/useAppLanguage;->onPostMessage(Landroid/content/Context;IILo/signOut;)Lo/useAppLanguage$ICustomTabsCallback;

    move-result-object p0

    return-object p0
.end method

.method private static onNavigationEvent(Landroid/content/res/TypedArray;ILo/signOut;)Lo/signOut;
    .locals 2

    .line 547
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 552
    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 555
    new-instance p2, Lo/startActivityForSignInWithProvider;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 556
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    return-object p2

    .line 557
    :cond_1
    iget p0, p1, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    .line 558
    new-instance p0, Lo/onAuthStateChanged;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lo/onAuthStateChanged;-><init>(F)V

    return-object p0

    :cond_2
    return-object p2
.end method

.method public static onPostMessage(Landroid/content/Context;IILo/signOut;)Lo/useAppLanguage$ICustomTabsCallback;
    .locals 8

    if-eqz p2, :cond_0

    .line 504
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move p1, p2

    move-object p0, v0

    .line 508
    :cond_0
    sget-object p2, Lo/toStringMap$newSession;->ShapeAppearance:[I

    .line 509
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 512
    :try_start_0
    sget p1, Lo/toStringMap$newSession;->ShapeAppearance_cornerFamily:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 513
    sget p2, Lo/toStringMap$newSession;->ShapeAppearance_cornerFamilyTopLeft:I

    .line 514
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 515
    sget v0, Lo/toStringMap$newSession;->ShapeAppearance_cornerFamilyTopRight:I

    .line 516
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 517
    sget v1, Lo/toStringMap$newSession;->ShapeAppearance_cornerFamilyBottomRight:I

    .line 518
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 519
    sget v2, Lo/toStringMap$newSession;->ShapeAppearance_cornerFamilyBottomLeft:I

    .line 520
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 522
    sget v2, Lo/toStringMap$newSession;->ShapeAppearance_cornerSize:I

    .line 523
    invoke-static {p0, v2, p3}, Lo/useAppLanguage;->onNavigationEvent(Landroid/content/res/TypedArray;ILo/signOut;)Lo/signOut;

    move-result-object p3

    .line 525
    sget v2, Lo/toStringMap$newSession;->ShapeAppearance_cornerSizeTopLeft:I

    .line 526
    invoke-static {p0, v2, p3}, Lo/useAppLanguage;->onNavigationEvent(Landroid/content/res/TypedArray;ILo/signOut;)Lo/signOut;

    move-result-object v2

    .line 527
    sget v3, Lo/toStringMap$newSession;->ShapeAppearance_cornerSizeTopRight:I

    .line 528
    invoke-static {p0, v3, p3}, Lo/useAppLanguage;->onNavigationEvent(Landroid/content/res/TypedArray;ILo/signOut;)Lo/signOut;

    move-result-object v3

    .line 529
    sget v4, Lo/toStringMap$newSession;->ShapeAppearance_cornerSizeBottomRight:I

    .line 530
    invoke-static {p0, v4, p3}, Lo/useAppLanguage;->onNavigationEvent(Landroid/content/res/TypedArray;ILo/signOut;)Lo/signOut;

    move-result-object v4

    .line 531
    sget v5, Lo/toStringMap$newSession;->ShapeAppearance_cornerSizeBottomLeft:I

    .line 532
    invoke-static {p0, v5, p3}, Lo/useAppLanguage;->onNavigationEvent(Landroid/content/res/TypedArray;ILo/signOut;)Lo/signOut;

    move-result-object p3

    .line 534
    new-instance v5, Lo/useAppLanguage$ICustomTabsCallback;

    invoke-direct {v5}, Lo/useAppLanguage$ICustomTabsCallback;-><init>()V

    .line 1214
    invoke-static {p2}, Lo/extraCallback;->onNavigationEvent(I)Lo/getScaleX;

    move-result-object p2

    .line 1225
    iput-object p2, v5, Lo/useAppLanguage$ICustomTabsCallback;->extraCallback:Lo/getScaleX;

    .line 1227
    invoke-static {p2}, Lo/useAppLanguage$ICustomTabsCallback;->onPostMessage(Lo/getScaleX;)F

    move-result p2

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v7, p2, v6

    if-eqz v7, :cond_1

    .line 2140
    new-instance v7, Lo/startActivityForSignInWithProvider;

    invoke-direct {v7, p2}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v7, v5, Lo/useAppLanguage$ICustomTabsCallback;->onPostMessage:Lo/signOut;

    .line 2147
    :cond_1
    iput-object v2, v5, Lo/useAppLanguage$ICustomTabsCallback;->onPostMessage:Lo/signOut;

    .line 2255
    invoke-static {v0}, Lo/extraCallback;->onNavigationEvent(I)Lo/getScaleX;

    move-result-object p2

    .line 2266
    iput-object p2, v5, Lo/useAppLanguage$ICustomTabsCallback;->onMessageChannelReady:Lo/getScaleX;

    .line 2268
    invoke-static {p2}, Lo/useAppLanguage$ICustomTabsCallback;->onPostMessage(Lo/getScaleX;)F

    move-result p2

    cmpl-float v0, p2, v6

    if-eqz v0, :cond_2

    .line 3154
    new-instance v0, Lo/startActivityForSignInWithProvider;

    invoke-direct {v0, p2}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v0, v5, Lo/useAppLanguage$ICustomTabsCallback;->onTransact:Lo/signOut;

    .line 3161
    :cond_2
    iput-object v3, v5, Lo/useAppLanguage$ICustomTabsCallback;->onTransact:Lo/signOut;

    .line 3297
    invoke-static {v1}, Lo/extraCallback;->onNavigationEvent(I)Lo/getScaleX;

    move-result-object p2

    .line 3308
    iput-object p2, v5, Lo/useAppLanguage$ICustomTabsCallback;->ICustomTabsCallback:Lo/getScaleX;

    .line 3310
    invoke-static {p2}, Lo/useAppLanguage$ICustomTabsCallback;->onPostMessage(Lo/getScaleX;)F

    move-result p2

    cmpl-float v0, p2, v6

    if-eqz v0, :cond_3

    .line 4168
    new-instance v0, Lo/startActivityForSignInWithProvider;

    invoke-direct {v0, p2}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object v0, v5, Lo/useAppLanguage$ICustomTabsCallback;->onRelationshipValidationResult:Lo/signOut;

    .line 4175
    :cond_3
    iput-object v4, v5, Lo/useAppLanguage$ICustomTabsCallback;->onRelationshipValidationResult:Lo/signOut;

    .line 4339
    invoke-static {p1}, Lo/extraCallback;->onNavigationEvent(I)Lo/getScaleX;

    move-result-object p1

    .line 4350
    iput-object p1, v5, Lo/useAppLanguage$ICustomTabsCallback;->onNavigationEvent:Lo/getScaleX;

    .line 4352
    invoke-static {p1}, Lo/useAppLanguage$ICustomTabsCallback;->onPostMessage(Lo/getScaleX;)F

    move-result p1

    cmpl-float p2, p1, v6

    if-eqz p2, :cond_4

    .line 5182
    new-instance p2, Lo/startActivityForSignInWithProvider;

    invoke-direct {p2, p1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    iput-object p2, v5, Lo/useAppLanguage$ICustomTabsCallback;->asBinder:Lo/signOut;

    .line 5189
    :cond_4
    iput-object p3, v5, Lo/useAppLanguage$ICustomTabsCallback;->asBinder:Lo/signOut;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 541
    throw p1
.end method


# virtual methods
.method public final onNavigationEvent(Landroid/graphics/RectF;)Z
    .locals 5

    .line 791
    iget-object v0, p0, Lo/useAppLanguage;->newSession:Lo/getTenantId;

    .line 792
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lo/getTenantId;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/useAppLanguage;->warmup:Lo/getTenantId;

    .line 793
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lo/getTenantId;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/useAppLanguage;->onTransact:Lo/getTenantId;

    .line 794
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lo/getTenantId;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/useAppLanguage;->getInterfaceDescriptor:Lo/getTenantId;

    .line 795
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lo/getTenantId;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 797
    :goto_0
    iget-object v3, p0, Lo/useAppLanguage;->asInterface:Lo/signOut;

    invoke-interface {v3, p1}, Lo/signOut;->onMessageChannelReady(Landroid/graphics/RectF;)F

    move-result v3

    .line 799
    iget-object v4, p0, Lo/useAppLanguage;->asBinder:Lo/signOut;

    .line 800
    invoke-interface {v4, p1}, Lo/signOut;->onMessageChannelReady(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lo/useAppLanguage;->onRelationshipValidationResult:Lo/signOut;

    .line 801
    invoke-interface {v4, p1}, Lo/signOut;->onMessageChannelReady(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lo/useAppLanguage;->ICustomTabsCallback$Stub:Lo/signOut;

    .line 802
    invoke-interface {v4, p1}, Lo/signOut;->onMessageChannelReady(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v3

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 804
    :goto_1
    iget-object v3, p0, Lo/useAppLanguage;->onNavigationEvent:Lo/getScaleX;

    instance-of v3, v3, Lo/getFirebaseAuthSettings;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lo/useAppLanguage;->onPostMessage:Lo/getScaleX;

    instance-of v3, v3, Lo/getFirebaseAuthSettings;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lo/useAppLanguage;->onMessageChannelReady:Lo/getScaleX;

    instance-of v3, v3, Lo/getFirebaseAuthSettings;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lo/useAppLanguage;->ICustomTabsCallback:Lo/getScaleX;

    instance-of v3, v3, Lo/getFirebaseAuthSettings;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    return v2
.end method
