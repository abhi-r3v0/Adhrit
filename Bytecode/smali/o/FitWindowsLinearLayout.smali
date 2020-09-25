.class public final Lo/FitWindowsLinearLayout;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
.implements Lo/consumeTextFutureAndSetBlocking;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;",
        "Lo/consumeTextFutureAndSetBlocking;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    if-eqz p1, :cond_1

    .line 58
    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lo/FitWindowsLinearLayout;->onNavigationEvent:Landroid/content/res/Resources;

    if-eqz p2, :cond_0

    .line 59
    check-cast p2, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    iput-object p2, p0, Lo/FitWindowsLinearLayout;->extraCallback:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    return-void

    .line 2029
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1029
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static ICustomTabsCallback(Landroid/content/res/Resources;Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_0
    new-instance v0, Lo/FitWindowsLinearLayout;

    invoke-direct {v0, p0, p1}, Lo/FitWindowsLinearLayout;-><init>(Landroid/content/res/Resources;Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;)V

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 86
    iget-object v0, p0, Lo/FitWindowsLinearLayout;->extraCallback:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    instance-of v1, v0, Lo/consumeTextFutureAndSetBlocking;

    if-eqz v1, :cond_0

    .line 87
    check-cast v0, Lo/consumeTextFutureAndSetBlocking;

    invoke-interface {v0}, Lo/consumeTextFutureAndSetBlocking;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method

.method public final extraCallback()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 65
    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public final onMessageChannelReady()V
    .locals 1

    .line 81
    iget-object v0, p0, Lo/FitWindowsLinearLayout;->extraCallback:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    invoke-interface {v0}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onMessageChannelReady()V

    return-void
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 76
    iget-object v0, p0, Lo/FitWindowsLinearLayout;->extraCallback:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    invoke-interface {v0}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onNavigationEvent()I

    move-result v0

    return v0
.end method

.method public final synthetic onPostMessage()Ljava/lang/Object;
    .locals 3

    .line 2071
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lo/FitWindowsLinearLayout;->onNavigationEvent:Landroid/content/res/Resources;

    iget-object v2, p0, Lo/FitWindowsLinearLayout;->extraCallback:Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    invoke-interface {v2}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method
