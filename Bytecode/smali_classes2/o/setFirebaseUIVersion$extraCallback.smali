.class public final Lo/setFirebaseUIVersion$extraCallback;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setFirebaseUIVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field public ICustomTabsCallback:Lo/useAppLanguage;

.field public ICustomTabsCallback$Stub:Landroid/content/res/ColorStateList;

.field public ICustomTabsCallback$Stub$Proxy:F

.field public ICustomTabsService:F

.field public ICustomTabsService$Stub$Proxy:Z

.field public IPostMessageService:Landroid/graphics/Paint$Style;

.field public asBinder:Landroid/content/res/ColorStateList;

.field public asInterface:Landroid/graphics/Rect;

.field public extraCallback:Landroid/graphics/ColorFilter;

.field public extraCommand:I

.field public getInterfaceDescriptor:F

.field public mayLaunchUrl:I

.field public newSession:F

.field public onMessageChannelReady:Landroid/content/res/ColorStateList;

.field public onNavigationEvent:Landroid/content/res/ColorStateList;

.field public onPostMessage:Lo/getUsername;

.field public onRelationshipValidationResult:Landroid/graphics/PorterDuff$Mode;

.field public onTransact:F

.field public postMessage:I

.field public requestPostMessageChannel:I

.field public updateVisuals:F

.field public warmup:I


# direct methods
.method public constructor <init>(Lo/setFirebaseUIVersion$extraCallback;)V
    .locals 2

    .line 1363
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 1332
    iput-object v0, p0, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 1333
    iput-object v0, p0, Lo/setFirebaseUIVersion$extraCallback;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    .line 1334
    iput-object v0, p0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub:Landroid/content/res/ColorStateList;

    .line 1335
    iput-object v0, p0, Lo/setFirebaseUIVersion$extraCallback;->asBinder:Landroid/content/res/ColorStateList;

    .line 1336
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lo/setFirebaseUIVersion$extraCallback;->onRelationshipValidationResult:Landroid/graphics/PorterDuff$Mode;

    .line 1337
    iput-object v0, p0, Lo/setFirebaseUIVersion$extraCallback;->asInterface:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1339
    iput v0, p0, Lo/setFirebaseUIVersion$extraCallback;->onTransact:F

    .line 1340
    iput v0, p0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    const/16 v0, 0xff

    .line 1343
    iput v0, p0, Lo/setFirebaseUIVersion$extraCallback;->warmup:I

    const/4 v0, 0x0

    .line 1344
    iput v0, p0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsService:F

    .line 1345
    iput v0, p0, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    .line 1346
    iput v0, p0, Lo/setFirebaseUIVersion$extraCallback;->updateVisuals:F

    const/4 v0, 0x0

    .line 1347
    iput v0, p0, Lo/setFirebaseUIVersion$extraCallback;->requestPostMessageChannel:I

    .line 1348
    iput v0, p0, Lo/setFirebaseUIVersion$extraCallback;->mayLaunchUrl:I

    .line 1349
    iput v0, p0, Lo/setFirebaseUIVersion$extraCallback;->extraCommand:I

    .line 1350
    iput v0, p0, Lo/setFirebaseUIVersion$extraCallback;->postMessage:I

    .line 1352
    iput-boolean v0, p0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsService$Stub$Proxy:Z

    .line 1354
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lo/setFirebaseUIVersion$extraCallback;->IPostMessageService:Landroid/graphics/Paint$Style;

    .line 1364
    iget-object v0, p1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    iput-object v0, p0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 1365
    iget-object v0, p1, Lo/setFirebaseUIVersion$extraCallback;->onPostMessage:Lo/getUsername;

    iput-object v0, p0, Lo/setFirebaseUIVersion$extraCallback;->onPostMessage:Lo/getUsername;

    .line 1366
    iget v0, p1, Lo/setFirebaseUIVersion$extraCallback;->newSession:F

    iput v0, p0, Lo/setFirebaseUIVersion$extraCallback;->newSession:F

    .line 1367
    iget-object v0, p1, Lo/setFirebaseUIVersion$extraCallback;->extraCallback:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Lo/setFirebaseUIVersion$extraCallback;->extraCallback:Landroid/graphics/ColorFilter;

    .line 1368
    iget-object v0, p1, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 1369
    iget-object v0, p1, Lo/setFirebaseUIVersion$extraCallback;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lo/setFirebaseUIVersion$extraCallback;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    .line 1370
    iget-object v0, p1, Lo/setFirebaseUIVersion$extraCallback;->onRelationshipValidationResult:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lo/setFirebaseUIVersion$extraCallback;->onRelationshipValidationResult:Landroid/graphics/PorterDuff$Mode;

    .line 1371
    iget-object v0, p1, Lo/setFirebaseUIVersion$extraCallback;->asBinder:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lo/setFirebaseUIVersion$extraCallback;->asBinder:Landroid/content/res/ColorStateList;

    .line 1372
    iget v0, p1, Lo/setFirebaseUIVersion$extraCallback;->warmup:I

    iput v0, p0, Lo/setFirebaseUIVersion$extraCallback;->warmup:I

    .line 1373
    iget v0, p1, Lo/setFirebaseUIVersion$extraCallback;->onTransact:F

    iput v0, p0, Lo/setFirebaseUIVersion$extraCallback;->onTransact:F

    .line 1374
    iget v0, p1, Lo/setFirebaseUIVersion$extraCallback;->extraCommand:I

    iput v0, p0, Lo/setFirebaseUIVersion$extraCallback;->extraCommand:I

    .line 1375
    iget v0, p1, Lo/setFirebaseUIVersion$extraCallback;->requestPostMessageChannel:I

    iput v0, p0, Lo/setFirebaseUIVersion$extraCallback;->requestPostMessageChannel:I

    .line 1376
    iget-boolean v0, p1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsService$Stub$Proxy:Z

    iput-boolean v0, p0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsService$Stub$Proxy:Z

    .line 1377
    iget v0, p1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    iput v0, p0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    .line 1378
    iget v0, p1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsService:F

    iput v0, p0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsService:F

    .line 1379
    iget v0, p1, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    iput v0, p0, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    .line 1380
    iget v0, p1, Lo/setFirebaseUIVersion$extraCallback;->updateVisuals:F

    iput v0, p0, Lo/setFirebaseUIVersion$extraCallback;->updateVisuals:F

    .line 1381
    iget v0, p1, Lo/setFirebaseUIVersion$extraCallback;->mayLaunchUrl:I

    iput v0, p0, Lo/setFirebaseUIVersion$extraCallback;->mayLaunchUrl:I

    .line 1382
    iget v0, p1, Lo/setFirebaseUIVersion$extraCallback;->postMessage:I

    iput v0, p0, Lo/setFirebaseUIVersion$extraCallback;->postMessage:I

    .line 1383
    iget-object v0, p1, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub:Landroid/content/res/ColorStateList;

    .line 1384
    iget-object v0, p1, Lo/setFirebaseUIVersion$extraCallback;->IPostMessageService:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lo/setFirebaseUIVersion$extraCallback;->IPostMessageService:Landroid/graphics/Paint$Style;

    .line 1385
    iget-object v0, p1, Lo/setFirebaseUIVersion$extraCallback;->asInterface:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 1386
    new-instance v0, Landroid/graphics/Rect;

    iget-object p1, p1, Lo/setFirebaseUIVersion$extraCallback;->asInterface:Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lo/setFirebaseUIVersion$extraCallback;->asInterface:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lo/useAppLanguage;)V
    .locals 2

    .line 1358
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 1332
    iput-object v0, p0, Lo/setFirebaseUIVersion$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    .line 1333
    iput-object v0, p0, Lo/setFirebaseUIVersion$extraCallback;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    .line 1334
    iput-object v0, p0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub:Landroid/content/res/ColorStateList;

    .line 1335
    iput-object v0, p0, Lo/setFirebaseUIVersion$extraCallback;->asBinder:Landroid/content/res/ColorStateList;

    .line 1336
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lo/setFirebaseUIVersion$extraCallback;->onRelationshipValidationResult:Landroid/graphics/PorterDuff$Mode;

    .line 1337
    iput-object v0, p0, Lo/setFirebaseUIVersion$extraCallback;->asInterface:Landroid/graphics/Rect;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1339
    iput v1, p0, Lo/setFirebaseUIVersion$extraCallback;->onTransact:F

    .line 1340
    iput v1, p0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback$Stub$Proxy:F

    const/16 v1, 0xff

    .line 1343
    iput v1, p0, Lo/setFirebaseUIVersion$extraCallback;->warmup:I

    const/4 v1, 0x0

    .line 1344
    iput v1, p0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsService:F

    .line 1345
    iput v1, p0, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    .line 1346
    iput v1, p0, Lo/setFirebaseUIVersion$extraCallback;->updateVisuals:F

    const/4 v1, 0x0

    .line 1347
    iput v1, p0, Lo/setFirebaseUIVersion$extraCallback;->requestPostMessageChannel:I

    .line 1348
    iput v1, p0, Lo/setFirebaseUIVersion$extraCallback;->mayLaunchUrl:I

    .line 1349
    iput v1, p0, Lo/setFirebaseUIVersion$extraCallback;->extraCommand:I

    .line 1350
    iput v1, p0, Lo/setFirebaseUIVersion$extraCallback;->postMessage:I

    .line 1352
    iput-boolean v1, p0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsService$Stub$Proxy:Z

    .line 1354
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v1, p0, Lo/setFirebaseUIVersion$extraCallback;->IPostMessageService:Landroid/graphics/Paint$Style;

    .line 1359
    iput-object p1, p0, Lo/setFirebaseUIVersion$extraCallback;->ICustomTabsCallback:Lo/useAppLanguage;

    .line 1360
    iput-object v0, p0, Lo/setFirebaseUIVersion$extraCallback;->onPostMessage:Lo/getUsername;

    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1393
    new-instance v0, Lo/setFirebaseUIVersion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/setFirebaseUIVersion;-><init>(Lo/setFirebaseUIVersion$extraCallback;B)V

    const/4 v1, 0x1

    .line 2071
    iput-boolean v1, v0, Lo/setFirebaseUIVersion;->RemoteActionCompatParcelizer:Z

    return-object v0
.end method
