.class final Lo/appendViewToAllSpans$onTransact;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/appendViewToAllSpans;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Landroid/view/animation/Animation;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroid/view/animation/Animation;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/appendViewToAllSpans;

.field private synthetic extraCallback:Landroid/content/Context;


# direct methods
.method constructor <init>(Lo/appendViewToAllSpans;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lo/appendViewToAllSpans$onTransact;->ICustomTabsCallback:Lo/appendViewToAllSpans;

    iput-object p2, p0, Lo/appendViewToAllSpans$onTransact;->extraCallback:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1059
    iget-object v0, p0, Lo/appendViewToAllSpans$onTransact;->extraCallback:Landroid/content/Context;

    sget v1, Lo/preferLastSpan$extraCallback;->slide_in_up:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-string v1, "anim"

    .line 1060
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1154
    new-instance v1, Lo/setDrawerListener$onPostMessage;

    invoke-direct {v1}, Lo/setDrawerListener$onPostMessage;-><init>()V

    .line 1061
    new-instance v2, Lo/appendViewToAllSpans$onTransact$ICustomTabsCallback;

    invoke-direct {v2, p0}, Lo/appendViewToAllSpans$onTransact$ICustomTabsCallback;-><init>(Lo/appendViewToAllSpans$onTransact;)V

    check-cast v2, Lo/onDisconnectSetValue;

    const-string v3, "func"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2039
    iput-object v2, v1, Lo/setDrawerListener$onPostMessage;->extraCallback:Lo/onDisconnectSetValue;

    .line 1064
    new-instance v2, Lo/appendViewToAllSpans$onTransact$onMessageChannelReady;

    invoke-direct {v2, p0}, Lo/appendViewToAllSpans$onTransact$onMessageChannelReady;-><init>(Lo/appendViewToAllSpans$onTransact;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3031
    iput-object v2, v1, Lo/setDrawerListener$onPostMessage;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    .line 1156
    check-cast v1, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method
