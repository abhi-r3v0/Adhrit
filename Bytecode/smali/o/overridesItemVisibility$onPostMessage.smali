.class final Lo/overridesItemVisibility$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/overridesItemVisibility;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lcom/dreamplug/utils/health/Health$ServiceStatus;",
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
        "status",
        "Lcom/dreamplug/utils/health/Health$ServiceStatus;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/overridesItemVisibility;


# direct methods
.method constructor <init>(Lo/overridesItemVisibility;)V
    .locals 0

    iput-object p1, p0, Lo/overridesItemVisibility$onPostMessage;->extraCallback:Lo/overridesItemVisibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 21
    check-cast p1, Lcom/dreamplug/utils/health/Health$ServiceStatus;

    const-string/jumbo v0, "status"

    .line 1071
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Lcom/dreamplug/utils/health/Health$ServiceStatus;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1072
    iget-object p1, p0, Lo/overridesItemVisibility$onPostMessage;->extraCallback:Lo/overridesItemVisibility;

    invoke-static {p1}, Lo/overridesItemVisibility;->extraCallback(Lo/overridesItemVisibility;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
