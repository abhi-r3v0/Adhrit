.class final Lo/ensureMenuView$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ensureMenuView;->onCreate(Landroid/os/Bundle;)V
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
        "it",
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
.field private synthetic extraCallback:Lo/ensureMenuView;


# direct methods
.method constructor <init>(Lo/ensureMenuView;)V
    .locals 0

    iput-object p1, p0, Lo/ensureMenuView$onNavigationEvent;->extraCallback:Lo/ensureMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 35
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 1065
    iget-object v0, p0, Lo/ensureMenuView$onNavigationEvent;->extraCallback:Lo/ensureMenuView;

    invoke-static {v0}, Lo/ensureMenuView;->ICustomTabsCallback(Lo/ensureMenuView;)Lo/shouldLayout;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2021
    iput-boolean p1, v0, Lo/shouldLayout;->ICustomTabsCallback:Z

    .line 2022
    invoke-virtual {v0}, Lo/shouldLayout;->onNavigationEvent()V

    :cond_0
    return-void
.end method
