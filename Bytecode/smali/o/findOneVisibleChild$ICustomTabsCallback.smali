.class final Lo/findOneVisibleChild$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findOneVisibleChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Ljava/lang/String;",
        "Lo/addWrites;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "city",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onNavigationEvent:Lo/findOneVisibleChild$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/findOneVisibleChild$ICustomTabsCallback;

    invoke-direct {v0}, Lo/findOneVisibleChild$ICustomTabsCallback;-><init>()V

    sput-object v0, Lo/findOneVisibleChild$ICustomTabsCallback;->onNavigationEvent:Lo/findOneVisibleChild$ICustomTabsCallback;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 15
    check-cast p1, Ljava/lang/String;

    const-string v0, "city"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1040
    sget-object v0, Lo/findOneVisibleChild;->onMessageChannelReady:Lo/findOneVisibleChild;

    const-string v1, "newCity"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1106
    sget-object v1, Lo/findOneVisibleChild;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v1, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1107
    sput-object p1, Lo/findOneVisibleChild;->onNavigationEvent:Ljava/lang/String;

    .line 1113
    invoke-static {}, Lo/findOneVisibleChild;->extraCallback()V

    .line 1114
    invoke-virtual {v0}, Lo/findOneVisibleChild;->onNavigationEvent()V

    .line 15
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
