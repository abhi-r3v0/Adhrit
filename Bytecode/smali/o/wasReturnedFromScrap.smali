.class public final Lo/wasReturnedFromScrap;
.super Landroidx/appcompat/widget/AppCompatButton;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u0019H\u0016J\u001c\u0010\u001c\u001a\u00020\u00172\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0012\u0010!\u001a\u00020\u00172\u0008\u0008\u0002\u0010\"\u001a\u00020\nH\u0002R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006#"
    }
    d2 = {
        "Lcom/dreamplug/ui/RingButton;",
        "Landroidx/appcompat/widget/AppCompatButton;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "externalTextView",
        "Landroid/widget/TextView;",
        "getExternalTextView",
        "()Landroid/widget/TextView;",
        "setExternalTextView",
        "(Landroid/widget/TextView;)V",
        "value",
        "",
        "ringAngle",
        "getRingAngle",
        "()F",
        "setRingAngle",
        "(F)V",
        "setEnabled",
        "",
        "enabled",
        "",
        "setPressed",
        "pressed",
        "setText",
        "text",
        "",
        "type",
        "Landroid/widget/TextView$BufferType;",
        "updateColors",
        "tv",
        "uikit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private onMessageChannelReady:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lo/wasReturnedFromScrap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lo/wasReturnedFromScrap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 25

    move-object/from16 v0, p0

    const-string v1, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct/range {p0 .. p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, -0x101009e

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 32
    new-instance v4, Lo/clearReturnedFromScrapFlag;

    move-object v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0xffff

    invoke-direct/range {v6 .. v24}, Lo/clearReturnedFromScrapFlag;-><init>(FFFFFFIIFFF[I[I[I[IZZI)V

    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 31
    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v2, [I

    const v3, 0x10100a7

    aput v3, v2, v5

    .line 34
    new-instance v3, Lo/clearReturnedFromScrapFlag;

    move-object v6, v3

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x7fff

    invoke-direct/range {v6 .. v24}, Lo/clearReturnedFromScrapFlag;-><init>(FFFFFFIIFFF[I[I[I[IZZI)V

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 33
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v5, [I

    .line 35
    new-instance v22, Lo/clearReturnedFromScrapFlag;

    move-object/from16 v3, v22

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const v21, 0xffff

    invoke-direct/range {v3 .. v21}, Lo/clearReturnedFromScrapFlag;-><init>(FFFFFFIIFFF[I[I[I[IZZI)V

    move-object/from16 v3, v22

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 30
    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lo/wasReturnedFromScrap;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4050
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lo/wasReturnedFromScrap;->onPostMessage(Landroid/widget/TextView;)V

    return-void
.end method

.method private synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lo/wasReturnedFromScrap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final onPostMessage(Landroid/widget/TextView;)V
    .locals 2

    .line 52
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;[I)V

    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;[I)V

    goto :goto_1

    :cond_1
    new-array v0, v1, [I

    .line 54
    fill-array-data v0, :array_2

    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/widget/TextView;[I)V

    .line 58
    :goto_1
    move-object v0, p0

    check-cast v0, Lo/wasReturnedFromScrap;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 59
    iget-object p1, p0, Lo/wasReturnedFromScrap;->onMessageChannelReady:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x7782fbfe
        0x7719a5a8
    .end array-data

    :array_1
    .array-data 4
        -0x7d0402
        -0xe65a58
    .end array-data

    :array_2
    .array-data 4
        -0xaca9a8
        -0xb4b1b0
    .end array-data
.end method


# virtual methods
.method public final setEnabled(Z)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 1050
    move-object p1, p0

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lo/wasReturnedFromScrap;->onPostMessage(Landroid/widget/TextView;)V

    return-void
.end method

.method public final setExternalTextView(Landroid/widget/TextView;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lo/wasReturnedFromScrap;->onMessageChannelReady:Landroid/widget/TextView;

    return-void
.end method

.method public final setPressed(Z)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setPressed(Z)V

    const/4 v0, 0x2

    const/16 v1, 0x1c

    if-eqz p1, :cond_0

    .line 66
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_1

    const/4 p1, 0x3

    .line 67
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    goto :goto_0

    .line 70
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_1

    const/4 p1, 0x7

    .line 71
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 3050
    :cond_1
    :goto_0
    move-object p1, p0

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lo/wasReturnedFromScrap;->onPostMessage(Landroid/widget/TextView;)V

    return-void
.end method

.method public final setRingAngle(F)V
    .locals 0

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2050
    move-object p1, p0

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lo/wasReturnedFromScrap;->onPostMessage(Landroid/widget/TextView;)V

    return-void
.end method
