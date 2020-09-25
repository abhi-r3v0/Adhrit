.class final Lo/shouldBeKeptAsChild$mayLaunchUrl;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/shouldBeKeptAsChild;-><init>(Lo/dispatchAddStarting;Ljava/lang/String;Lo/onSessionEvent;Lo/snapFromFling;Lo/shouldBeKeptAsChild$ICustomTabsCallback;Ljava/lang/String;ZLo/add;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/setSupportsChangeAnimations;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/dreamplug/upi/SetMPinUseCase;",
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
.field private synthetic extraCallback:Lo/shouldBeKeptAsChild;


# direct methods
.method constructor <init>(Lo/shouldBeKeptAsChild;)V
    .locals 0

    iput-object p1, p0, Lo/shouldBeKeptAsChild$mayLaunchUrl;->extraCallback:Lo/shouldBeKeptAsChild;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1226
    new-instance v0, Lo/setSupportsChangeAnimations;

    iget-object v1, p0, Lo/shouldBeKeptAsChild$mayLaunchUrl;->extraCallback:Lo/shouldBeKeptAsChild;

    .line 2043
    iget-object v1, v1, Lo/shouldBeKeptAsChild;->onRelationshipValidationResult:Lo/onSessionEvent;

    .line 1226
    iget-object v2, p0, Lo/shouldBeKeptAsChild$mayLaunchUrl;->extraCallback:Lo/shouldBeKeptAsChild;

    invoke-static {v2}, Lo/shouldBeKeptAsChild;->onTransact(Lo/shouldBeKeptAsChild;)Lo/shouldBeKeptAsChild$asInterface;

    move-result-object v2

    check-cast v2, Lo/shouldBeKeptAsChild$onPostMessage;

    invoke-direct {v0, v1, v2}, Lo/setSupportsChangeAnimations;-><init>(Lo/onSessionEvent;Lo/shouldBeKeptAsChild$onPostMessage;)V

    return-object v0
.end method
