.class final Lo/getMaxUserPropertiesInAnalytics;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final onPostMessage:Z


# instance fields
.field ICustomTabsCallback:Lo/useAppLanguage;

.field ICustomTabsCallback$Stub:I

.field ICustomTabsCallback$Stub$Proxy:Landroid/content/res/ColorStateList;

.field ICustomTabsService:Landroid/content/res/ColorStateList;

.field asBinder:I

.field asInterface:I

.field extraCallback:I

.field extraCommand:Z

.field getInterfaceDescriptor:Z

.field newSession:Landroid/content/res/ColorStateList;

.field final onMessageChannelReady:Lo/throwAbtExceptionIfAnalyticsIsNull;

.field onNavigationEvent:I

.field onRelationshipValidationResult:I

.field onTransact:Landroid/graphics/PorterDuff$Mode;

.field postMessage:Landroid/graphics/drawable/LayerDrawable;

.field updateVisuals:Z

.field warmup:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lo/getMaxUserPropertiesInAnalytics;->onPostMessage:Z

    return-void
.end method

.method constructor <init>(Lo/throwAbtExceptionIfAnalyticsIsNull;Lo/useAppLanguage;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lo/getMaxUserPropertiesInAnalytics;->getInterfaceDescriptor:Z

    .line 71
    iput-boolean v0, p0, Lo/getMaxUserPropertiesInAnalytics;->extraCommand:Z

    .line 76
    iput-object p1, p0, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady:Lo/throwAbtExceptionIfAnalyticsIsNull;

    .line 77
    iput-object p2, p0, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsCallback:Lo/useAppLanguage;

    return-void
.end method

.method private onMessageChannelReady()Lo/FirebaseAuthException;
    .locals 3

    .line 367
    iget-object v0, p0, Lo/getMaxUserPropertiesInAnalytics;->postMessage:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 368
    iget-object v0, p0, Lo/getMaxUserPropertiesInAnalytics;->postMessage:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 370
    iget-object v0, p0, Lo/getMaxUserPropertiesInAnalytics;->postMessage:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lo/FirebaseAuthException;

    return-object v0

    .line 373
    :cond_0
    iget-object v0, p0, Lo/getMaxUserPropertiesInAnalytics;->postMessage:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lo/FirebaseAuthException;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method final onMessageChannelReady(Z)Lo/setFirebaseUIVersion;
    .locals 2

    .line 320
    iget-object v0, p0, Lo/getMaxUserPropertiesInAnalytics;->postMessage:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_1

    .line 321
    sget-boolean v0, Lo/getMaxUserPropertiesInAnalytics;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lo/getMaxUserPropertiesInAnalytics;->postMessage:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    .line 323
    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    .line 325
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lo/setFirebaseUIVersion;

    return-object p1

    .line 327
    :cond_0
    iget-object v0, p0, Lo/getMaxUserPropertiesInAnalytics;->postMessage:Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    .line 328
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lo/setFirebaseUIVersion;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method final onNavigationEvent()V
    .locals 5

    const/4 v0, 0x0

    .line 1337
    invoke-virtual {p0, v0}, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady(Z)Lo/setFirebaseUIVersion;

    move-result-object v1

    const/4 v2, 0x1

    .line 1350
    invoke-virtual {p0, v2}, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady(Z)Lo/setFirebaseUIVersion;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 292
    iget v3, p0, Lo/getMaxUserPropertiesInAnalytics;->asInterface:I

    int-to-float v3, v3

    iget-object v4, p0, Lo/getMaxUserPropertiesInAnalytics;->ICustomTabsService:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3, v4}, Lo/setFirebaseUIVersion;->ICustomTabsCallback(FLandroid/content/res/ColorStateList;)V

    if-eqz v2, :cond_0

    .line 294
    iget v1, p0, Lo/getMaxUserPropertiesInAnalytics;->asInterface:I

    int-to-float v1, v1

    invoke-virtual {v2, v1, v0}, Lo/setFirebaseUIVersion;->onNavigationEvent(FI)V

    :cond_0
    return-void
.end method

.method final onPostMessage(Lo/useAppLanguage;)V
    .locals 2

    const/4 v0, 0x0

    .line 2337
    invoke-virtual {p0, v0}, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady(Z)Lo/setFirebaseUIVersion;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3337
    invoke-virtual {p0, v0}, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady(Z)Lo/setFirebaseUIVersion;

    move-result-object v0

    .line 355
    invoke-virtual {v0, p1}, Lo/setFirebaseUIVersion;->setShapeAppearanceModel(Lo/useAppLanguage;)V

    :cond_0
    const/4 v0, 0x1

    .line 3350
    invoke-virtual {p0, v0}, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady(Z)Lo/setFirebaseUIVersion;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4350
    invoke-virtual {p0, v0}, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady(Z)Lo/setFirebaseUIVersion;

    move-result-object v0

    .line 358
    invoke-virtual {v0, p1}, Lo/setFirebaseUIVersion;->setShapeAppearanceModel(Lo/useAppLanguage;)V

    .line 360
    :cond_1
    invoke-direct {p0}, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady()Lo/FirebaseAuthException;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 361
    invoke-direct {p0}, Lo/getMaxUserPropertiesInAnalytics;->onMessageChannelReady()Lo/FirebaseAuthException;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/FirebaseAuthException;->setShapeAppearanceModel(Lo/useAppLanguage;)V

    :cond_2
    return-void
.end method
