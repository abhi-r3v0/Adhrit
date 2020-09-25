.class public final Lo/getDividerDrawable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppCompatRadioButton;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/AppCompatRadioButton<",
        "Lo/toGlobalMotionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final onPostMessage:Lo/AppCompatRadioButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AppCompatRadioButton<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/AppCompatRadioButton;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AppCompatRadioButton<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 23
    check-cast p1, Lo/AppCompatRadioButton;

    iput-object p1, p0, Lo/getDividerDrawable;->onPostMessage:Lo/AppCompatRadioButton;

    return-void

    .line 1029
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Argument must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 55
    instance-of v0, p1, Lo/getDividerDrawable;

    if-eqz v0, :cond_0

    .line 56
    check-cast p1, Lo/getDividerDrawable;

    .line 57
    iget-object v0, p0, Lo/getDividerDrawable;->onPostMessage:Lo/AppCompatRadioButton;

    iget-object p1, p1, Lo/getDividerDrawable;->onPostMessage:Lo/AppCompatRadioButton;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final extraCallback(Landroid/content/Context;Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;II)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "Lo/toGlobalMotionEvent;",
            ">;II)",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "Lo/toGlobalMotionEvent;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-interface {p2}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/toGlobalMotionEvent;

    .line 40
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->onPostMessage(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v1

    .line 1608
    iget-object v1, v1, Lcom/bumptech/glide/Glide;->extraCallback:Lo/dispatchFitSystemWindows;

    .line 2155
    iget-object v2, v0, Lo/toGlobalMotionEvent;->onNavigationEvent:Lo/toGlobalMotionEvent$extraCallback;

    iget-object v2, v2, Lo/toGlobalMotionEvent$extraCallback;->onNavigationEvent:Lo/getShowDividers;

    .line 3118
    iget-object v2, v2, Lo/getShowDividers;->asInterface:Landroid/graphics/Bitmap;

    .line 42
    new-instance v3, Lo/dispatchDraw;

    invoke-direct {v3, v2, v1}, Lo/dispatchDraw;-><init>(Landroid/graphics/Bitmap;Lo/dispatchFitSystemWindows;)V

    .line 43
    iget-object v1, p0, Lo/getDividerDrawable;->onPostMessage:Lo/AppCompatRadioButton;

    invoke-interface {v1, p1, v3, p3, p4}, Lo/AppCompatRadioButton;->extraCallback(Landroid/content/Context;Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;II)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    move-result-object p1

    .line 44
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 45
    invoke-interface {v3}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onMessageChannelReady()V

    .line 47
    :cond_0
    invoke-interface {p1}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onPostMessage()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 49
    iget-object p3, p0, Lo/getDividerDrawable;->onPostMessage:Lo/AppCompatRadioButton;

    .line 3162
    iget-object p4, v0, Lo/toGlobalMotionEvent;->onNavigationEvent:Lo/toGlobalMotionEvent$extraCallback;

    iget-object p4, p4, Lo/toGlobalMotionEvent$extraCallback;->onNavigationEvent:Lo/getShowDividers;

    invoke-virtual {p4, p3, p1}, Lo/getShowDividers;->ICustomTabsCallback(Lo/AppCompatRadioButton;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public final hashCode()I
    .locals 1

    .line 64
    iget-object v0, p0, Lo/getDividerDrawable;->onPostMessage:Lo/AppCompatRadioButton;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(Ljava/security/MessageDigest;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lo/getDividerDrawable;->onPostMessage:Lo/AppCompatRadioButton;

    invoke-interface {v0, p1}, Lo/AppCompatRadioButton;->onNavigationEvent(Ljava/security/MessageDigest;)V

    return-void
.end method
