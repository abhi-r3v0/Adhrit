.class public final Lo/getLayoutPosition;
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
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/ui/Neu;",
        "",
        "()V",
        "appContext",
        "Landroid/app/Application;",
        "getAppContext",
        "()Landroid/app/Application;",
        "setAppContext",
        "(Landroid/app/Application;)V",
        "init",
        "",
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
.field private static ICustomTabsCallback:Landroid/app/Application;

.field public static final extraCallback:Lo/getLayoutPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lo/getLayoutPosition;

    invoke-direct {v0}, Lo/getLayoutPosition;-><init>()V

    sput-object v0, Lo/getLayoutPosition;->extraCallback:Lo/getLayoutPosition;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/app/Application;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sput-object p0, Lo/getLayoutPosition;->ICustomTabsCallback:Landroid/app/Application;

    return-void
.end method

.method public static onPostMessage()Landroid/app/Application;
    .locals 2

    .line 6
    sget-object v0, Lo/getLayoutPosition;->ICustomTabsCallback:Landroid/app/Application;

    if-nez v0, :cond_0

    const-string v1, "appContext"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
