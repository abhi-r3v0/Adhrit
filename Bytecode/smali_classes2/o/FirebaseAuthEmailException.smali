.class public final Lo/FirebaseAuthEmailException;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FirebaseAuthEmailException$onMessageChannelReady;,
        Lo/FirebaseAuthEmailException$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:[Lo/onIdTokenChanged;

.field private final asBinder:[F

.field private final asInterface:[F

.field private final extraCallback:Lo/onIdTokenChanged;

.field private final onMessageChannelReady:Landroid/graphics/PointF;

.field private final onNavigationEvent:[Landroid/graphics/Matrix;

.field private final onPostMessage:[Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lo/onIdTokenChanged;

    .line 42
    iput-object v1, p0, Lo/FirebaseAuthEmailException;->ICustomTabsCallback:[Lo/onIdTokenChanged;

    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 43
    iput-object v1, p0, Lo/FirebaseAuthEmailException;->onNavigationEvent:[Landroid/graphics/Matrix;

    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 44
    iput-object v1, p0, Lo/FirebaseAuthEmailException;->onPostMessage:[Landroid/graphics/Matrix;

    .line 47
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lo/FirebaseAuthEmailException;->onMessageChannelReady:Landroid/graphics/PointF;

    .line 48
    new-instance v1, Lo/onIdTokenChanged;

    invoke-direct {v1}, Lo/onIdTokenChanged;-><init>()V

    iput-object v1, p0, Lo/FirebaseAuthEmailException;->extraCallback:Lo/onIdTokenChanged;

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 49
    iput-object v2, p0, Lo/FirebaseAuthEmailException;->asBinder:[F

    new-array v1, v1, [F

    .line 50
    iput-object v1, p0, Lo/FirebaseAuthEmailException;->asInterface:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 54
    iget-object v2, p0, Lo/FirebaseAuthEmailException;->ICustomTabsCallback:[Lo/onIdTokenChanged;

    new-instance v3, Lo/onIdTokenChanged;

    invoke-direct {v3}, Lo/onIdTokenChanged;-><init>()V

    aput-object v3, v2, v1

    .line 55
    iget-object v2, p0, Lo/FirebaseAuthEmailException;->onNavigationEvent:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    .line 56
    iget-object v2, p0, Lo/FirebaseAuthEmailException;->onPostMessage:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private extraCallback(Landroid/graphics/RectF;I)F
    .locals 4

    .line 177
    iget-object v0, p0, Lo/FirebaseAuthEmailException;->asBinder:[F

    iget-object v1, p0, Lo/FirebaseAuthEmailException;->ICustomTabsCallback:[Lo/onIdTokenChanged;

    aget-object v1, v1, p2

    iget v1, v1, Lo/onIdTokenChanged;->onPostMessage:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 178
    iget-object v0, p0, Lo/FirebaseAuthEmailException;->asBinder:[F

    iget-object v1, p0, Lo/FirebaseAuthEmailException;->ICustomTabsCallback:[Lo/onIdTokenChanged;

    aget-object v1, v1, p2

    iget v1, v1, Lo/onIdTokenChanged;->ICustomTabsCallback:F

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 179
    iget-object v0, p0, Lo/FirebaseAuthEmailException;->onNavigationEvent:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Lo/FirebaseAuthEmailException;->asBinder:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-eq p2, v3, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 187
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    iget-object p2, p0, Lo/FirebaseAuthEmailException;->asBinder:[F

    aget p2, p2, v3

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1

    .line 183
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object p2, p0, Lo/FirebaseAuthEmailException;->asBinder:[F

    aget p2, p2, v2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method

.method private static extraCallback(ILo/useAppLanguage;)Lo/getScaleX;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 5632
    iget-object p0, p1, Lo/useAppLanguage;->onNavigationEvent:Lo/getScaleX;

    return-object p0

    .line 5622
    :cond_0
    iget-object p0, p1, Lo/useAppLanguage;->onPostMessage:Lo/getScaleX;

    return-object p0

    .line 4652
    :cond_1
    iget-object p0, p1, Lo/useAppLanguage;->ICustomTabsCallback:Lo/getScaleX;

    return-object p0

    .line 4642
    :cond_2
    iget-object p0, p1, Lo/useAppLanguage;->onMessageChannelReady:Lo/getScaleX;

    return-object p0
.end method

.method private extraCallback(Lo/FirebaseAuthEmailException$onMessageChannelReady;I)V
    .locals 4

    .line 139
    iget-object v0, p0, Lo/FirebaseAuthEmailException;->asBinder:[F

    iget-object v1, p0, Lo/FirebaseAuthEmailException;->ICustomTabsCallback:[Lo/onIdTokenChanged;

    aget-object v1, v1, p2

    .line 2266
    iget v1, v1, Lo/onIdTokenChanged;->onMessageChannelReady:F

    const/4 v2, 0x0

    .line 139
    aput v1, v0, v2

    .line 140
    iget-object v0, p0, Lo/FirebaseAuthEmailException;->asBinder:[F

    iget-object v1, p0, Lo/FirebaseAuthEmailException;->ICustomTabsCallback:[Lo/onIdTokenChanged;

    aget-object v1, v1, p2

    .line 2270
    iget v1, v1, Lo/onIdTokenChanged;->extraCallback:F

    const/4 v3, 0x1

    .line 140
    aput v1, v0, v3

    .line 141
    iget-object v0, p0, Lo/FirebaseAuthEmailException;->onNavigationEvent:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Lo/FirebaseAuthEmailException;->asBinder:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-nez p2, :cond_0

    .line 143
    iget-object v0, p1, Lo/FirebaseAuthEmailException$onMessageChannelReady;->onMessageChannelReady:Landroid/graphics/Path;

    iget-object v1, p0, Lo/FirebaseAuthEmailException;->asBinder:[F

    aget v2, v1, v2

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p1, Lo/FirebaseAuthEmailException$onMessageChannelReady;->onMessageChannelReady:Landroid/graphics/Path;

    iget-object v1, p0, Lo/FirebaseAuthEmailException;->asBinder:[F

    aget v2, v1, v2

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 147
    :goto_0
    iget-object v0, p0, Lo/FirebaseAuthEmailException;->ICustomTabsCallback:[Lo/onIdTokenChanged;

    aget-object v0, v0, p2

    iget-object v1, p0, Lo/FirebaseAuthEmailException;->onNavigationEvent:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p1, Lo/FirebaseAuthEmailException$onMessageChannelReady;->onMessageChannelReady:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lo/onIdTokenChanged;->extraCallback(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 148
    iget-object v0, p1, Lo/FirebaseAuthEmailException$onMessageChannelReady;->onNavigationEvent:Lo/FirebaseAuthEmailException$ICustomTabsCallback;

    if-eqz v0, :cond_1

    .line 149
    iget-object p1, p1, Lo/FirebaseAuthEmailException$onMessageChannelReady;->onNavigationEvent:Lo/FirebaseAuthEmailException$ICustomTabsCallback;

    iget-object v0, p0, Lo/FirebaseAuthEmailException;->ICustomTabsCallback:[Lo/onIdTokenChanged;

    aget-object v0, v0, p2

    iget-object v1, p0, Lo/FirebaseAuthEmailException;->onNavigationEvent:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-interface {p1, v0, v1, p2}, Lo/FirebaseAuthEmailException$ICustomTabsCallback;->ICustomTabsCallback(Lo/onIdTokenChanged;Landroid/graphics/Matrix;I)V

    :cond_1
    return-void
.end method

.method private static onMessageChannelReady(ILo/useAppLanguage;)Lo/getTenantId;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 7722
    iget-object p0, p1, Lo/useAppLanguage;->warmup:Lo/getTenantId;

    return-object p0

    .line 7712
    :cond_0
    iget-object p0, p1, Lo/useAppLanguage;->onTransact:Lo/getTenantId;

    return-object p0

    .line 7702
    :cond_1
    iget-object p0, p1, Lo/useAppLanguage;->newSession:Lo/getTenantId;

    return-object p0

    .line 6732
    :cond_2
    iget-object p0, p1, Lo/useAppLanguage;->getInterfaceDescriptor:Lo/getTenantId;

    return-object p0
.end method

.method private static onNavigationEvent(ILo/useAppLanguage;)Lo/signOut;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 6672
    iget-object p0, p1, Lo/useAppLanguage;->asBinder:Lo/signOut;

    return-object p0

    .line 6662
    :cond_0
    iget-object p0, p1, Lo/useAppLanguage;->asInterface:Lo/signOut;

    return-object p0

    .line 5692
    :cond_1
    iget-object p0, p1, Lo/useAppLanguage;->onRelationshipValidationResult:Lo/signOut;

    return-object p0

    .line 5682
    :cond_2
    iget-object p0, p1, Lo/useAppLanguage;->ICustomTabsCallback$Stub:Lo/signOut;

    return-object p0
.end method

.method private onNavigationEvent(I)V
    .locals 5

    .line 129
    iget-object v0, p0, Lo/FirebaseAuthEmailException;->asBinder:[F

    iget-object v1, p0, Lo/FirebaseAuthEmailException;->ICustomTabsCallback:[Lo/onIdTokenChanged;

    aget-object v1, v1, p1

    .line 1274
    iget v1, v1, Lo/onIdTokenChanged;->onPostMessage:F

    const/4 v2, 0x0

    .line 129
    aput v1, v0, v2

    .line 130
    iget-object v0, p0, Lo/FirebaseAuthEmailException;->asBinder:[F

    iget-object v1, p0, Lo/FirebaseAuthEmailException;->ICustomTabsCallback:[Lo/onIdTokenChanged;

    aget-object v1, v1, p1

    .line 1278
    iget v1, v1, Lo/onIdTokenChanged;->ICustomTabsCallback:F

    const/4 v3, 0x1

    .line 130
    aput v1, v0, v3

    .line 131
    iget-object v0, p0, Lo/FirebaseAuthEmailException;->onNavigationEvent:[Landroid/graphics/Matrix;

    aget-object v0, v0, p1

    iget-object v1, p0, Lo/FirebaseAuthEmailException;->asBinder:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    add-int/lit8 v0, p1, 0x1

    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    .line 133
    iget-object v1, p0, Lo/FirebaseAuthEmailException;->onPostMessage:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 134
    iget-object v1, p0, Lo/FirebaseAuthEmailException;->onPostMessage:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    iget-object v4, p0, Lo/FirebaseAuthEmailException;->asBinder:[F

    aget v2, v4, v2

    aget v3, v4, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 135
    iget-object v1, p0, Lo/FirebaseAuthEmailException;->onPostMessage:[Landroid/graphics/Matrix;

    aget-object p1, v1, p1

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-void
.end method

.method private onNavigationEvent(Lo/FirebaseAuthEmailException$onMessageChannelReady;I)V
    .locals 7

    add-int/lit8 v0, p2, 0x1

    .line 154
    rem-int/lit8 v0, v0, 0x4

    .line 155
    iget-object v1, p0, Lo/FirebaseAuthEmailException;->asBinder:[F

    iget-object v2, p0, Lo/FirebaseAuthEmailException;->ICustomTabsCallback:[Lo/onIdTokenChanged;

    aget-object v2, v2, p2

    .line 2274
    iget v2, v2, Lo/onIdTokenChanged;->onPostMessage:F

    const/4 v3, 0x0

    .line 155
    aput v2, v1, v3

    .line 156
    iget-object v1, p0, Lo/FirebaseAuthEmailException;->asBinder:[F

    iget-object v2, p0, Lo/FirebaseAuthEmailException;->ICustomTabsCallback:[Lo/onIdTokenChanged;

    aget-object v2, v2, p2

    .line 2278
    iget v2, v2, Lo/onIdTokenChanged;->ICustomTabsCallback:F

    const/4 v4, 0x1

    .line 156
    aput v2, v1, v4

    .line 157
    iget-object v1, p0, Lo/FirebaseAuthEmailException;->onNavigationEvent:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p0, Lo/FirebaseAuthEmailException;->asBinder:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 159
    iget-object v1, p0, Lo/FirebaseAuthEmailException;->asInterface:[F

    iget-object v2, p0, Lo/FirebaseAuthEmailException;->ICustomTabsCallback:[Lo/onIdTokenChanged;

    aget-object v2, v2, v0

    .line 3266
    iget v2, v2, Lo/onIdTokenChanged;->onMessageChannelReady:F

    .line 159
    aput v2, v1, v3

    .line 160
    iget-object v1, p0, Lo/FirebaseAuthEmailException;->asInterface:[F

    iget-object v2, p0, Lo/FirebaseAuthEmailException;->ICustomTabsCallback:[Lo/onIdTokenChanged;

    aget-object v2, v2, v0

    .line 3270
    iget v2, v2, Lo/onIdTokenChanged;->extraCallback:F

    .line 160
    aput v2, v1, v4

    .line 161
    iget-object v1, p0, Lo/FirebaseAuthEmailException;->onNavigationEvent:[Landroid/graphics/Matrix;

    aget-object v0, v1, v0

    iget-object v1, p0, Lo/FirebaseAuthEmailException;->asInterface:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 163
    iget-object v0, p0, Lo/FirebaseAuthEmailException;->asBinder:[F

    aget v1, v0, v3

    iget-object v2, p0, Lo/FirebaseAuthEmailException;->asInterface:[F

    aget v3, v2, v3

    sub-float/2addr v1, v3

    float-to-double v5, v1

    aget v0, v0, v4

    aget v1, v2, v4

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3a83126f    # 0.001f

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    .line 165
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 166
    iget-object v2, p1, Lo/FirebaseAuthEmailException$onMessageChannelReady;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-direct {p0, v2, p2}, Lo/FirebaseAuthEmailException;->extraCallback(Landroid/graphics/RectF;I)F

    move-result v2

    .line 167
    iget-object v3, p0, Lo/FirebaseAuthEmailException;->extraCallback:Lo/onIdTokenChanged;

    const/high16 v4, 0x43870000    # 270.0f

    .line 4104
    invoke-virtual {v3, v1, v1, v4, v1}, Lo/onIdTokenChanged;->onMessageChannelReady(FFFF)V

    .line 168
    iget-object v1, p1, Lo/FirebaseAuthEmailException$onMessageChannelReady;->onPostMessage:Lo/useAppLanguage;

    invoke-static {p2, v1}, Lo/FirebaseAuthEmailException;->onMessageChannelReady(ILo/useAppLanguage;)Lo/getTenantId;

    move-result-object v1

    iget v3, p1, Lo/FirebaseAuthEmailException$onMessageChannelReady;->extraCallback:F

    iget-object v4, p0, Lo/FirebaseAuthEmailException;->extraCallback:Lo/onIdTokenChanged;

    .line 169
    invoke-virtual {v1, v0, v2, v3, v4}, Lo/getTenantId;->ICustomTabsCallback(FFFLo/onIdTokenChanged;)V

    .line 170
    iget-object v0, p0, Lo/FirebaseAuthEmailException;->extraCallback:Lo/onIdTokenChanged;

    iget-object v1, p0, Lo/FirebaseAuthEmailException;->onPostMessage:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p1, Lo/FirebaseAuthEmailException$onMessageChannelReady;->onMessageChannelReady:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lo/onIdTokenChanged;->extraCallback(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 171
    iget-object v0, p1, Lo/FirebaseAuthEmailException$onMessageChannelReady;->onNavigationEvent:Lo/FirebaseAuthEmailException$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 172
    iget-object p1, p1, Lo/FirebaseAuthEmailException$onMessageChannelReady;->onNavigationEvent:Lo/FirebaseAuthEmailException$ICustomTabsCallback;

    iget-object v0, p0, Lo/FirebaseAuthEmailException;->extraCallback:Lo/onIdTokenChanged;

    iget-object v1, p0, Lo/FirebaseAuthEmailException;->onPostMessage:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-interface {p1, v0, v1, p2}, Lo/FirebaseAuthEmailException$ICustomTabsCallback;->extraCallback(Lo/onIdTokenChanged;Landroid/graphics/Matrix;I)V

    :cond_0
    return-void
.end method

.method private static onPostMessage(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 249
    iget p0, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void

    .line 245
    :cond_0
    iget p0, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void

    .line 242
    :cond_1
    iget p0, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void

    .line 239
    :cond_2
    iget p0, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private onPostMessage(Lo/FirebaseAuthEmailException$onMessageChannelReady;I)V
    .locals 5

    .line 117
    iget-object v0, p1, Lo/FirebaseAuthEmailException$onMessageChannelReady;->onPostMessage:Lo/useAppLanguage;

    invoke-static {p2, v0}, Lo/FirebaseAuthEmailException;->onNavigationEvent(ILo/useAppLanguage;)Lo/signOut;

    move-result-object v0

    .line 118
    iget-object v1, p1, Lo/FirebaseAuthEmailException$onMessageChannelReady;->onPostMessage:Lo/useAppLanguage;

    invoke-static {p2, v1}, Lo/FirebaseAuthEmailException;->extraCallback(ILo/useAppLanguage;)Lo/getScaleX;

    move-result-object v1

    iget-object v2, p0, Lo/FirebaseAuthEmailException;->ICustomTabsCallback:[Lo/onIdTokenChanged;

    aget-object v2, v2, p2

    iget v3, p1, Lo/FirebaseAuthEmailException$onMessageChannelReady;->extraCallback:F

    iget-object v4, p1, Lo/FirebaseAuthEmailException$onMessageChannelReady;->ICustomTabsCallback:Landroid/graphics/RectF;

    .line 1098
    invoke-interface {v0, v4}, Lo/signOut;->onMessageChannelReady(Landroid/graphics/RectF;)F

    move-result v0

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2, v4, v3, v0}, Lo/getScaleX;->onNavigationEvent(Lo/onIdTokenChanged;FFF)V

    add-int/lit8 v0, p2, 0x1

    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    .line 122
    iget-object v1, p0, Lo/FirebaseAuthEmailException;->onNavigationEvent:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 123
    iget-object p1, p1, Lo/FirebaseAuthEmailException$onMessageChannelReady;->ICustomTabsCallback:Landroid/graphics/RectF;

    iget-object v1, p0, Lo/FirebaseAuthEmailException;->onMessageChannelReady:Landroid/graphics/PointF;

    invoke-static {p2, p1, v1}, Lo/FirebaseAuthEmailException;->onPostMessage(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 124
    iget-object p1, p0, Lo/FirebaseAuthEmailException;->onNavigationEvent:[Landroid/graphics/Matrix;

    aget-object p1, p1, p2

    iget-object v1, p0, Lo/FirebaseAuthEmailException;->onMessageChannelReady:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lo/FirebaseAuthEmailException;->onMessageChannelReady:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 125
    iget-object p1, p0, Lo/FirebaseAuthEmailException;->onNavigationEvent:[Landroid/graphics/Matrix;

    aget-object p1, p1, p2

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/useAppLanguage;FLandroid/graphics/RectF;Lo/FirebaseAuthEmailException$ICustomTabsCallback;Landroid/graphics/Path;)V
    .locals 7

    .line 92
    invoke-virtual {p5}, Landroid/graphics/Path;->rewind()V

    .line 93
    new-instance v6, Lo/FirebaseAuthEmailException$onMessageChannelReady;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lo/FirebaseAuthEmailException$onMessageChannelReady;-><init>(Lo/useAppLanguage;FLandroid/graphics/RectF;Lo/FirebaseAuthEmailException$ICustomTabsCallback;Landroid/graphics/Path;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x4

    if-ge p2, p3, :cond_0

    .line 100
    invoke-direct {p0, v6, p2}, Lo/FirebaseAuthEmailException;->onPostMessage(Lo/FirebaseAuthEmailException$onMessageChannelReady;I)V

    .line 101
    invoke-direct {p0, p2}, Lo/FirebaseAuthEmailException;->onNavigationEvent(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, p3, :cond_1

    .line 109
    invoke-direct {p0, v6, p1}, Lo/FirebaseAuthEmailException;->extraCallback(Lo/FirebaseAuthEmailException$onMessageChannelReady;I)V

    .line 110
    invoke-direct {p0, v6, p1}, Lo/FirebaseAuthEmailException;->onNavigationEvent(Lo/FirebaseAuthEmailException$onMessageChannelReady;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {p5}, Landroid/graphics/Path;->close()V

    return-void
.end method
