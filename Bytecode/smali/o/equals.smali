.class final Lo/equals;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Lo/verifyToken;

.field static final extraCallback:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 39
    new-instance v0, Lo/setSessionToken2Bundle;

    invoke-direct {v0}, Lo/setSessionToken2Bundle;-><init>()V

    sput-object v0, Lo/equals;->ICustomTabsCallback:Lo/verifyToken;

    goto :goto_0

    .line 40
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 41
    new-instance v0, Lo/setExtraBinder;

    invoke-direct {v0}, Lo/setExtraBinder;-><init>()V

    sput-object v0, Lo/equals;->ICustomTabsCallback:Lo/verifyToken;

    goto :goto_0

    .line 42
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    .line 43
    new-instance v0, Lo/toBundle;

    invoke-direct {v0}, Lo/toBundle;-><init>()V

    sput-object v0, Lo/equals;->ICustomTabsCallback:Lo/verifyToken;

    goto :goto_0

    .line 44
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 45
    new-instance v0, Lo/MediaSessionCompat$Token$1;

    invoke-direct {v0}, Lo/MediaSessionCompat$Token$1;-><init>()V

    sput-object v0, Lo/equals;->ICustomTabsCallback:Lo/verifyToken;

    goto :goto_0

    .line 46
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 47
    new-instance v0, Lo/fromBundle;

    invoke-direct {v0}, Lo/fromBundle;-><init>()V

    sput-object v0, Lo/equals;->ICustomTabsCallback:Lo/verifyToken;

    goto :goto_0

    .line 49
    :cond_4
    new-instance v0, Lo/verifyToken;

    invoke-direct {v0}, Lo/verifyToken;-><init>()V

    sput-object v0, Lo/equals;->ICustomTabsCallback:Lo/verifyToken;

    .line 56
    :goto_0
    new-instance v0, Lo/equals$5;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "translationAlpha"

    invoke-direct {v0, v1, v2}, Lo/equals$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lo/equals;->extraCallback:Landroid/util/Property;

    .line 71
    new-instance v0, Lo/equals$1;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    invoke-direct {v0, v1, v2}, Lo/equals$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method static ICustomTabsCallback(Landroid/view/View;)Lo/MediaSessionCompat$1$onMessageChannelReady;
    .locals 2

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 101
    new-instance v0, Lo/hasCallback;

    invoke-direct {v0, p0}, Lo/hasCallback;-><init>(Landroid/view/View;)V

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Lo/MediaSessionCompatApi21;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/MediaSessionCompatApi21;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method static extraCallback(Landroid/view/View;)V
    .locals 1

    .line 128
    sget-object v0, Lo/equals;->ICustomTabsCallback:Lo/verifyToken;

    invoke-virtual {v0, p0}, Lo/verifyToken;->onNavigationEvent(Landroid/view/View;)V

    return-void
.end method

.method static extraCallback(Landroid/view/View;IIII)V
    .locals 6

    .line 199
    sget-object v0, Lo/equals;->ICustomTabsCallback:Lo/verifyToken;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lo/verifyToken;->onNavigationEvent(Landroid/view/View;IIII)V

    return-void
.end method

.method static extraCallback(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    .line 161
    sget-object v0, Lo/equals;->ICustomTabsCallback:Lo/verifyToken;

    invoke-virtual {v0, p0, p1}, Lo/verifyToken;->onPostMessage(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method static onMessageChannelReady(Landroid/view/View;)F
    .locals 1

    .line 111
    sget-object v0, Lo/equals;->ICustomTabsCallback:Lo/verifyToken;

    invoke-virtual {v0, p0}, Lo/verifyToken;->ICustomTabsCallback(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method static onMessageChannelReady(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    .line 177
    sget-object v0, Lo/equals;->ICustomTabsCallback:Lo/verifyToken;

    invoke-virtual {v0, p0, p1}, Lo/verifyToken;->onNavigationEvent(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method static onPostMessage(Landroid/view/View;)V
    .locals 1

    .line 119
    sget-object v0, Lo/equals;->ICustomTabsCallback:Lo/verifyToken;

    invoke-virtual {v0, p0}, Lo/verifyToken;->extraCallback(Landroid/view/View;)V

    return-void
.end method

.method static onPostMessage(Landroid/view/View;F)V
    .locals 1

    .line 107
    sget-object v0, Lo/equals;->ICustomTabsCallback:Lo/verifyToken;

    invoke-virtual {v0, p0, p1}, Lo/verifyToken;->extraCallback(Landroid/view/View;F)V

    return-void
.end method

.method static onPostMessage(Landroid/view/View;I)V
    .locals 1

    .line 145
    sget-object v0, Lo/equals;->ICustomTabsCallback:Lo/verifyToken;

    invoke-virtual {v0, p0, p1}, Lo/verifyToken;->ICustomTabsCallback(Landroid/view/View;I)V

    return-void
.end method
