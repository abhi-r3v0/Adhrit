.class public final Lo/onGetChildDrawingOrder$sendCustomAction;
.super Lo/onGetChildDrawingOrder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onGetChildDrawingOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "sendCustomAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onGetChildDrawingOrder$sendCustomAction$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/navigation/AppScreens$PayWithCred;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/AppScreens;",
        "referenceId",
        "",
        "callingActivity",
        "source",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getCallingActivity",
        "()Ljava/lang/String;",
        "getReferenceId",
        "getSource",
        "getTag",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final extraCallback:Ljava/lang/String;

.field final onMessageChannelReady:Ljava/lang/String;

.field final onNavigationEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 580
    invoke-direct {p0, v0}, Lo/onGetChildDrawingOrder;-><init>(B)V

    iput-object p1, p0, Lo/onGetChildDrawingOrder$sendCustomAction;->onMessageChannelReady:Ljava/lang/String;

    iput-object p2, p0, Lo/onGetChildDrawingOrder$sendCustomAction;->extraCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/onGetChildDrawingOrder$sendCustomAction;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/String;
    .locals 1

    const-string v0, "PAY_WITH_CRED"

    return-object v0
.end method
