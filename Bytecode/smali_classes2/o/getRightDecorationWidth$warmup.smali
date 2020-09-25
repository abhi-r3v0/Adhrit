.class final Lo/getRightDecorationWidth$warmup;
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
        "Lo/getChildRectangleOnScreenScrollAmount;",
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
        "barCodeData",
        "Lcom/dreamplug/fabrik/ui/qr/BarCodeData;",
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
.field private synthetic onPostMessage:Lo/getRightDecorationWidth;


# direct methods
.method constructor <init>(Lo/getRightDecorationWidth;)V
    .locals 0

    iput-object p1, p0, Lo/getRightDecorationWidth$warmup;->onPostMessage:Lo/getRightDecorationWidth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 33
    check-cast p1, Lo/getChildRectangleOnScreenScrollAmount;

    if-eqz p1, :cond_0

    .line 2016
    iget-object v0, p1, Lo/getChildRectangleOnScreenScrollAmount;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1152
    iget-object v0, p0, Lo/getRightDecorationWidth$warmup;->onPostMessage:Lo/getRightDecorationWidth;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1153
    check-cast p1, Landroid/os/Parcelable;

    const-string v2, "qr_code_data"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 1152
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1155
    iget-object p1, p0, Lo/getRightDecorationWidth$warmup;->onPostMessage:Lo/getRightDecorationWidth;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
