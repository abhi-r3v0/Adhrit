.class public final Lo/positionSelectorLikeTouchCompat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppCompatRadioButton;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/AppCompatRadioButton<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/AppCompatRadioButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AppCompatRadioButton<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Z


# direct methods
.method public constructor <init>(Lo/AppCompatRadioButton;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AppCompatRadioButton<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lo/positionSelectorLikeTouchCompat;->extraCallback:Lo/AppCompatRadioButton;

    .line 37
    iput-boolean p2, p0, Lo/positionSelectorLikeTouchCompat;->onPostMessage:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 81
    instance-of v0, p1, Lo/positionSelectorLikeTouchCompat;

    if-eqz v0, :cond_0

    .line 82
    check-cast p1, Lo/positionSelectorLikeTouchCompat;

    .line 83
    iget-object v0, p0, Lo/positionSelectorLikeTouchCompat;->extraCallback:Lo/AppCompatRadioButton;

    iget-object p1, p1, Lo/positionSelectorLikeTouchCompat;->extraCallback:Lo/AppCompatRadioButton;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final extraCallback(Landroid/content/Context;Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;II)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "Landroid/graphics/drawable/Drawable;",
            ">;II)",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->onPostMessage(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    .line 1608
    iget-object v0, v0, Lcom/bumptech/glide/Glide;->extraCallback:Lo/dispatchFitSystemWindows;

    .line 50
    invoke-interface {p2}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 52
    invoke-static {v0, v1, p3, p4}, Lo/positionSelectorLikeFocusCompat;->onNavigationEvent(Lo/dispatchFitSystemWindows;Landroid/graphics/drawable/Drawable;II)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    move-result-object v0

    if-nez v0, :cond_1

    .line 54
    iget-boolean p1, p0, Lo/positionSelectorLikeTouchCompat;->onPostMessage:Z

    if-nez p1, :cond_0

    return-object p2

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unable to convert "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to a Bitmap"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_1
    iget-object v1, p0, Lo/positionSelectorLikeTouchCompat;->extraCallback:Lo/AppCompatRadioButton;

    .line 61
    invoke-interface {v1, p1, v0, p3, p4}, Lo/AppCompatRadioButton;->extraCallback(Landroid/content/Context;Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;II)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    move-result-object p3

    .line 63
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 64
    invoke-interface {p3}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onMessageChannelReady()V

    return-object p2

    .line 2075
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p3}, Lo/FitWindowsLinearLayout;->ICustomTabsCallback(Landroid/content/res/Resources;Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 90
    iget-object v0, p0, Lo/positionSelectorLikeTouchCompat;->extraCallback:Lo/AppCompatRadioButton;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(Ljava/security/MessageDigest;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lo/positionSelectorLikeTouchCompat;->extraCallback:Lo/AppCompatRadioButton;

    invoke-interface {v0, p1}, Lo/AppCompatRadioButton;->onNavigationEvent(Ljava/security/MessageDigest;)V

    return-void
.end method
