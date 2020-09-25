.class public Lo/getCreated_by;
.super Lo/getFingerprint;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/getFingerprint;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final onPostMessage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onPostMessage(Landroid/content/Context;Landroid/webkit/WebSettings;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lo/getFingerprint;->onPostMessage(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    const/4 p1, 0x1

    return p1
.end method
