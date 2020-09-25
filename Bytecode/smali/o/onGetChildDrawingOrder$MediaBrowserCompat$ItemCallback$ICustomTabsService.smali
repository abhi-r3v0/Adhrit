.class public final Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$ICustomTabsService;
.super Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsService"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/navigation/AppScreens$TabSubMenuScreens$WebFarm;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/AppScreens$TabSubMenuScreens;",
        "()V",
        "WEB_FARM",
        "",
        "getTag",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onNavigationEvent:Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$ICustomTabsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 154
    new-instance v0, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$ICustomTabsService;

    invoke-direct {v0}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$ICustomTabsService;-><init>()V

    sput-object v0, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$ICustomTabsService;->onNavigationEvent:Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback$ICustomTabsService;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, v0}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ItemCallback;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "web_farm"

    return-object v0
.end method
