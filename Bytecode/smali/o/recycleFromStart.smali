.class public final Lo/recycleFromStart;
.super Lo/getPhoneNumber;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000c\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\"\u001a\u00020\u001dH\u0002J\u001c\u0010#\u001a\u00020\u001d2\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0008\u0008\u0002\u0010&\u001a\u00020\tH\u0002R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/dreamplug/widget/PatternEditText;",
        "Lcom/google/android/material/textfield/TextInputEditText;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "cardNumberLength",
        "value",
        "",
        "pattern",
        "getPattern",
        "()Ljava/lang/String;",
        "setPattern",
        "(Ljava/lang/String;)V",
        "replaceChar",
        "",
        "getReplaceChar",
        "()C",
        "setReplaceChar",
        "(C)V",
        "spaceIndexes",
        "",
        "textChangeLisener",
        "Lkotlin/Function1;",
        "",
        "getTextChangeLisener",
        "()Lkotlin/jvm/functions/Function1;",
        "setTextChangeLisener",
        "(Lkotlin/jvm/functions/Function1;)V",
        "init",
        "updateEditable",
        "editable",
        "Landroid/text/Editable;",
        "spaceRemovedIndex",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field ICustomTabsCallback:C

.field public extraCallback:Ljava/lang/String;

.field private onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:Lo/onDisconnectSetValue;
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Lo/getPhoneNumber;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lo/recycleFromStart;->onMessageChannelReady:Ljava/util/List;

    const-string p1, ""

    .line 61
    iput-object p1, p0, Lo/recycleFromStart;->extraCallback:Ljava/lang/String;

    const/16 p1, 0x20

    .line 75
    iput-char p1, p0, Lo/recycleFromStart;->ICustomTabsCallback:C

    const-string v0, "XXXX-XXXX-XXXX-XXXX"

    .line 2027
    invoke-virtual {p0, v0}, Lo/recycleFromStart;->setPattern(Ljava/lang/String;)V

    .line 2028
    iput-char p1, p0, Lo/recycleFromStart;->ICustomTabsCallback:C

    .line 2029
    new-instance p1, Lo/recycleFromStart$onNavigationEvent;

    invoke-direct {p1, p0}, Lo/recycleFromStart$onNavigationEvent;-><init>(Lo/recycleFromStart;)V

    check-cast p1, Landroid/text/TextWatcher;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2}, Lo/getPhoneNumber;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lo/recycleFromStart;->onMessageChannelReady:Ljava/util/List;

    const-string p1, ""

    .line 61
    iput-object p1, p0, Lo/recycleFromStart;->extraCallback:Ljava/lang/String;

    const/16 p1, 0x20

    .line 75
    iput-char p1, p0, Lo/recycleFromStart;->ICustomTabsCallback:C

    const-string p2, "XXXX-XXXX-XXXX-XXXX"

    .line 3027
    invoke-virtual {p0, p2}, Lo/recycleFromStart;->setPattern(Ljava/lang/String;)V

    .line 3028
    iput-char p1, p0, Lo/recycleFromStart;->ICustomTabsCallback:C

    .line 3029
    new-instance p1, Lo/recycleFromStart$onNavigationEvent;

    invoke-direct {p1, p0}, Lo/recycleFromStart$onNavigationEvent;-><init>(Lo/recycleFromStart;)V

    check-cast p1, Landroid/text/TextWatcher;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lo/getPhoneNumber;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lo/recycleFromStart;->onMessageChannelReady:Ljava/util/List;

    const-string p1, ""

    .line 61
    iput-object p1, p0, Lo/recycleFromStart;->extraCallback:Ljava/lang/String;

    const/16 p1, 0x20

    .line 75
    iput-char p1, p0, Lo/recycleFromStart;->ICustomTabsCallback:C

    const-string p2, "XXXX-XXXX-XXXX-XXXX"

    .line 4027
    invoke-virtual {p0, p2}, Lo/recycleFromStart;->setPattern(Ljava/lang/String;)V

    .line 4028
    iput-char p1, p0, Lo/recycleFromStart;->ICustomTabsCallback:C

    .line 4029
    new-instance p1, Lo/recycleFromStart$onNavigationEvent;

    invoke-direct {p1, p0}, Lo/recycleFromStart$onNavigationEvent;-><init>(Lo/recycleFromStart;)V

    check-cast p1, Landroid/text/TextWatcher;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/recycleFromStart;Landroid/text/Editable;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lo/recycleFromStart;->onPostMessage(Landroid/text/Editable;I)V

    return-void
.end method

.method private final onPostMessage(Landroid/text/Editable;I)V
    .locals 5

    if-eqz p1, :cond_8

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    add-int/lit8 v0, p2, -0x1

    .line 80
    invoke-interface {p1, v0, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-void

    .line 84
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const-string v2, ""

    if-ge v1, p2, :cond_3

    .line 85
    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    .line 86
    iget-char v4, p0, Lo/recycleFromStart;->ICustomTabsCallback:C

    if-ne v3, v4, :cond_2

    .line 87
    iget-object v3, p0, Lo/recycleFromStart;->onMessageChannelReady:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_2

    :cond_1
    add-int/lit8 p2, v1, 0x1

    .line 88
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {p1, v1, p2, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_3
    iget-object p2, p0, Lo/recycleFromStart;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :goto_1
    if-ge v0, p2, :cond_6

    .line 94
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    iget-object v3, p0, Lo/recycleFromStart;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-le v1, v3, :cond_6

    .line 95
    iget-object v1, p0, Lo/recycleFromStart;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    iget-char v3, p0, Lo/recycleFromStart;->ICustomTabsCallback:C

    if-eq v1, v3, :cond_5

    .line 96
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p2

    iget-object v1, p0, Lo/recycleFromStart;->extraCallback:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p2, v1, :cond_4

    .line 97
    iget-object p2, p0, Lo/recycleFromStart;->extraCallback:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {p1, p2, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void

    .line 100
    :cond_4
    iget-object p2, p0, Lo/recycleFromStart;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iget-char v0, p0, Lo/recycleFromStart;->ICustomTabsCallback:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1, p2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_6
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p2

    iget-object v0, p0, Lo/recycleFromStart;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_7

    .line 108
    iget-object p2, p0, Lo/recycleFromStart;->extraCallback:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {p1, p2, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void

    .line 111
    :cond_7
    iget-object p2, p0, Lo/recycleFromStart;->onPostMessage:Lo/onDisconnectSetValue;

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method


# virtual methods
.method public final setPattern(Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lo/recycleFromStart;->extraCallback:Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lo/recycleFromStart;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 65
    iget-object p1, p0, Lo/recycleFromStart;->extraCallback:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const-string v0, "(this as java.lang.String).toCharArray()"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-char v4, p1, v2

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x2d

    if-ne v4, v6, :cond_0

    .line 67
    iget-object v4, p0, Lo/recycleFromStart;->onMessageChannelReady:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    .line 70
    :cond_1
    iget-object p1, p0, Lo/recycleFromStart;->extraCallback:Ljava/lang/String;

    const-string v0, "-"

    const-string v2, ""

    invoke-static {p1, v0, v2, v1}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/text/InputFilter;

    .line 71
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    iget-object v2, p0, Lo/recycleFromStart;->extraCallback:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    check-cast v0, Landroid/text/InputFilter;

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 72
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const/4 v0, -0x1

    .line 1077
    invoke-direct {p0, p1, v0}, Lo/recycleFromStart;->onPostMessage(Landroid/text/Editable;I)V

    return-void

    .line 65
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setReplaceChar(C)V
    .locals 0

    .line 75
    iput-char p1, p0, Lo/recycleFromStart;->ICustomTabsCallback:C

    return-void
.end method

.method public final setTextChangeLisener(Lo/onDisconnectSetValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDisconnectSetValue<",
            "-",
            "Ljava/lang/String;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lo/recycleFromStart;->onPostMessage:Lo/onDisconnectSetValue;

    return-void
.end method
