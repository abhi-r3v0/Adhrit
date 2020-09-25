.class public final Lo/setInitialSavedState$extraCallback;
.super Lo/setInitialSavedState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setInitialSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0011\u001a\u00020\u0012H\u0016R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/assets/Background$Gradient;",
        "Lcom/dreamplug/fabrik/helper/assets/Background;",
        "id",
        "",
        "direction",
        "Landroid/graphics/drawable/GradientDrawable$Orientation;",
        "colors",
        "",
        "",
        "type",
        "(Ljava/lang/String;Landroid/graphics/drawable/GradientDrawable$Orientation;Ljava/util/List;I)V",
        "getColors",
        "()Ljava/util/List;",
        "getDirection",
        "()Landroid/graphics/drawable/GradientDrawable$Orientation;",
        "getType",
        "()I",
        "toGradientResponseModel",
        "Lcom/dreamplug/fabrik/helper/assets/helper/GradientResponseModel;",
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
.field public final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:Landroid/graphics/drawable/GradientDrawable$Orientation;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/GradientDrawable$Orientation;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/GradientDrawable$Orientation;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colors"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lo/setInitialSavedState;-><init>(Ljava/lang/String;B)V

    iput-object p2, p0, Lo/setInitialSavedState$extraCallback;->onNavigationEvent:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object p3, p0, Lo/setInitialSavedState$extraCallback;->extraCallback:Ljava/util/List;

    iput p4, p0, Lo/setInitialSavedState$extraCallback;->onMessageChannelReady:I

    return-void
.end method
