.class public final Lo/SwitchCompat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapList;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\t\u001a\u00020\n2\n\u0010\u000b\u001a\u00060\u0005j\u0002`\u0006H\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0014\u0010\u000e\u001a\u00020\n2\n\u0010\u000b\u001a\u00060\u0005j\u0002`\u0006H\u0016R\"\u0010\u0003\u001a\u0016\u0012\u0008\u0012\u00060\u0005j\u0002`\u0006\u0012\u0008\u0012\u00060\u0007j\u0002`\u00080\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/AuthStateManager;",
        "Lcom/dreamplug/network/helper/AuthStateManager;",
        "()V",
        "map",
        "",
        "Lcom/dreamplug/network/helper/AuthStateChangeListener;",
        "Lcom/dreamplug/androidapp/NetworkAuthListener;",
        "Lcom/dreamplug/auth/helpers/AuthStateChangeListener;",
        "Lcom/dreamplug/androidapp/AuthListener;",
        "addAuthChangeListener",
        "",
        "networkAuthListener",
        "getAuthState",
        "",
        "removeAuthChangeListener",
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
.field public static final ICustomTabsCallback:Lo/SwitchCompat;

.field private static final onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/instantiateReceiver;",
            "Lo/instantiateReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lo/SwitchCompat;

    invoke-direct {v0}, Lo/SwitchCompat;-><init>()V

    sput-object v0, Lo/SwitchCompat;->ICustomTabsCallback:Lo/SwitchCompat;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lo/SwitchCompat;->onPostMessage:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/instantiateReceiver;)V
    .locals 1

    const-string v0, "networkAuthListener"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lo/SwitchCompat;->onPostMessage:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/instantiateReceiver;

    if-eqz p1, :cond_0

    .line 3032
    sget-object v0, Lo/getBridge;->onPostMessage:Lo/getBridge;

    .line 29
    invoke-static {p1}, Lo/getBridge;->onPostMessage(Lo/instantiateReceiver;)V

    :cond_0
    return-void
.end method

.method public final extraCallback()I
    .locals 1

    .line 1032
    sget-object v0, Lo/getBridge;->onPostMessage:Lo/getBridge;

    .line 16
    invoke-static {}, Lo/getBridge;->ICustomTabsCallback()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(Lo/instantiateReceiver;)V
    .locals 2

    const-string v0, "networkAuthListener"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lo/SwitchCompat$extraCallback;

    invoke-direct {v0, p1}, Lo/SwitchCompat$extraCallback;-><init>(Lo/instantiateReceiver;)V

    check-cast v0, Lo/instantiateReceiver;

    .line 23
    sget-object v1, Lo/SwitchCompat;->onPostMessage:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2032
    sget-object p1, Lo/getBridge;->onPostMessage:Lo/getBridge;

    .line 24
    invoke-static {v0}, Lo/getBridge;->onNavigationEvent(Lo/instantiateReceiver;)V

    return-void
.end method
