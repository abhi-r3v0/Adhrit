.class final Lo/onInflate$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MissingNativeComponent$1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onInflate;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/MissingNativeComponent$1<",
        "Lo/getSessionFileProvider;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "request",
        "Lcom/google/android/play/core/tasks/Task;",
        "Lcom/google/android/play/core/review/ReviewInfo;",
        "kotlin.jvm.PlatformType",
        "onComplete"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/onInflate;


# direct methods
.method constructor <init>(Lo/onInflate;)V
    .locals 0

    iput-object p1, p0, Lo/onInflate$4;->ICustomTabsCallback:Lo/onInflate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/getMinidumpFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getMinidumpFile<",
            "Lo/getSessionFileProvider;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lo/getMinidumpFile;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lo/onInflate$4;->ICustomTabsCallback:Lo/onInflate;

    invoke-virtual {p1}, Lo/getMinidumpFile;->extraCallback()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getSessionFileProvider;

    .line 1014
    iput-object p1, v0, Lo/onInflate;->onMessageChannelReady:Lo/getSessionFileProvider;

    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lo/onInflate$4;->ICustomTabsCallback:Lo/onInflate;

    const/4 v0, 0x1

    .line 1017
    iput-boolean v0, p1, Lo/onInflate;->onPostMessage:Z

    .line 30
    :goto_0
    iget-object p1, p0, Lo/onInflate$4;->ICustomTabsCallback:Lo/onInflate;

    .line 2016
    iget-boolean p1, p1, Lo/onInflate;->extraCallback:Z

    if-eqz p1, :cond_1

    .line 31
    iget-object p1, p0, Lo/onInflate$4;->ICustomTabsCallback:Lo/onInflate;

    .line 2018
    iget-boolean v0, p1, Lo/onInflate;->onNavigationEvent:Z

    .line 3012
    invoke-virtual {p1, v0}, Lo/onInflate;->onPostMessage(Z)V

    :cond_1
    return-void
.end method
