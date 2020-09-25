.class public final Lo/getChangingConfigurations$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getChangingConfigurations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J*\u0010\u0014\u001a\u00020\u00112\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0006H\u0016J*\u0010\u001a\u001a\u00020\u00112\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0006H\u0016J\n\u0010\u001f\u001a\u00020 *\u00020 R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0008\"\u0004\u0008\u000f\u0010\n\u00a8\u0006!"
    }
    d2 = {
        "Lcom/dreamplug/utils/ui/NumberFormatTextWatcher;",
        "Landroid/text/TextWatcher;",
        "editText",
        "Landroid/widget/EditText;",
        "(Landroid/widget/EditText;)V",
        "cursorPos",
        "",
        "getCursorPos",
        "()I",
        "setCursorPos",
        "(I)V",
        "getEditText",
        "()Landroid/widget/EditText;",
        "removeChar",
        "getRemoveChar",
        "setRemoveChar",
        "afterTextChanged",
        "",
        "editable",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "chars",
        "",
        "start",
        "count",
        "after",
        "onTextChanged",
        "p0",
        "p1",
        "p2",
        "p3",
        "toFormattedNumber",
        "",
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

.field private onMessageChannelReady:I

.field private final onPostMessage:Landroid/widget/EditText;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    const-string v0, "editText"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getChangingConfigurations$onMessageChannelReady;->onPostMessage:Landroid/widget/EditText;

    const/4 p1, -0x1

    .line 5012
    iput p1, p0, Lo/getChangingConfigurations$onMessageChannelReady;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1018
    iget-object v2, v0, Lo/getChangingConfigurations$onMessageChannelReady;->onPostMessage:Landroid/widget/EditText;

    move-object v3, v0

    check-cast v3, Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1020
    iget v2, v0, Lo/getChangingConfigurations$onMessageChannelReady;->onMessageChannelReady:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    if-eqz v1, :cond_0

    add-int/lit8 v5, v2, 0x1

    .line 1021
    invoke-interface {v1, v2, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1022
    :cond_0
    iput v4, v0, Lo/getChangingConfigurations$onMessageChannelReady;->onMessageChannelReady:I

    :cond_1
    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 1024
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string v5, ","

    const-string v6, ""

    .line 1075
    invoke-static {v4, v5, v6, v2}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string v6, "$this$toFormattedNumber"

    .line 1024
    invoke-static {v4, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2037
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_2

    move-object/from16 v16, v3

    goto/16 :goto_2

    :cond_2
    const-string v7, "0"

    const-string v8, "$this$startsWith"

    .line 2332
    invoke-static {v4, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "prefix"

    invoke-static {v7, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2334
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const-string v10, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    const/4 v11, 0x6

    const-string v12, "##,##,##0"

    const-string v13, "."

    if-eqz v7, :cond_9

    .line 2039
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2040
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    move-object v7, v13

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7}, Lo/childWrites;->onPostMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljava/text/DecimalFormat;

    invoke-direct {v14, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v13, v2, v2, v11}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v12

    const-string v15, "null cannot be cast to non-null type java.lang.String"

    if-eqz v4, :cond_4

    invoke-virtual {v4, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v3

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-static {v6, v13, v2, v2, v11}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v4, :cond_3

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v15}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v15}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move-object/from16 v16, v3

    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string/jumbo v3, "result"

    .line 2041
    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "null cannot be cast to non-null type kotlin.CharSequence"

    if-eqz v2, :cond_8

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lo/childWrites;->onNavigationEvent(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3332
    invoke-static {v2, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3334
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v2, :cond_6

    .line 2042
    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lo/childWrites;->onNavigationEvent(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_1
    move-object v4, v2

    goto :goto_2

    .line 2041
    :cond_8
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    move-object/from16 v16, v3

    .line 2046
    move-object v2, v13

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v6, v2}, Lo/childWrites;->onPostMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v6, v13, v5, v5, v11}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v7

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v13, v5, v5, v11}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 2047
    :cond_a
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    const-string v2, "DecimalFormat(\"##,##,##0\").format(this.toLong())"

    invoke-static {v4, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    move-object/from16 v16, v3

    const/4 v4, 0x0

    :goto_2
    if-eqz v1, :cond_c

    .line 1025
    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v2

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_3

    :cond_c
    const/4 v3, 0x0

    .line 1026
    :goto_3
    iget-object v1, v0, Lo/getChangingConfigurations$onMessageChannelReady;->onPostMessage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v2

    iget v4, v0, Lo/getChangingConfigurations$onMessageChannelReady;->ICustomTabsCallback:I

    sub-int/2addr v2, v4

    if-lez v2, :cond_d

    iget-object v2, v0, Lo/getChangingConfigurations$onMessageChannelReady;->onPostMessage:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    iget v3, v0, Lo/getChangingConfigurations$onMessageChannelReady;->ICustomTabsCallback:I

    sub-int/2addr v2, v3

    goto :goto_4

    :cond_d
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1027
    iget-object v1, v0, Lo/getChangingConfigurations$onMessageChannelReady;->onPostMessage:Landroid/widget/EditText;

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4031
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-lez p4, :cond_0

    const/4 p4, 0x1

    if-ne p3, p4, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 p3, 0x2c

    if-ne p1, p3, :cond_0

    sub-int/2addr p2, p4

    .line 4032
    iput p2, p0, Lo/getChangingConfigurations$onMessageChannelReady;->onMessageChannelReady:I

    :cond_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1014
    iget-object p1, p0, Lo/getChangingConfigurations$onMessageChannelReady;->onPostMessage:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object p2, p0, Lo/getChangingConfigurations$onMessageChannelReady;->onPostMessage:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lo/getChangingConfigurations$onMessageChannelReady;->ICustomTabsCallback:I

    return-void
.end method
