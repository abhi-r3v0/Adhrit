.class final Lo/getRightDecorationWidth$ICustomTabsCallback$Stub$Proxy;
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
        "Ljava/lang/String;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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
.field private synthetic ICustomTabsCallback:Lo/getRightDecorationWidth;


# direct methods
.method constructor <init>(Lo/getRightDecorationWidth;)V
    .locals 0

    iput-object p1, p0, Lo/getRightDecorationWidth$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/getRightDecorationWidth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 33
    check-cast p1, Ljava/lang/String;

    .line 1160
    iget-object v0, p0, Lo/getRightDecorationWidth$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/getRightDecorationWidth;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "promo_code_data"

    .line 1161
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 1160
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1164
    iget-object p1, p0, Lo/getRightDecorationWidth$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/getRightDecorationWidth;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
