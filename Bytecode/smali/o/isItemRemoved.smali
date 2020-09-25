.class public final Lo/isItemRemoved;
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/theming/Theme;",
        "",
        "()V",
        "getThemeMode",
        "",
        "setTheme",
        "",
        "isDarkModeEnabled",
        "",
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
.field public static final extraCallback:Lo/isItemRemoved;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lo/isItemRemoved;

    invoke-direct {v0}, Lo/isItemRemoved;-><init>()V

    sput-object v0, Lo/isItemRemoved;->extraCallback:Lo/isItemRemoved;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {}, Lo/setTrackTintMode;->ICustomTabsService()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "dark"

    return-object v0

    :cond_0
    const-string v0, "light"

    return-object v0
.end method

.method public static onNavigationEvent(Z)V
    .locals 1

    .line 13
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {p0}, Lo/setTrackTintMode;->extraCallback(Z)V

    return-void
.end method
