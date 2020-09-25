.class public final Lo/sortAndDedup;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/sortAndDedup$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u001fB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0017\u001a\u00020\u0006J\u0006\u0010\u0018\u001a\u00020\u0006J\u0006\u0010\u0019\u001a\u00020\u0006J\u0010\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0004H\u0002J\u0010\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006 "
    }
    d2 = {
        "Lcom/dreamplug/utils/DeviceInfo;",
        "",
        "()V",
        "DENSITY_DEFAULT_SCALE",
        "",
        "DENSITY_HDPI",
        "",
        "DENSITY_LDPI",
        "DENSITY_MDPI",
        "DENSITY_XHDPI",
        "DENSITY_XXHDPI",
        "DENSITY_XXXDPI",
        "insetsData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Landroid/view/WindowInsets;",
        "getInsetsData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "screenResolution",
        "Lcom/dreamplug/utils/DeviceInfo$ScreenResolution;",
        "getScreenResolution",
        "()Lcom/dreamplug/utils/DeviceInfo$ScreenResolution;",
        "screenResolution$delegate",
        "Lkotlin/Lazy;",
        "getDeviceDensity",
        "getScreenHeight",
        "getScreenWidth",
        "getStandardDensity",
        "density",
        "updateInset",
        "",
        "inset",
        "ScreenResolution",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/isSameListener;

.field private static final onNavigationEvent:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Landroid/view/WindowInsets;",
            ">;"
        }
    .end annotation
.end field

.field public static final onPostMessage:Lo/sortAndDedup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lo/sortAndDedup;

    invoke-direct {v0}, Lo/sortAndDedup;-><init>()V

    sput-object v0, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    .line 22
    sget-object v0, Lo/sortAndDedup$onNavigationEvent;->onNavigationEvent:Lo/sortAndDedup$onNavigationEvent;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 22
    sput-object v1, Lo/sortAndDedup;->extraCallback:Lo/isSameListener;

    .line 46
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    sput-object v0, Lo/sortAndDedup;->onNavigationEvent:Lo/setActive;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNavigationEvent(F)I
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, 0x3fc00000    # 1.5f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, p0, v0

    if-lez v0, :cond_4

    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/high16 v0, 0x40800000    # 4.0f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    const/4 p0, 0x4

    return p0
.end method

.method public static onNavigationEvent()Lo/setActive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setActive<",
            "Landroid/view/WindowInsets;",
            ">;"
        }
    .end annotation

    .line 46
    sget-object v0, Lo/sortAndDedup;->onNavigationEvent:Lo/setActive;

    return-object v0
.end method

.method public static onNavigationEvent(Landroid/view/WindowInsets;)V
    .locals 1

    .line 49
    sget-object v0, Lo/sortAndDedup;->onNavigationEvent:Lo/setActive;

    invoke-virtual {v0, p0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
