.class final Lo/getCompoundPaddingRight$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCompoundPaddingRight;
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
.field public static final onNavigationEvent:Lo/getCompoundPaddingRight$asInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getCompoundPaddingRight$asInterface;

    invoke-direct {v0}, Lo/getCompoundPaddingRight$asInterface;-><init>()V

    sput-object v0, Lo/getCompoundPaddingRight$asInterface;->onNavigationEvent:Lo/getCompoundPaddingRight$asInterface;

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
    .locals 1

    .line 24
    check-cast p1, Ljava/lang/String;

    const-string v0, "city"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1175
    sget-object v0, Lo/getCompoundPaddingRight;->onNavigationEvent:Lo/getCompoundPaddingRight;

    invoke-static {}, Lo/getCompoundPaddingRight;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lo/getCompoundPaddingRight;->onNavigationEvent:Lo/getCompoundPaddingRight;

    invoke-static {}, Lo/getCompoundPaddingRight;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1176
    :cond_0
    sget-object v0, Lo/getCompoundPaddingRight;->onNavigationEvent:Lo/getCompoundPaddingRight;

    invoke-static {p1}, Lo/getCompoundPaddingRight;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 1177
    sget-object p1, Lo/getCompoundPaddingRight;->onNavigationEvent:Lo/getCompoundPaddingRight;

    invoke-static {p1}, Lo/getCompoundPaddingRight;->ICustomTabsCallback(Lo/getCompoundPaddingRight;)Lo/setActive;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 24
    :cond_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
