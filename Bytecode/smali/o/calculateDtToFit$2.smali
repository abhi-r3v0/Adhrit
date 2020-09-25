.class final Lo/calculateDtToFit$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/addBackgroundStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/fabrik/ui/lifestyle/firebase/FirebaseWinDBViewModel$goOnline$1$1;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "ex",
        "Ljava/lang/Exception;",
        "onFailure"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/calculateDtToFit$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/calculateDtToFit$2;

    invoke-direct {v0}, Lo/calculateDtToFit$2;-><init>()V

    sput-object v0, Lo/calculateDtToFit$2;->onPostMessage:Lo/calculateDtToFit$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "ex"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "firebase_win"

    const-string/jumbo v1, "updateUserPresence failure"

    invoke-static {v0, v1, p1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
