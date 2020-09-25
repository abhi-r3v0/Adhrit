.class public final Lo/component20;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;)V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/component20;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

    return-void
.end method

.method public static ICustomTabsCallback()Z
    .locals 2

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ICustomTabsCallback$Stub()Z
    .locals 2

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ICustomTabsCallback$Stub$Proxy()Z
    .locals 2

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static asBinder()Z
    .locals 2

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static asInterface()Z
    .locals 2

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static extraCallback()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;)Ljava/util/concurrent/Callable;
    .locals 1

    .line 4000
    new-instance v0, Lo/component20;

    invoke-direct {v0, p0}, Lo/component20;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;)V

    return-object v0
.end method

.method public static onMessageChannelReady()Z
    .locals 2

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static onPostMessage()Z
    .locals 2

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static onRelationshipValidationResult()Z
    .locals 2

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static onTransact()Z
    .locals 2

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 3000
    iget-object v0, p0, Lo/component20;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->lambda$initChannelTask$6(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;)Lo/insert;

    move-result-object v0

    return-object v0
.end method
