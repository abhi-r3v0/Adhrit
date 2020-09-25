.class public final Lo/peekValue$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/peekValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0008\u0002\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\rH\u0016J(\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nH\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0002J!\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0002\u00a2\u0006\u0002\u0010\u001aJ(\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\nH\u0016J\u0010\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/dreamplug/utils/ui/ExpiryTextWatcher;",
        "Landroid/text/TextWatcher;",
        "expiryEditText",
        "Landroid/widget/EditText;",
        "textChangeListener",
        "Lkotlin/Function1;",
        "",
        "",
        "(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)V",
        "mLength",
        "",
        "afterTextChanged",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "count",
        "after",
        "getContext",
        "Landroid/content/Context;",
        "isValidMonth",
        "",
        "firstDigit",
        "",
        "secondDigit",
        "(CLjava/lang/Character;)Z",
        "onTextChanged",
        "before",
        "setText",
        "text",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private final extraCallback:Landroid/widget/EditText;

.field private onMessageChannelReady:Lo/onDisconnectSetValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDisconnectSetValue<",
            "-",
            "Ljava/lang/String;",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;Lo/onDisconnectSetValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/EditText;",
            "Lo/onDisconnectSetValue<",
            "-",
            "Ljava/lang/String;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "expiryEditText"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    iput-object p2, p0, Lo/peekValue$onPostMessage;->onMessageChannelReady:Lo/onDisconnectSetValue;

    return-void
.end method

.method private static onPostMessage(CLjava/lang/Character;)Z
    .locals 2

    .line 13088
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 13089
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 13091
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13092
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_2

    if-nez p0, :cond_2

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    if-gt p0, p1, :cond_4

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    if-gt v0, p0, :cond_4

    :cond_3
    return p1

    :cond_4
    return v1
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "s"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1025
    iget-object v2, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1027
    iget v3, v0, Lo/peekValue$onPostMessage;->ICustomTabsCallback:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v3, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "/"

    if-eqz v2, :cond_1

    .line 1030
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "$this$startsWith"

    .line 1332
    invoke-static {v6, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "prefix"

    invoke-static {v3, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1334
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-void

    .line 1033
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v6

    const/4 v7, 0x0

    const-string v8, "0"

    const-string v9, "expiryEditText.context"

    const/4 v10, 0x2

    if-ne v6, v5, :cond_2

    invoke-interface {v1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    .line 2085
    invoke-static {v6, v7}, Lo/peekValue$onPostMessage;->onPostMessage(CLjava/lang/Character;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3078
    iget-object v6, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1035
    sget v7, Lo/removeItemAtIndex$onMessageChannelReady;->two_string_append:I

    new-array v9, v10, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v4

    aput-object v3, v9, v5

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getContext().getString(R\u2026+ s[0].toString(), SLASH)"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    .line 3082
    iget-object v4, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1036
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v6

    if-ne v6, v10, :cond_3

    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-interface {v1, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4078
    iget-object v3, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1037
    sget v6, Lo/removeItemAtIndex$onMessageChannelReady;->two_string_append:I

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v8, v7, v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v5

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getContext().getString(R\u2026REFIX_ZERO, s.toString())"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    .line 4082
    iget-object v4, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1038
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v6

    const-string v11, "getContext().getString(R\u2026).substring(2, s.length))"

    const-string v12, "12"

    const-string v13, "null cannot be cast to non-null type java.lang.String"

    const-string v14, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-le v6, v5, :cond_6

    invoke-interface {v1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    invoke-interface {v1, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v15

    invoke-static {v6, v15}, Lo/peekValue$onPostMessage;->onPostMessage(CLjava/lang/Character;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1039
    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-ne v3, v10, :cond_4

    .line 1041
    check-cast v12, Ljava/lang/CharSequence;

    .line 5082
    iget-object v3, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 6078
    :cond_4
    iget-object v3, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1044
    sget v6, Lo/removeItemAtIndex$onMessageChannelReady;->two_string_append:I

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v12, v7, v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v8

    if-eqz v4, :cond_5

    invoke-virtual {v4, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v7, v5

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    .line 6082
    iget-object v4, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1044
    :cond_5
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v13}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    if-nez v2, :cond_7

    .line 1046
    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v6

    if-ne v6, v10, :cond_7

    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-interface {v1, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v5

    if-eqz v6, :cond_7

    .line 7078
    iget-object v6, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1047
    sget v7, Lo/removeItemAtIndex$onMessageChannelReady;->two_string_append:I

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    aput-object v3, v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getContext().getString(R\u2026t.text.toString(), SLASH)"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    .line 7082
    iget-object v4, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1048
    :cond_7
    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v6

    const/4 v15, 0x3

    if-ne v6, v15, :cond_a

    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-interface {v1, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v5

    if-eqz v6, :cond_a

    if-nez v2, :cond_a

    .line 8078
    iget-object v6, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1049
    sget v7, Lo/removeItemAtIndex$onMessageChannelReady;->two_string_append:I

    new-array v8, v10, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_9

    invoke-virtual {v12, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v4

    if-eqz v3, :cond_8

    invoke-virtual {v3, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    .line 8082
    iget-object v4, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1049
    :cond_8
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v13}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v13}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1050
    :cond_a
    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v6

    if-le v6, v15, :cond_13

    .line 1051
    move-object v6, v1

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v11, 0x6

    invoke-static {v6, v3, v4, v4, v11}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v6

    const/4 v11, -0x1

    if-ne v6, v11, :cond_c

    .line 1054
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_b

    invoke-virtual {v11, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/CharSequence;

    .line 9082
    iget-object v15, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    iget-object v11, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v11, v15}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 1054
    :cond_b
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v13}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_1
    const-string v11, "getContext().getString(R\u2026(indexOfSlash, s.length))"

    if-ltz v6, :cond_e

    if-ge v6, v10, :cond_e

    if-nez v2, :cond_e

    .line 10078
    iget-object v3, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1058
    sget v7, Lo/removeItemAtIndex$onMessageChannelReady;->two_string_append:I

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v12, v8, v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v9

    if-eqz v4, :cond_d

    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v8, v5

    invoke-virtual {v3, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    .line 10082
    iget-object v4, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1058
    :cond_d
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v13}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    if-le v6, v10, :cond_10

    .line 11078
    iget-object v3, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1060
    sget v7, Lo/removeItemAtIndex$onMessageChannelReady;->two_string_append:I

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v12, v8, v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v9

    if-eqz v4, :cond_f

    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v8, v5

    invoke-virtual {v3, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    .line 11082
    iget-object v4, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1060
    :cond_f
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v13}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1061
    :cond_10
    invoke-interface {v1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    .line 11085
    invoke-static {v6, v7}, Lo/peekValue$onPostMessage;->onPostMessage(CLjava/lang/Character;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 1062
    invoke-interface {v1, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v5

    if-eqz v6, :cond_12

    invoke-interface {v1, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 12078
    iget-object v3, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1063
    sget v6, Lo/removeItemAtIndex$onMessageChannelReady;->two_string_append:I

    new-array v7, v10, [Ljava/lang/Object;

    const-string v8, "12/"

    aput-object v8, v7, v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v8

    if-eqz v4, :cond_11

    const/4 v9, 0x3

    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v7, v5

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getContext().getString(R\u2026).substring(3, s.length))"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    .line 12082
    iget-object v4, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1063
    :cond_11
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v13}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13078
    :cond_12
    iget-object v3, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    sget v6, Lo/removeItemAtIndex$onMessageChannelReady;->two_string_append:I

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v8, v7, v4

    aput-object v1, v7, v5

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getContext().getString(R\u2026g_append, PREFIX_ZERO, s)"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    .line 13082
    iget-object v4, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_2
    if-nez v2, :cond_14

    .line 1071
    iget-object v2, v0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 1073
    :cond_14
    iget-object v2, v0, Lo/peekValue$onPostMessage;->onMessageChannelReady:Lo/onDisconnectSetValue;

    if-eqz v2, :cond_15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string/jumbo p2, "s"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    iget-object p1, p0, Lo/peekValue$onPostMessage;->extraCallback:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    iput p1, p0, Lo/peekValue$onPostMessage;->ICustomTabsCallback:I

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string/jumbo p2, "s"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
