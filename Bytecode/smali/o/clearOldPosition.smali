.class public final Lo/clearOldPosition;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u001e\u001a\u00020\tJ\u0008\u0010\u001f\u001a\u00020\tH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R+\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0011\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u000cR\u0011\u0010\u0015\u001a\u00020\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0014\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/dreamplug/ui/NeuUtils;",
        "",
        "()V",
        "TYPE_ELEVATED_FLAT",
        "",
        "TYPE_ELEVATED_PIT",
        "TYPE_ELEVATED_SOFT",
        "TYPE_FLAT_PIT",
        "<set-?>",
        "",
        "forceNSB",
        "getForceNSB",
        "()Z",
        "setForceNSB",
        "(Z)V",
        "forceNSB$delegate",
        "Lcom/dreamplug/utils/helpers/sharedpref/SharedPrefBoolDelegate;",
        "forceNsbSnapshot",
        "getForceNsbSnapshot",
        "forceNsbSnapshot$delegate",
        "Lkotlin/Lazy;",
        "platformGap",
        "",
        "getPlatformGap",
        "()F",
        "preference",
        "Lcom/dreamplug/utils/helpers/sharedpref/SharedPrefWrapper;",
        "getPreference",
        "()Lcom/dreamplug/utils/helpers/sharedpref/SharedPrefWrapper;",
        "preference$delegate",
        "isCompatDevice",
        "isDeviceSupported",
        "uikit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/isSameListener;

.field public static final extraCallback:Lo/clearOldPosition;

.field public static final onMessageChannelReady:Lo/isSameListener;

.field public static final synthetic onNavigationEvent:[Lo/applyUserOverwrite;

.field public static final onPostMessage:Lo/addToData;

.field private static final onRelationshipValidationResult:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lo/applyUserOverwrite;

    new-instance v2, Lo/access$2802;

    const-class v3, Lo/clearOldPosition;

    invoke-static {v3}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v3

    const-string v4, "forceNSB"

    const-string v5, "getForceNSB()Z"

    invoke-direct {v2, v3, v4, v5}, Lo/access$2802;-><init>(Lo/getQueryViews;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/applyEmulatorSettings;->onNavigationEvent(Lo/stopListening;)Lo/getCompleteView;

    move-result-object v2

    check-cast v2, Lo/applyUserOverwrite;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lo/clearOldPosition;->onNavigationEvent:[Lo/applyUserOverwrite;

    .line 8
    new-instance v1, Lo/clearOldPosition;

    invoke-direct {v1}, Lo/clearOldPosition;-><init>()V

    sput-object v1, Lo/clearOldPosition;->extraCallback:Lo/clearOldPosition;

    .line 10
    sget-object v1, Lo/clearOldPosition$extraCallback;->extraCallback:Lo/clearOldPosition$extraCallback;

    check-cast v1, Lo/getServerTime;

    const-string v2, "initializer"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v3, Lo/fromChildMerge;

    invoke-direct {v3, v1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v3, Lo/isSameListener;

    .line 10
    sput-object v3, Lo/clearOldPosition;->ICustomTabsCallback:Lo/isSameListener;

    .line 14
    new-instance v1, Lo/addToData;

    .line 2000
    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/compare;

    const-string v4, "force_nsb"

    .line 14
    invoke-direct {v1, v3, v4}, Lo/addToData;-><init>(Lo/compare;Ljava/lang/String;)V

    sput-object v1, Lo/clearOldPosition;->onPostMessage:Lo/addToData;

    .line 17
    sget-object v1, Lo/clearOldPosition$onMessageChannelReady;->extraCallback:Lo/clearOldPosition$onMessageChannelReady;

    check-cast v1, Lo/getServerTime;

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 17
    sput-object v2, Lo/clearOldPosition;->onMessageChannelReady:Lo/isSameListener;

    .line 3009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Resources.getSystem()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    .line 3010
    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 29
    sput v0, Lo/clearOldPosition;->onRelationshipValidationResult:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback()F
    .locals 1

    .line 29
    sget v0, Lo/clearOldPosition;->onRelationshipValidationResult:F

    return v0
.end method

.method public static onNavigationEvent()Z
    .locals 2

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final onPostMessage()Z
    .locals 4

    .line 3022
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 4000
    sget-object v0, Lo/clearOldPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v1
.end method
