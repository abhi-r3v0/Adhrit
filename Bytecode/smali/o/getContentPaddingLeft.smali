.class public Lo/getContentPaddingLeft;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getContentPaddingLeft$extraCallback;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/setCardElevation;

.field private ICustomTabsCallback$Stub:Ljava/lang/String;

.field private extraCallback:Lo/zzb;

.field private onMessageChannelReady:I

.field private onNavigationEvent:Z

.field private onPostMessage:Lo/getContentPaddingLeft$extraCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lo/getContentPaddingLeft;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lo/getContentPaddingLeft;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 1070
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1071
    invoke-virtual {p0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1072
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Lo/getSwitchMinWidth$onMessageChannelReady;->ImageEditText:[I

    invoke-virtual {p3, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    const/16 v0, 0xa

    .line 1073
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lo/getContentPaddingLeft;->onMessageChannelReady:I

    .line 1074
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lo/getContentPaddingLeft;->onNavigationEvent:Z

    .line 1075
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1076
    invoke-virtual {p0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 93
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    iget v0, p0, Lo/getContentPaddingLeft;->onMessageChannelReady:I

    const v1, 0x7f14012d

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 94
    iget-object p1, p0, Lo/getContentPaddingLeft;->ICustomTabsCallback:Lo/setCardElevation;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/setCardElevation;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0601de

    invoke-static {p1, v0}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    iget-object p1, p0, Lo/getContentPaddingLeft;->onPostMessage:Lo/getContentPaddingLeft$extraCallback;

    goto :goto_1

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 101
    iget-boolean p1, p0, Lo/getContentPaddingLeft;->onNavigationEvent:Z

    if-eqz p1, :cond_1

    const p1, 0x7f0804b8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v2, v2, p1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 102
    iget-object p1, p0, Lo/getContentPaddingLeft;->onPostMessage:Lo/getContentPaddingLeft$extraCallback;

    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 108
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 110
    :goto_1
    iget-object p1, p0, Lo/getContentPaddingLeft;->onPostMessage:Lo/getContentPaddingLeft$extraCallback;

    if-eqz p1, :cond_3

    .line 111
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/getContentPaddingLeft;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lo/getContentPaddingLeft$extraCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 82
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/getContentPaddingLeft;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 119
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p3, 0x42

    if-eq p1, p3, :cond_1

    :cond_0
    const/4 p1, 0x6

    if-ne p2, p1, :cond_2

    .line 120
    :cond_1
    iget-object p1, p0, Lo/getContentPaddingLeft;->extraCallback:Lo/zzb;

    if-eqz p1, :cond_2

    .line 121
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    invoke-interface {p1}, Lo/zzb;->extraCallback()Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setCharInputType(Ljava/lang/String;)V
    .locals 2

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x761430b7

    if-eq v0, v1, :cond_1

    const v1, 0x24728b

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "NAME"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "NUMBER"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    .line 43
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1304d1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    :goto_2
    return-void
.end method

.method public setNumberEnteredListener(Lo/getContentPaddingLeft$extraCallback;)V
    .locals 1

    const/4 v0, -0x1

    .line 31
    invoke-virtual {p0, p1, v0}, Lo/getContentPaddingLeft;->setNumberEnteredListener(Lo/getContentPaddingLeft$extraCallback;I)V

    return-void
.end method

.method public setNumberEnteredListener(Lo/getContentPaddingLeft$extraCallback;I)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, p1, p2, v0}, Lo/getContentPaddingLeft;->setNumberEnteredListener(Lo/getContentPaddingLeft$extraCallback;ILo/setCardElevation;)V

    return-void
.end method

.method public setNumberEnteredListener(Lo/getContentPaddingLeft$extraCallback;ILo/setCardElevation;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lo/getContentPaddingLeft;->onPostMessage:Lo/getContentPaddingLeft$extraCallback;

    .line 36
    iput p2, p0, Lo/getContentPaddingLeft;->onMessageChannelReady:I

    .line 37
    iput-object p3, p0, Lo/getContentPaddingLeft;->ICustomTabsCallback:Lo/setCardElevation;

    return-void
.end method

.method public setOnEditTextImeBackListener(Lo/zzb;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lo/getContentPaddingLeft;->extraCallback:Lo/zzb;

    return-void
.end method
