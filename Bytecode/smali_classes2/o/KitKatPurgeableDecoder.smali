.class final Lo/KitKatPurgeableDecoder;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Bitmaps;


# instance fields
.field private final ICustomTabsCallback:Lo/shouldUseHardwareBitmapConfig;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Lo/NativeBlurFilter;


# direct methods
.method constructor <init>(Lo/NativeBlurFilter;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/KitKatPurgeableDecoder;->onNavigationEvent:Lo/NativeBlurFilter;

    iput-object p2, p0, Lo/KitKatPurgeableDecoder;->onMessageChannelReady:Ljava/lang/String;

    new-instance v0, Lo/shouldUseHardwareBitmapConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lo/shouldUseHardwareBitmapConfig;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lo/KitKatPurgeableDecoder;->ICustomTabsCallback:Lo/shouldUseHardwareBitmapConfig;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/NativeBlurFilter;
    .locals 1

    iget-object v0, p0, Lo/KitKatPurgeableDecoder;->onNavigationEvent:Lo/NativeBlurFilter;

    return-object v0
.end method

.method final ICustomTabsCallback$Stub()[I
    .locals 1

    iget-object v0, p0, Lo/KitKatPurgeableDecoder;->ICustomTabsCallback:Lo/shouldUseHardwareBitmapConfig;

    invoke-static {v0}, Lo/shouldUseHardwareBitmapConfig;->asInterface(Lo/shouldUseHardwareBitmapConfig;)[I

    move-result-object v0

    return-object v0
.end method

.method public final asBinder()I
    .locals 1

    iget-object v0, p0, Lo/KitKatPurgeableDecoder;->ICustomTabsCallback:Lo/shouldUseHardwareBitmapConfig;

    invoke-static {v0}, Lo/shouldUseHardwareBitmapConfig;->ICustomTabsCallback(Lo/shouldUseHardwareBitmapConfig;)I

    move-result v0

    return v0
.end method

.method public final asInterface()I
    .locals 1

    iget-object v0, p0, Lo/KitKatPurgeableDecoder;->ICustomTabsCallback:Lo/shouldUseHardwareBitmapConfig;

    invoke-static {v0}, Lo/shouldUseHardwareBitmapConfig;->onMessageChannelReady(Lo/shouldUseHardwareBitmapConfig;)I

    move-result v0

    return v0
.end method

.method final extraCallback()Lo/shouldUseHardwareBitmapConfig;
    .locals 1

    iget-object v0, p0, Lo/KitKatPurgeableDecoder;->ICustomTabsCallback:Lo/shouldUseHardwareBitmapConfig;

    return-object v0
.end method

.method public final getInterfaceDescriptor()I
    .locals 1

    iget-object v0, p0, Lo/KitKatPurgeableDecoder;->ICustomTabsCallback:Lo/shouldUseHardwareBitmapConfig;

    invoke-static {v0}, Lo/shouldUseHardwareBitmapConfig;->onRelationshipValidationResult(Lo/shouldUseHardwareBitmapConfig;)I

    move-result v0

    return v0
.end method

.method public final newSession()I
    .locals 1

    iget-object v0, p0, Lo/KitKatPurgeableDecoder;->ICustomTabsCallback:Lo/shouldUseHardwareBitmapConfig;

    invoke-static {v0}, Lo/shouldUseHardwareBitmapConfig;->asBinder(Lo/shouldUseHardwareBitmapConfig;)I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady()Z
    .locals 2

    iget-object v0, p0, Lo/KitKatPurgeableDecoder;->ICustomTabsCallback:Lo/shouldUseHardwareBitmapConfig;

    invoke-static {v0}, Lo/shouldUseHardwareBitmapConfig;->extraCallback(Lo/shouldUseHardwareBitmapConfig;)I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent()I
    .locals 2

    iget-object v0, p0, Lo/KitKatPurgeableDecoder;->ICustomTabsCallback:Lo/shouldUseHardwareBitmapConfig;

    invoke-static {v0}, Lo/shouldUseHardwareBitmapConfig;->extraCallback(Lo/shouldUseHardwareBitmapConfig;)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    sget v0, Lo/RealtimeSinceBootClock$ICustomTabsCallback$Stub;->asInterface:I

    return v0

    :cond_0
    sget v0, Lo/RealtimeSinceBootClock$ICustomTabsCallback$Stub;->asBinder:I

    return v0
.end method

.method public final onPostMessage()I
    .locals 1

    iget-object v0, p0, Lo/KitKatPurgeableDecoder;->ICustomTabsCallback:Lo/shouldUseHardwareBitmapConfig;

    invoke-static {v0}, Lo/shouldUseHardwareBitmapConfig;->onNavigationEvent(Lo/shouldUseHardwareBitmapConfig;)I

    move-result v0

    return v0
.end method

.method public final onRelationshipValidationResult()I
    .locals 1

    iget-object v0, p0, Lo/KitKatPurgeableDecoder;->ICustomTabsCallback:Lo/shouldUseHardwareBitmapConfig;

    invoke-static {v0}, Lo/shouldUseHardwareBitmapConfig;->onPostMessage(Lo/shouldUseHardwareBitmapConfig;)I

    move-result v0

    return v0
.end method

.method public final onTransact()I
    .locals 1

    iget-object v0, p0, Lo/KitKatPurgeableDecoder;->ICustomTabsCallback:Lo/shouldUseHardwareBitmapConfig;

    invoke-static {v0}, Lo/shouldUseHardwareBitmapConfig;->onTransact(Lo/shouldUseHardwareBitmapConfig;)I

    move-result v0

    return v0
.end method
