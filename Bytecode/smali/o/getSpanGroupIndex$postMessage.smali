.class final Lo/getSpanGroupIndex$postMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSpanGroupIndex;->onCreate(Landroid/os/Bundle;)V
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
        "Ljava/lang/Boolean;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "observe",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Boolean;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getSpanGroupIndex;


# direct methods
.method constructor <init>(Lo/getSpanGroupIndex;)V
    .locals 0

    iput-object p1, p0, Lo/getSpanGroupIndex$postMessage;->onNavigationEvent:Lo/getSpanGroupIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 79
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 1145
    iget-object v0, p0, Lo/getSpanGroupIndex$postMessage;->onNavigationEvent:Lo/getSpanGroupIndex;

    invoke-static {v0}, Lo/getSpanGroupIndex;->extraCallback(Lo/getSpanGroupIndex;)Lo/shouldLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2021
    iput-boolean v1, v0, Lo/shouldLayout;->ICustomTabsCallback:Z

    .line 2022
    invoke-virtual {v0}, Lo/shouldLayout;->onNavigationEvent()V

    .line 1146
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1150
    iget-object p1, p0, Lo/getSpanGroupIndex$postMessage;->onNavigationEvent:Lo/getSpanGroupIndex;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/getSpanGroupIndex;->ICustomTabsCallback(Lo/getSpanGroupIndex;Lo/shouldLayout;)V

    .line 1151
    iget-object p1, p0, Lo/getSpanGroupIndex$postMessage;->onNavigationEvent:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;)Lo/setRecycleChildrenOnDetach;

    move-result-object p1

    .line 2043
    iget-object p1, p1, Lo/setRecycleChildrenOnDetach;->asInterface:Lo/setActive;

    const-string v0, ""

    .line 1151
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
