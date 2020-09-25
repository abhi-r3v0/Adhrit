.class public abstract Lo/lookForSelectablePosition;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppCompatRadioButton;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/AppCompatRadioButton<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract extraCallback(Lo/dispatchFitSystemWindows;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.end method

.method public final extraCallback(Landroid/content/Context;Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;II)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "Landroid/graphics/Bitmap;",
            ">;II)",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-static {p3, p4}, Lo/getHorizontalOffset;->onMessageChannelReady(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->onPostMessage(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p1

    .line 1608
    iget-object p1, p1, Lcom/bumptech/glide/Glide;->extraCallback:Lo/dispatchFitSystemWindows;

    .line 82
    invoke-interface {p2}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/high16 v1, -0x80000000

    if-ne p3, v1, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    :cond_0
    if-ne p4, v1, :cond_1

    .line 84
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    .line 85
    :cond_1
    invoke-virtual {p0, p1, v0, p3, p4}, Lo/lookForSelectablePosition;->extraCallback(Lo/dispatchFitSystemWindows;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 88
    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_0

    .line 91
    :cond_2
    invoke-static {p3, p1}, Lo/dispatchDraw;->onPostMessage(Landroid/graphics/Bitmap;Lo/dispatchFitSystemWindows;)Lo/dispatchDraw;

    move-result-object p2

    :goto_0
    return-object p2

    .line 74
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot apply transformation on width: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " or height: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " less than or equal to zero and not Target.SIZE_ORIGINAL"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
