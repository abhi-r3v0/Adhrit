.class final Lo/calculateTimeForDeceleration$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/addLifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/calculateTimeForDeceleration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/addLifecycleEventListener<",
        "Lo/isLoggingEnabled;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/google/firebase/auth/AuthResult;",
        "kotlin.jvm.PlatformType",
        "onSuccess"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getServerTime;


# direct methods
.method constructor <init>(Lo/getServerTime;)V
    .locals 0

    iput-object p1, p0, Lo/calculateTimeForDeceleration$onNavigationEvent;->onNavigationEvent:Lo/getServerTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 15
    check-cast p1, Lo/isLoggingEnabled;

    .line 1075
    sget-object v0, Lo/calculateTimeForDeceleration;->onNavigationEvent:Lo/calculateTimeForDeceleration;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/isLoggingEnabled;->getUser()Lo/isRooted;

    move-result-object p1

    invoke-static {p1}, Lo/calculateTimeForDeceleration;->onPostMessage(Lo/isRooted;)V

    const-string p1, "firebase_win"

    const-string v0, "firebase signIn success"

    .line 1076
    invoke-static {p1, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    iget-object p1, p0, Lo/calculateTimeForDeceleration$onNavigationEvent;->onNavigationEvent:Lo/getServerTime;

    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    return-void
.end method
