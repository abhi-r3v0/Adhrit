.class public final Lo/prepareFromMediaId;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static onPostMessage(Landroid/widget/EdgeEffect;FF)V
    .locals 2

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 153
    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    return-void

    .line 155
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    return-void
.end method
