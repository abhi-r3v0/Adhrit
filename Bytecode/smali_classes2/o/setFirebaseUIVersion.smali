.class public Lo/setFirebaseUIVersion;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Lo/getMediaMetadata;
.implements Lo/FirebaseAuthException;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setFirebaseUIVersion$extraCallback;
    }
.end annotation


# static fields
.field private static final extraCallback:Landroid/graphics/Paint;


# instance fields
.field final AudioAttributesCompatParcelizer:[Lo/onIdTokenChanged$asBinder;

.field private final ICustomTabsCallback:Landroid/graphics/Path;

.field private final ICustomTabsCallback$Stub:Landroid/graphics/Region;

.field private final ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

.field private final ICustomTabsService:Lo/FirebaseAuthEmailException;

.field final IconCompatParcelizer:[Lo/onIdTokenChanged$asBinder;

.field public RemoteActionCompatParcelizer:Z

.field private final asBinder:Landroid/graphics/RectF;

.field private final asInterface:Landroid/graphics/Paint;

.field private extraCommand:Landroid/graphics/Rect;

.field public getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

.field private final getInterfaceDescriptor:Lo/applyActionCode;

.field private newSession:Landroid/graphics/PorterDuffColorFilter;

.field private final onMessageChannelReady:Landroid/graphics/Matrix;

.field private final onNavigationEvent:Landroid/graphics/Path;

.field private final onPostMessage:Landroid/graphics/RectF;

.field private onRelationshipValidationResult:Lo/useAppLanguage;

.field private final onTransact:Landroid/graphics/Region;

.field private postMessage:Landroid/graphics/PorterDuffColorFilter;

.field private final requestPostMessageChannel:Landroid/graphics/RectF;

.field private final warmup:Lo/FirebaseAuthEmailException$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lo/setFirebaseUIVersion;->extraCallback:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 167
    new-instance v0, Lo/useAppLanguage;

    invoke-direct {v0}, Lo/useAppLanguage;-><init>()V

    invoke-direct {p0, v0}, Lo/setFirebaseUIVersion;-><init>(Lo/useAppLanguage;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 4454
    new-instance v0, Lo/startActivityForSignInWithProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/startActivityForSignInWithProvider;-><init>(F)V

    invoke-static {p1, p2, p3, p4, v0}, Lo/useAppLanguage;->extraCallback(Landroid/content/Context;Landroid/util/AttributeSet;IILo/signOut;)Lo/useAppLanguage$ICustomTabsCallback;

    move-result-object p1

    .line 5429
    new-instance p2, Lo/useAppLanguage;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lo/useAppLanguage;-><init>(Lo/useAppLanguage$ICustomTabsCallback;B)V

    .line 175
    invoke-direct {p0, p2}, Lo/setFirebaseUIVersion;-><init>(Lo/useAppLanguage;)V

    return-void
.end method

.method private constructor <init>(Lo/setFirebaseUIVersion$extraCallback;)V
    .locals 2

    .line 191
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lo/onIdTokenChanged$asBinder;

    .line 108
    iput-object v1, p0, Lo/setFirebaseUIVersion;->IconCompatParcelizer:[Lo/onIdTokenChanged$asBinder;

    new-array v0, v0, [Lo/onIdTokenChanged$asBinder;

    .line 109
    iput-object v0, p0, Lo/setFirebaseUIVersion;->AudioAttributesCompatParcelizer:[Lo/onIdTokenChanged$asBinder;

    .line 113
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/setFirebaseUIVersion;->onMessageChannelReady:Landroid/graphics/Matrix;

    .line 114
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback:Landroid/graphics/Path;

    .line 115
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/setFirebaseUIVersion;->onNavigationEvent:Landroid/graphics/Path;

    .line 116
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/setFirebaseUIVersion;->onPostMessage:Landroid/graphics/RectF;

    .line 117
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/setFirebaseUIVersion;->asBinder:Landroid/graphics/RectF;

    .line 118
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback$Stub:Landroid/graphics/Region;

    .line 119
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lo/setFirebaseUIVersion;->onTransact:Landroid/graphics/Region;

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lo/setFirebaseUIVersion;->asInterface:Landroid/graphics/Paint;

    .line 123
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    .line 125
    new-instance v0, Lo/applyActionCode;

    invoke-direct {v0}, Lo/applyActionCode;-><init>()V

    iput-object v0, p0, Lo/setFirebaseUIVersion;->getInterfaceDescriptor:Lo/applyActionCode;

    .line 127
    new-instance v0, Lo/FirebaseAuthEmailException;

    invoke-direct {v0}, Lo/FirebaseAuthEmailException;-><init>()V

    iput-object v0, p0, Lo/setFirebaseUIVersion;->ICustomTabsService:Lo/FirebaseAuthEmailException;

    .line 133
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/setFirebaseUIVersion;->requestPostMessageChannel:Landroid/graphics/RectF;

    .line 192
    iput-object p1, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    .line 193
    iget-object p1, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 194
    iget-object p1, p0, Lo/setFirebaseUIVersion;->asInterface:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 195
    sget-object p1, Lo/setFirebaseUIVersion;->extraCallback:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    sget-object p1, Lo/setFirebaseUIVersion;->extraCallback:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 197
    invoke-direct {p0}, Lo/setFirebaseUIVersion;->newSession()Z

    .line 198
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lo/setFirebaseUIVersion;->extraCallback([I)Z

    .line 200
    new-instance p1, Lo/setFirebaseUIVersion$3;

    invoke-direct {p1, p0}, Lo/setFirebaseUIVersion$3;-><init>(Lo/setFirebaseUIVersion;)V

    iput-object p1, p0, Lo/setFirebaseUIVersion;->warmup:Lo/FirebaseAuthEmailException$ICustomTabsCallback;

    return-void
.end method

.method synthetic constructor <init>(Lo/setFirebaseUIVersion$extraCallback;B)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lo/setFirebaseUIVersion;-><init>(Lo/setFirebaseUIVersion$extraCallback;)V

    return-void
.end method

.method public constructor <init>(Lo/useAppLanguage;)V
    .locals 1

    .line 188
    new-instance v0, Lo/setFirebaseUIVersion$extraCallback;

    invoke-direct {v0, p1}, Lo/setFirebaseUIVersion$extraCallback;-><init>(Lo/useAppLanguage;)V

    invoke-direct {p0, v0}, Lo/setFirebaseUIVersion;-><init>(Lo/setFirebaseUIVersion$extraCallback;)V

    return-void
.end method

.method private ICustomTabsCallback(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1049
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v0, v0, Lo/setFirebaseUIVersion$extraCallback;->extraCommand:I

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback:Landroid/graphics/Path;

    iget-object v1, p0, Lo/setFirebaseUIVersion;->getInterfaceDescriptor:Lo/applyActionCode;

    .line 34180
    iget-object v1, v1, Lo/applyActionCode;->ICustomTabsCallback:Landroid/graphics/Paint;

    .line 1050
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 1055
    iget-object v1, p0, Lo/setFirebaseUIVersion;->IconCompatParcelizer:[Lo/onIdTokenChanged$asBinder;

    aget-object v1, v1, v0

    iget-object v2, p0, Lo/setFirebaseUIVersion;->getInterfaceDescriptor:Lo/applyActionCode;

    iget-object v3, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v3, v3, Lo/setFirebaseUIVersion$extraCallback;->mayLaunchUrl:I

    .line 34323
    sget-object v4, Lo/onIdTokenChanged$asBinder;->ICustomTabsCallback:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4, v2, v3, p1}, Lo/onIdTokenChanged$asBinder;->ICustomTabsCallback(Landroid/graphics/Matrix;Lo/applyActionCode;ILandroid/graphics/Canvas;)V

    .line 1056
    iget-object v1, p0, Lo/setFirebaseUIVersion;->AudioAttributesCompatParcelizer:[Lo/onIdTokenChanged$asBinder;

    aget-object v1, v1, v0

    iget-object v2, p0, Lo/setFirebaseUIVersion;->getInterfaceDescriptor:Lo/applyActionCode;

    iget-object v3, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v3, v3, Lo/setFirebaseUIVersion$extraCallback;->mayLaunchUrl:I

    .line 35323
    sget-object v4, Lo/onIdTokenChanged$asBinder;->ICustomTabsCallback:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4, v2, v3, p1}, Lo/onIdTokenChanged$asBinder;->ICustomTabsCallback(Landroid/graphics/Matrix;Lo/applyActionCode;ILandroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36069
    :cond_1
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v0, v0, Lo/setFirebaseUIVersion$extraCallback;->extraCommand:I

    int-to-double v0, v0

    iget-object v2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v2, v2, Lo/setFirebaseUIVersion$extraCallback;->postMessage:I

    int-to-double v2, v2

    .line 36071
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 36076
    iget-object v1, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v1, v1, Lo/setFirebaseUIVersion$extraCallback;->extraCommand:I

    int-to-double v1, v1

    iget-object v3, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v3, v3, Lo/setFirebaseUIVersion$extraCallback;->postMessage:I

    int-to-double v3, v3

    .line 36078
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    double-to-int v1, v1

    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    .line 1062
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1063
    iget-object v2, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback:Landroid/graphics/Path;

    sget-object v3, Lo/setFirebaseUIVersion;->extraCallback:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float v0, v0

    int-to-float v1, v1

    .line 1064
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private static ICustomTabsCallback(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lo/useAppLanguage;Landroid/graphics/RectF;)V
    .locals 1

    .line 1002
    invoke-virtual {p3, p4}, Lo/useAppLanguage;->onNavigationEvent(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33672
    iget-object p2, p3, Lo/useAppLanguage;->asBinder:Lo/signOut;

    .line 1003
    invoke-interface {p2, p4}, Lo/signOut;->onMessageChannelReady(Landroid/graphics/RectF;)F

    move-result p2

    .line 1004
    invoke-virtual {p0, p4, p2, p2, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    .line 1006
    :cond_0
    invoke-virtual {p0, p2, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private ICustomTabsService()Landroid/graphics/RectF;
    .locals 6

    .line 1276
    invoke-virtual {p0}, Lo/setFirebaseUIVersion;->extraCallback()Landroid/graphics/RectF;

    move-result-object v0

    .line 40268
    invoke-direct {p0}, Lo/setFirebaseUIVersion;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40269
    iget-object v1, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1278
    :goto_0
    iget-object v2, p0, Lo/setFirebaseUIVersion;->asBinder:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v1

    iget v5, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1280
    iget-object v0, p0, Lo/setFirebaseUIVersion;->asBinder:Landroid/graphics/RectF;

    return-object v0
.end method

.method private extraCallback(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p2, :cond_0

    .line 1201
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    .line 1202
    invoke-direct {p0, p1}, Lo/setFirebaseUIVersion;->onMessageChannelReady(I)I

    move-result p2

    if-eq p2, p1, :cond_0

    .line 1204
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static extraCallback(Landroid/content/Context;F)Lo/setFirebaseUIVersion;
    .locals 4

    .line 156
    sget v0, Lo/toStringMap$extraCallback;->colorSurface:I

    const-class v1, Lo/setFirebaseUIVersion;

    .line 158
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 2065
    invoke-static {p0, v0, v1}, Lo/sendSignInLinkToEmail;->ICustomTabsCallback(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 159
    new-instance v1, Lo/setFirebaseUIVersion;

    invoke-direct {v1}, Lo/setFirebaseUIVersion;-><init>()V

    .line 2585
    iget-object v2, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    new-instance v3, Lo/getUsername;

    invoke-direct {v3, p0}, Lo/getUsername;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lo/setFirebaseUIVersion$extraCallback;->onPostMessage:Lo/getUsername;

    .line 2586
    invoke-virtual {v1}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    .line 161
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 3288
    iget-object v0, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    if-eq v0, p0, :cond_0

    .line 3289
    iget-object v0, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object p0, v0, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 3290
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    invoke-virtual {v1, p0}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    .line 3651
    :cond_0
    iget-object p0, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget p0, p0, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_1

    .line 3652
    iget-object p0, v1, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput p1, p0, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    .line 3653
    invoke-virtual {v1}, Lo/setFirebaseUIVersion;->onMessageChannelReady()V

    :cond_1
    return-object v1
.end method

.method private extraCallback(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    .line 38094
    iget-object v0, p0, Lo/setFirebaseUIVersion;->ICustomTabsService:Lo/FirebaseAuthEmailException;

    iget-object v1, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v1, v1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    iget-object v2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v2, v2, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    iget-object v4, p0, Lo/setFirebaseUIVersion;->warmup:Lo/FirebaseAuthEmailException$ICustomTabsCallback;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lo/FirebaseAuthEmailException;->onPostMessage(Lo/useAppLanguage;FLandroid/graphics/RectF;Lo/FirebaseAuthEmailException$ICustomTabsCallback;Landroid/graphics/Path;)V

    .line 1152
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v0, v0, Lo/setFirebaseUIVersion$extraCallback;->onTransact:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lo/setFirebaseUIVersion;->onMessageChannelReady:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1154
    iget-object v0, p0, Lo/setFirebaseUIVersion;->onMessageChannelReady:Landroid/graphics/Matrix;

    iget-object v1, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v1, v1, Lo/setFirebaseUIVersion$extraCallback;->onTransact:F

    iget-object v2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v2, v2, Lo/setFirebaseUIVersion$extraCallback;->onTransact:F

    .line 1155
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v4

    .line 1154
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1156
    iget-object p1, p0, Lo/setFirebaseUIVersion;->onMessageChannelReady:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1160
    :cond_0
    iget-object p1, p0, Lo/setFirebaseUIVersion;->requestPostMessageChannel:Landroid/graphics/RectF;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method private extraCallback([I)Z
    .locals 4

    .line 1245
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lo/setFirebaseUIVersion;->asInterface:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 1247
    iget-object v2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v2, v2, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1249
    iget-object v0, p0, Lo/setFirebaseUIVersion;->asInterface:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1254
    :goto_0
    iget-object v2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v2, v2, Lo/setFirebaseUIVersion$extraCallback;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 1255
    iget-object v2, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 1256
    iget-object v3, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v3, v3, Lo/setFirebaseUIVersion$extraCallback;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    .line 1257
    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v2, p1, :cond_1

    .line 1259
    iget-object v0, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method private newSession()Z
    .locals 7

    .line 1164
    iget-object v0, p0, Lo/setFirebaseUIVersion;->newSession:Landroid/graphics/PorterDuffColorFilter;

    .line 1165
    iget-object v1, p0, Lo/setFirebaseUIVersion;->postMessage:Landroid/graphics/PorterDuffColorFilter;

    .line 1166
    iget-object v2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v2, v2, Lo/setFirebaseUIVersion$extraCallback;->asBinder:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v3, v3, Lo/setFirebaseUIVersion$extraCallback;->onRelationshipValidationResult:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lo/setFirebaseUIVersion;->asInterface:Landroid/graphics/Paint;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 38215
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 38217
    invoke-direct {p0, v2}, Lo/setFirebaseUIVersion;->onMessageChannelReady(I)I

    move-result v2

    .line 38219
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v4, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 38193
    :cond_1
    :goto_0
    invoke-direct {p0, v4, v5}, Lo/setFirebaseUIVersion;->extraCallback(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    .line 1167
    :goto_1
    iput-object v4, p0, Lo/setFirebaseUIVersion;->newSession:Landroid/graphics/PorterDuffColorFilter;

    .line 1172
    iget-object v2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v2, v2, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v3, v3, Lo/setFirebaseUIVersion$extraCallback;->onRelationshipValidationResult:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    if-eqz v2, :cond_3

    if-nez v3, :cond_2

    goto :goto_2

    .line 39215
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 39219
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v4, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    .line 39193
    :cond_3
    :goto_2
    invoke-direct {p0, v4, v6}, Lo/setFirebaseUIVersion;->extraCallback(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    .line 1173
    :goto_3
    iput-object v4, p0, Lo/setFirebaseUIVersion;->postMessage:Landroid/graphics/PorterDuffColorFilter;

    .line 1178
    iget-object v2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-boolean v2, v2, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsService$Stub$Proxy:Z

    if-eqz v2, :cond_4

    .line 1179
    iget-object v2, p0, Lo/setFirebaseUIVersion;->getInterfaceDescriptor:Lo/applyActionCode;

    iget-object v3, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v3, v3, Lo/setFirebaseUIVersion$extraCallback;->asBinder:Landroid/content/res/ColorStateList;

    .line 1180
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    const/16 v4, 0x44

    .line 40086
    invoke-static {v3, v4}, Lo/getString;->extraCallback(II)I

    move-result v4

    iput v4, v2, Lo/applyActionCode;->extraCallback:I

    const/16 v4, 0x14

    .line 40087
    invoke-static {v3, v4}, Lo/getString;->extraCallback(II)I

    move-result v4

    iput v4, v2, Lo/applyActionCode;->onNavigationEvent:I

    .line 40088
    invoke-static {v3, v6}, Lo/getString;->extraCallback(II)I

    move-result v3

    iput v3, v2, Lo/applyActionCode;->asInterface:I

    .line 1182
    :cond_4
    iget-object v2, p0, Lo/setFirebaseUIVersion;->newSession:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0, v2}, Lo/isThumbUp;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/setFirebaseUIVersion;->postMessage:Landroid/graphics/PorterDuffColorFilter;

    .line 1183
    invoke-static {v1, v0}, Lo/isThumbUp;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    return v6

    :cond_6
    :goto_4
    return v5
.end method

.method private onMessageChannelReady(I)I
    .locals 6

    .line 12642
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v0, v0, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    .line 12663
    iget-object v1, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v1, v1, Lo/setFirebaseUIVersion$extraCallback;->updateVisuals:F

    add-float/2addr v0, v1

    .line 13625
    iget-object v1, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v1, v1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsService:F

    add-float/2addr v0, v1

    .line 592
    iget-object v1, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v1, v1, Lo/setFirebaseUIVersion$extraCallback;->onPostMessage:Lo/getUsername;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v1, v1, Lo/setFirebaseUIVersion$extraCallback;->onPostMessage:Lo/getUsername;

    .line 14094
    iget-boolean v2, v1, Lo/getUsername;->ICustomTabsCallback:Z

    if-eqz v2, :cond_3

    const/16 v2, 0xff

    .line 14173
    invoke-static {p1, v2}, Lo/getString;->extraCallback(II)I

    move-result v3

    iget v4, v1, Lo/getUsername;->onPostMessage:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 15138
    iget v3, v1, Lo/getUsername;->extraCallback:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_2

    cmpg-float v3, v0, v4

    if-gtz v3, :cond_1

    goto :goto_1

    .line 15141
    :cond_1
    iget v3, v1, Lo/getUsername;->extraCallback:F

    div-float/2addr v0, v3

    const/high16 v3, 0x40900000    # 4.5f

    float-to-double v4, v0

    .line 15143
    invoke-static {v4, v5}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float v0, v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 15144
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 15118
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 15119
    invoke-static {p1, v2}, Lo/getString;->extraCallback(II)I

    move-result p1

    .line 15120
    iget v1, v1, Lo/getUsername;->onMessageChannelReady:I

    .line 16129
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 16130
    invoke-static {v1, v2}, Lo/getString;->extraCallback(II)I

    move-result v1

    .line 16140
    invoke-static {v1, p1}, Lo/getString;->onMessageChannelReady(II)I

    move-result p1

    .line 15122
    invoke-static {p1, v0}, Lo/getString;->extraCallback(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method private onPostMessage()Z
    .locals 2

    .line 903
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->IPostMessageService:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->IPostMessageService:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    .line 905
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    .line 864
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getInterfaceDescriptor:Lo/applyActionCode;

    const v1, -0xbbbbbc

    const/16 v2, 0x44

    .line 18086
    invoke-static {v1, v2}, Lo/getString;->extraCallback(II)I

    move-result v2

    iput v2, v0, Lo/applyActionCode;->extraCallback:I

    const/16 v2, 0x14

    .line 18087
    invoke-static {v1, v2}, Lo/getString;->extraCallback(II)I

    move-result v2

    iput v2, v0, Lo/applyActionCode;->onNavigationEvent:I

    const/4 v2, 0x0

    .line 18088
    invoke-static {v1, v2}, Lo/getString;->extraCallback(II)I

    move-result v1

    iput v1, v0, Lo/applyActionCode;->asInterface:I

    .line 865
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-boolean v2, v0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsService$Stub$Proxy:Z

    .line 18837
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final ICustomTabsCallback(FLandroid/content/res/ColorStateList;)V
    .locals 1

    .line 8420
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput p1, v0, Lo/setFirebaseUIVersion$extraCallback;->newSession:F

    .line 8421
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9310
    iget-object p1, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object p1, p1, Lo/setFirebaseUIVersion$extraCallback;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    if-eq p1, p2, :cond_0

    .line 9311
    iget-object p1, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object p2, p1, Lo/setFirebaseUIVersion$extraCallback;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    .line 9312
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(II)V
    .locals 2

    .line 509
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->asInterface:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lo/setFirebaseUIVersion$extraCallback;->asInterface:Landroid/graphics/Rect;

    .line 513
    :cond_0
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->asInterface:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 514
    iget-object p1, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object p1, p1, Lo/setFirebaseUIVersion$extraCallback;->asInterface:Landroid/graphics/Rect;

    iput-object p1, p0, Lo/setFirebaseUIVersion;->extraCommand:Landroid/graphics/Rect;

    .line 515
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final ICustomTabsCallback(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V
    .locals 1

    .line 992
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    invoke-static {p1, p2, p3, v0, p4}, Lo/setFirebaseUIVersion;->ICustomTabsCallback(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lo/useAppLanguage;Landroid/graphics/RectF;)V

    return-void
.end method

.method protected final ICustomTabsCallback(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    .line 1094
    iget-object v0, p0, Lo/setFirebaseUIVersion;->ICustomTabsService:Lo/FirebaseAuthEmailException;

    iget-object v1, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v1, v1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    iget-object v2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v2, v2, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    iget-object v4, p0, Lo/setFirebaseUIVersion;->warmup:Lo/FirebaseAuthEmailException$ICustomTabsCallback;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lo/FirebaseAuthEmailException;->onPostMessage(Lo/useAppLanguage;FLandroid/graphics/RectF;Lo/FirebaseAuthEmailException$ICustomTabsCallback;Landroid/graphics/Path;)V

    return-void
.end method

.method public final ICustomTabsCallback$Stub()Z
    .locals 2

    .line 1323
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    invoke-virtual {p0}, Lo/setFirebaseUIVersion;->extraCallback()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/useAppLanguage;->onNavigationEvent(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public final asBinder()F
    .locals 2

    .line 1293
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 40672
    iget-object v0, v0, Lo/useAppLanguage;->asBinder:Lo/signOut;

    .line 1296
    invoke-virtual {p0}, Lo/setFirebaseUIVersion;->extraCallback()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/signOut;->onMessageChannelReady(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public final asInterface()F
    .locals 2

    .line 1301
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 40692
    iget-object v0, v0, Lo/useAppLanguage;->onRelationshipValidationResult:Lo/signOut;

    .line 1304
    invoke-virtual {p0}, Lo/setFirebaseUIVersion;->extraCallback()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/signOut;->onMessageChannelReady(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 916
    iget-object v0, p0, Lo/setFirebaseUIVersion;->asInterface:Landroid/graphics/Paint;

    iget-object v1, p0, Lo/setFirebaseUIVersion;->newSession:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 917
    iget-object v0, p0, Lo/setFirebaseUIVersion;->asInterface:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 918
    iget-object v1, p0, Lo/setFirebaseUIVersion;->asInterface:Landroid/graphics/Paint;

    iget-object v2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v2, v2, Lo/setFirebaseUIVersion$extraCallback;->warmup:I

    ushr-int/lit8 v3, v2, 0x7

    add-int/2addr v2, v3

    mul-int v2, v2, v0

    ushr-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 920
    iget-object v1, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    iget-object v2, p0, Lo/setFirebaseUIVersion;->postMessage:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 921
    iget-object v1, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    iget-object v2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v2, v2, Lo/setFirebaseUIVersion$extraCallback;->newSession:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 923
    iget-object v1, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 924
    iget-object v2, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    iget-object v3, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v3, v3, Lo/setFirebaseUIVersion$extraCallback;->warmup:I

    ushr-int/lit8 v4, v3, 0x7

    add-int/2addr v3, v4

    mul-int v3, v3, v1

    ushr-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 926
    iget-boolean v2, p0, Lo/setFirebaseUIVersion;->RemoteActionCompatParcelizer:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 21268
    invoke-direct {p0}, Lo/setFirebaseUIVersion;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21269
    iget-object v2, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    neg-float v2, v2

    .line 22255
    iget-object v4, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v4, v4, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 21108
    new-instance v5, Lo/setFirebaseUIVersion$5;

    invoke-direct {v5, v2}, Lo/setFirebaseUIVersion$5;-><init>(F)V

    .line 23738
    new-instance v2, Lo/useAppLanguage$ICustomTabsCallback;

    invoke-direct {v2, v4}, Lo/useAppLanguage$ICustomTabsCallback;-><init>(Lo/useAppLanguage;)V

    .line 24662
    iget-object v6, v4, Lo/useAppLanguage;->asInterface:Lo/signOut;

    .line 22776
    invoke-interface {v5, v6}, Lo/useAppLanguage$extraCallback;->onMessageChannelReady(Lo/signOut;)Lo/signOut;

    move-result-object v6

    .line 25147
    iput-object v6, v2, Lo/useAppLanguage$ICustomTabsCallback;->onPostMessage:Lo/signOut;

    .line 25672
    iget-object v6, v4, Lo/useAppLanguage;->asBinder:Lo/signOut;

    .line 22777
    invoke-interface {v5, v6}, Lo/useAppLanguage$extraCallback;->onMessageChannelReady(Lo/signOut;)Lo/signOut;

    move-result-object v6

    .line 26161
    iput-object v6, v2, Lo/useAppLanguage$ICustomTabsCallback;->onTransact:Lo/signOut;

    .line 26692
    iget-object v6, v4, Lo/useAppLanguage;->onRelationshipValidationResult:Lo/signOut;

    .line 22778
    invoke-interface {v5, v6}, Lo/useAppLanguage$extraCallback;->onMessageChannelReady(Lo/signOut;)Lo/signOut;

    move-result-object v6

    .line 27189
    iput-object v6, v2, Lo/useAppLanguage$ICustomTabsCallback;->asBinder:Lo/signOut;

    .line 27682
    iget-object v4, v4, Lo/useAppLanguage;->ICustomTabsCallback$Stub:Lo/signOut;

    .line 22779
    invoke-interface {v5, v4}, Lo/useAppLanguage$extraCallback;->onMessageChannelReady(Lo/signOut;)Lo/signOut;

    move-result-object v4

    .line 28175
    iput-object v4, v2, Lo/useAppLanguage$ICustomTabsCallback;->onRelationshipValidationResult:Lo/signOut;

    .line 28429
    new-instance v6, Lo/useAppLanguage;

    invoke-direct {v6, v2, v3}, Lo/useAppLanguage;-><init>(Lo/useAppLanguage$ICustomTabsCallback;B)V

    .line 21109
    iput-object v6, p0, Lo/setFirebaseUIVersion;->onRelationshipValidationResult:Lo/useAppLanguage;

    .line 21122
    iget-object v5, p0, Lo/setFirebaseUIVersion;->ICustomTabsService:Lo/FirebaseAuthEmailException;

    iget-object v2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v7, v2, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    .line 21125
    invoke-direct {p0}, Lo/setFirebaseUIVersion;->ICustomTabsService()Landroid/graphics/RectF;

    move-result-object v8

    iget-object v10, p0, Lo/setFirebaseUIVersion;->onNavigationEvent:Landroid/graphics/Path;

    const/4 v9, 0x0

    .line 29073
    invoke-virtual/range {v5 .. v10}, Lo/FirebaseAuthEmailException;->onPostMessage(Lo/useAppLanguage;FLandroid/graphics/RectF;Lo/FirebaseAuthEmailException$ICustomTabsCallback;Landroid/graphics/Path;)V

    .line 928
    invoke-virtual {p0}, Lo/setFirebaseUIVersion;->extraCallback()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v4, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback:Landroid/graphics/Path;

    invoke-direct {p0, v2, v4}, Lo/setFirebaseUIVersion;->extraCallback(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 929
    iput-boolean v3, p0, Lo/setFirebaseUIVersion;->RemoteActionCompatParcelizer:Z

    .line 29890
    :cond_1
    iget-object v2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v2, v2, Lo/setFirebaseUIVersion$extraCallback;->requestPostMessageChannel:I

    const/16 v4, 0x15

    const/4 v5, 0x1

    if-eq v2, v5, :cond_5

    iget-object v2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v2, v2, Lo/setFirebaseUIVersion$extraCallback;->mayLaunchUrl:I

    if-lez v2, :cond_5

    iget-object v2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v2, v2, Lo/setFirebaseUIVersion$extraCallback;->requestPostMessageChannel:I

    const/4 v6, 0x2

    if-eq v2, v6, :cond_4

    .line 30802
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_3

    .line 31323
    iget-object v2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v2, v2, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    invoke-virtual {p0}, Lo/setFirebaseUIVersion;->extraCallback()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v2, v6}, Lo/useAppLanguage;->onNavigationEvent(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 30802
    iget-object v2, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isConvex()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_7

    .line 934
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 32069
    iget-object v2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v2, v2, Lo/setFirebaseUIVersion$extraCallback;->extraCommand:I

    int-to-double v6, v2

    iget-object v2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v2, v2, Lo/setFirebaseUIVersion$extraCallback;->postMessage:I

    int-to-double v8, v2

    .line 32071
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    double-to-int v2, v6

    .line 32076
    iget-object v6, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v6, v6, Lo/setFirebaseUIVersion$extraCallback;->extraCommand:I

    int-to-double v6, v6

    iget-object v8, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v8, v8, Lo/setFirebaseUIVersion$extraCallback;->postMessage:I

    int-to-double v8, v8

    .line 32078
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    double-to-int v6, v6

    .line 32027
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v4, :cond_6

    .line 32030
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 32031
    iget-object v7, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v7, v7, Lo/setFirebaseUIVersion$extraCallback;->mayLaunchUrl:I

    neg-int v7, v7

    iget-object v8, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v8, v8, Lo/setFirebaseUIVersion$extraCallback;->mayLaunchUrl:I

    neg-int v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Rect;->inset(II)V

    .line 32032
    invoke-virtual {v4, v2, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 32033
    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_6
    int-to-float v2, v2

    int-to-float v4, v6

    .line 32038
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 940
    iget-object v2, p0, Lo/setFirebaseUIVersion;->requestPostMessageChannel:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 941
    iget-object v4, p0, Lo/setFirebaseUIVersion;->requestPostMessageChannel:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    float-to-int v4, v4

    .line 945
    iget-object v6, p0, Lo/setFirebaseUIVersion;->requestPostMessageChannel:Landroid/graphics/RectF;

    .line 947
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v7, v7, Lo/setFirebaseUIVersion$extraCallback;->mayLaunchUrl:I

    shl-int/2addr v7, v5

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    iget-object v7, p0, Lo/setFirebaseUIVersion;->requestPostMessageChannel:Landroid/graphics/RectF;

    .line 948
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v8, v8, Lo/setFirebaseUIVersion$extraCallback;->mayLaunchUrl:I

    shl-int/2addr v8, v5

    add-int/2addr v7, v8

    add-int/2addr v7, v4

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 946
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 950
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 954
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v9, v9, Lo/setFirebaseUIVersion$extraCallback;->mayLaunchUrl:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v2

    int-to-float v2, v8

    .line 955
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v9, v9, Lo/setFirebaseUIVersion$extraCallback;->mayLaunchUrl:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v4

    int-to-float v4, v8

    neg-float v8, v2

    neg-float v9, v4

    .line 956
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 958
    invoke-direct {p0, v7}, Lo/setFirebaseUIVersion;->ICustomTabsCallback(Landroid/graphics/Canvas;)V

    const/4 v7, 0x0

    .line 960
    invoke-virtual {p1, v6, v2, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 964
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 967
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 32897
    :cond_7
    iget-object v2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v2, v2, Lo/setFirebaseUIVersion$extraCallback;->IPostMessageService:Landroid/graphics/Paint$Style;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v2, v4, :cond_8

    iget-object v2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v2, v2, Lo/setFirebaseUIVersion$extraCallback;->IPostMessageService:Landroid/graphics/Paint$Style;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v2, v4, :cond_9

    :cond_8
    const/4 v3, 0x1

    :cond_9
    if-eqz v3, :cond_a

    .line 33011
    iget-object v2, p0, Lo/setFirebaseUIVersion;->asInterface:Landroid/graphics/Paint;

    iget-object v3, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback:Landroid/graphics/Path;

    iget-object v4, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v4, v4, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    invoke-virtual {p0}, Lo/setFirebaseUIVersion;->extraCallback()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {p1, v2, v3, v4, v5}, Lo/setFirebaseUIVersion;->ICustomTabsCallback(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lo/useAppLanguage;Landroid/graphics/RectF;)V

    .line 973
    :cond_a
    invoke-direct {p0}, Lo/setFirebaseUIVersion;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 33015
    iget-object v2, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    iget-object v3, p0, Lo/setFirebaseUIVersion;->onNavigationEvent:Landroid/graphics/Path;

    iget-object v4, p0, Lo/setFirebaseUIVersion;->onRelationshipValidationResult:Lo/useAppLanguage;

    .line 33016
    invoke-direct {p0}, Lo/setFirebaseUIVersion;->ICustomTabsService()Landroid/graphics/RectF;

    move-result-object v5

    .line 33015
    invoke-static {p1, v2, v3, v4, v5}, Lo/setFirebaseUIVersion;->ICustomTabsCallback(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lo/useAppLanguage;Landroid/graphics/RectF;)V

    .line 977
    :cond_b
    iget-object p1, p0, Lo/setFirebaseUIVersion;->asInterface:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 978
    iget-object p1, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method protected final extraCallback()Landroid/graphics/RectF;
    .locals 5

    .line 457
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lo/setFirebaseUIVersion;->onPostMessage:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 459
    iget-object v0, p0, Lo/setFirebaseUIVersion;->onPostMessage:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 218
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2

    .line 1132
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v0, v0, Lo/setFirebaseUIVersion$extraCallback;->requestPostMessageChannel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 36323
    :cond_0
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    invoke-virtual {p0}, Lo/setFirebaseUIVersion;->extraCallback()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/useAppLanguage;->onNavigationEvent(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37285
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 37662
    iget-object v0, v0, Lo/useAppLanguage;->asInterface:Lo/signOut;

    .line 37288
    invoke-virtual {p0}, Lo/setFirebaseUIVersion;->extraCallback()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/signOut;->onMessageChannelReady(Landroid/graphics/RectF;)F

    move-result v0

    .line 1139
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    .line 1143
    :cond_1
    invoke-virtual {p0}, Lo/setFirebaseUIVersion;->extraCallback()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lo/setFirebaseUIVersion;->extraCallback(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 1144
    iget-object v0, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1145
    iget-object v0, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    :cond_2
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 492
    iget-object v0, p0, Lo/setFirebaseUIVersion;->extraCommand:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    .line 496
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    .line 447
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback$Stub:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 449
    invoke-virtual {p0}, Lo/setFirebaseUIVersion;->extraCallback()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lo/setFirebaseUIVersion;->extraCallback(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 450
    iget-object v0, p0, Lo/setFirebaseUIVersion;->onTransact:Landroid/graphics/Region;

    iget-object v1, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback:Landroid/graphics/Path;

    iget-object v2, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback$Stub:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 451
    iget-object v0, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback$Stub:Landroid/graphics/Region;

    iget-object v1, p0, Lo/setFirebaseUIVersion;->onTransact:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 452
    iget-object v0, p0, Lo/setFirebaseUIVersion;->ICustomTabsCallback$Stub:Landroid/graphics/Region;

    return-object v0
.end method

.method public invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    .line 828
    iput-boolean v0, p0, Lo/setFirebaseUIVersion;->RemoteActionCompatParcelizer:Z

    .line 829
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1224
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->asBinder:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->asBinder:Landroid/content/res/ColorStateList;

    .line 1225
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub:Landroid/content/res/ColorStateList;

    .line 1226
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    .line 1227
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 1228
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 224
    new-instance v0, Lo/setFirebaseUIVersion$extraCallback;

    iget-object v1, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    invoke-direct {v0, v1}, Lo/setFirebaseUIVersion$extraCallback;-><init>(Lo/setFirebaseUIVersion$extraCallback;)V

    .line 225
    iput-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    .line 910
    iput-boolean v0, p0, Lo/setFirebaseUIVersion;->RemoteActionCompatParcelizer:Z

    .line 911
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 4

    .line 17642
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v0, v0, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    .line 17663
    iget-object v1, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v1, v1, Lo/setFirebaseUIVersion$extraCallback;->updateVisuals:F

    add-float/2addr v0, v1

    .line 698
    iget-object v1, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v2, v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lo/setFirebaseUIVersion$extraCallback;->mayLaunchUrl:I

    .line 699
    iget-object v1, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v0, v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lo/setFirebaseUIVersion$extraCallback;->extraCommand:I

    .line 701
    invoke-direct {p0}, Lo/setFirebaseUIVersion;->newSession()Z

    .line 17837
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 0

    .line 837
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final onNavigationEvent(FI)V
    .locals 1

    .line 7420
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput p1, v0, Lo/setFirebaseUIVersion$extraCallback;->newSession:F

    .line 7421
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 391
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 8310
    iget-object p2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object p2, p2, Lo/setFirebaseUIVersion$extraCallback;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    if-eq p2, p1, :cond_0

    .line 8311
    iget-object p2, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object p1, p2, Lo/setFirebaseUIVersion$extraCallback;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    .line 8312
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setFirebaseUIVersion;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final onRelationshipValidationResult()F
    .locals 2

    .line 1285
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 40662
    iget-object v0, v0, Lo/useAppLanguage;->asInterface:Lo/signOut;

    .line 1288
    invoke-virtual {p0}, Lo/setFirebaseUIVersion;->extraCallback()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/signOut;->onMessageChannelReady(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 1233
    invoke-direct {p0, p1}, Lo/setFirebaseUIVersion;->extraCallback([I)Z

    move-result p1

    .line 1234
    invoke-direct {p0}, Lo/setFirebaseUIVersion;->newSession()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 1237
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    return p1
.end method

.method public final onTransact()F
    .locals 2

    .line 1309
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 41682
    iget-object v0, v0, Lo/useAppLanguage;->ICustomTabsCallback$Stub:Lo/signOut;

    .line 1312
    invoke-virtual {p0}, Lo/setFirebaseUIVersion;->extraCallback()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/signOut;->onMessageChannelReady(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 433
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v0, v0, Lo/setFirebaseUIVersion$extraCallback;->warmup:I

    if-eq v0, p1, :cond_0

    .line 434
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput p1, v0, Lo/setFirebaseUIVersion$extraCallback;->warmup:I

    .line 9837
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 441
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object p1, v0, Lo/setFirebaseUIVersion$extraCallback;->extraCallback:Landroid/graphics/ColorFilter;

    .line 10837
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setShapeAppearanceModel(Lo/useAppLanguage;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object p1, v0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 243
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .locals 0

    .line 360
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setFirebaseUIVersion;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 337
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object p1, v0, Lo/setFirebaseUIVersion$extraCallback;->asBinder:Landroid/content/res/ColorStateList;

    .line 338
    invoke-direct {p0}, Lo/setFirebaseUIVersion;->newSession()Z

    .line 6837
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget-object v0, v0, Lo/setFirebaseUIVersion$extraCallback;->onRelationshipValidationResult:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 329
    iget-object v0, p0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iput-object p1, v0, Lo/setFirebaseUIVersion$extraCallback;->onRelationshipValidationResult:Landroid/graphics/PorterDuff$Mode;

    .line 330
    invoke-direct {p0}, Lo/setFirebaseUIVersion;->newSession()Z

    .line 5837
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
