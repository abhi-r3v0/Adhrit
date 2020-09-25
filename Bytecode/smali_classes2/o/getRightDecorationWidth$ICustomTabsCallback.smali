.class final Lo/getRightDecorationWidth$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getRightDecorationWidth;-><init>()V
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
.field private synthetic ICustomTabsCallback:Lo/getRightDecorationWidth;


# direct methods
.method constructor <init>(Lo/getRightDecorationWidth;)V
    .locals 0

    iput-object p1, p0, Lo/getRightDecorationWidth$ICustomTabsCallback;->ICustomTabsCallback:Lo/getRightDecorationWidth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 33
    check-cast p1, Ljava/lang/Boolean;

    .line 1176
    iget-object v0, p0, Lo/getRightDecorationWidth$ICustomTabsCallback;->ICustomTabsCallback:Lo/getRightDecorationWidth;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "it"

    if-eqz v0, :cond_1

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x30

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1177
    :cond_1
    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1178
    iget-object p1, p0, Lo/getRightDecorationWidth$ICustomTabsCallback;->ICustomTabsCallback:Lo/getRightDecorationWidth;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/getRightDecorationWidth;->onMessageChannelReady(Lo/getRightDecorationWidth;Z)V

    return-void

    .line 1180
    :cond_2
    iget-object p1, p0, Lo/getRightDecorationWidth$ICustomTabsCallback;->ICustomTabsCallback:Lo/getRightDecorationWidth;

    invoke-static {p1}, Lo/getRightDecorationWidth;->ICustomTabsCallback(Lo/getRightDecorationWidth;)V

    return-void
.end method
