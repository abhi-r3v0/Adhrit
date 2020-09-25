.class Lin/juspay/mystique/InflateView$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/mystique/InflateView;->b(Lorg/json/JSONObject;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:C

.field private d:Ljava/lang/String;

.field private e:Z

.field final synthetic f:Lorg/json/JSONObject;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Landroid/widget/EditText;

.field final synthetic i:Lin/juspay/mystique/InflateView;


# direct methods
.method constructor <init>(Lin/juspay/mystique/InflateView;Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lin/juspay/mystique/InflateView$h;->i:Lin/juspay/mystique/InflateView;

    iput-object p2, p0, Lin/juspay/mystique/InflateView$h;->f:Lorg/json/JSONObject;

    iput-object p3, p0, Lin/juspay/mystique/InflateView$h;->g:Ljava/lang/String;

    iput-object p4, p0, Lin/juspay/mystique/InflateView$h;->h:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object p1, p0, Lin/juspay/mystique/InflateView$h;->f:Lorg/json/JSONObject;

    const-string p2, "separatorRepeat"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lin/juspay/mystique/InflateView$h;->a:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 6
    iput p1, p0, Lin/juspay/mystique/InflateView$h;->b:I

    .line 7
    iget-object p1, p0, Lin/juspay/mystique/InflateView$h;->f:Lorg/json/JSONObject;

    const-string p3, "separator"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lin/juspay/mystique/InflateView$h;->c:C

    .line 10
    iput-boolean p2, p0, Lin/juspay/mystique/InflateView$h;->e:Z

    return-void
.end method

.method private a([C)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 4
    aget-char v2, p1, v1

    if-eqz v2, :cond_0

    .line 5
    aget-char v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lez v1, :cond_0

    .line 7
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lin/juspay/mystique/InflateView$h;->a:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 8
    iget-char v2, p0, Lin/juspay/mystique/InflateView$h;->c:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/text/Editable;)[C
    .locals 6

    const/16 v0, 0x15

    new-array v1, v0, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 17
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    if-ge v3, v0, :cond_1

    .line 18
    invoke-interface {p1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    .line 20
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 21
    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private b(Landroid/text/Editable;)Z
    .locals 6

    .line 1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1a

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 3
    :goto_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    if-lez v3, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 4
    iget v5, p0, Lin/juspay/mystique/InflateView$h;->b:I

    rem-int/2addr v4, v5

    if-nez v4, :cond_2

    .line 5
    iget-char v4, p0, Lin/juspay/mystique/InflateView$h;->c:C

    invoke-interface {p1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 7
    :cond_2
    invoke-interface {p1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    :goto_2
    and-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lin/juspay/mystique/InflateView$h;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lin/juspay/mystique/InflateView$h;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lin/juspay/mystique/InflateView$h;->e:Z

    if-eqz v0, :cond_5

    .line 6
    iget-object v0, p0, Lin/juspay/mystique/InflateView$h;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    new-array v4, v2, [Landroid/text/InputFilter;

    .line 8
    invoke-interface {p1, v4}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 10
    iget-object v4, p0, Lin/juspay/mystique/InflateView$h;->h:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 11
    iput-boolean v2, p0, Lin/juspay/mystique/InflateView$h;->e:Z

    add-int/lit8 v5, v4, 0x1

    .line 13
    iget v6, p0, Lin/juspay/mystique/InflateView$h;->b:I

    rem-int v6, v5, v6

    if-nez v6, :cond_2

    if-eqz v0, :cond_2

    add-int/lit8 v6, v4, -0x1

    .line 14
    invoke-interface {p1, v6, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 17
    :cond_2
    invoke-direct {p0, p1}, Lin/juspay/mystique/InflateView$h;->b(Landroid/text/Editable;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 20
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-direct {p0, p1}, Lin/juspay/mystique/InflateView$h;->a(Landroid/text/Editable;)[C

    move-result-object v7

    invoke-direct {p0, v7}, Lin/juspay/mystique/InflateView$h;->a([C)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v2, v6, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 21
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-char v2, p0, Lin/juspay/mystique/InflateView$h;->c:C

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {p1, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    if-ne v2, v6, :cond_3

    if-eqz v0, :cond_3

    .line 22
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-interface {p1, v2, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_3
    if-eqz v4, :cond_4

    .line 28
    iget v2, p0, Lin/juspay/mystique/InflateView$h;->b:I

    rem-int v2, v4, v2

    if-nez v2, :cond_4

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-le v2, v4, :cond_4

    if-nez v0, :cond_4

    .line 29
    iget-object v0, p0, Lin/juspay/mystique/InflateView$h;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 32
    :cond_4
    iput-boolean v3, p0, Lin/juspay/mystique/InflateView$h;->e:Z

    .line 33
    invoke-interface {p1, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    :cond_5
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/mystique/InflateView$h;->d:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lin/juspay/mystique/InflateView$h;->d:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lin/juspay/mystique/InflateView$h;->e:Z

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lin/juspay/mystique/InflateView$h;->i:Lin/juspay/mystique/InflateView;

    invoke-static {p2}, Lin/juspay/mystique/InflateView;->a(Lin/juspay/mystique/InflateView;)Lin/juspay/mystique/DynamicUI;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "window.callUICallback(\'"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lin/juspay/mystique/InflateView$h;->g:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\', \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
