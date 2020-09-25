.class Lorg/npci/upi/security/pinactivitycomponent/widget/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;


# direct methods
.method constructor <init>(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/j;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/j;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-static {v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->e(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/j;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/j;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-static {v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->f(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/j;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_2

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/j;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-static {p1, v1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_2
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/j;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-static {v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->g(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-le v0, v2, :cond_3

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/j;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-static {p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->g(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/j;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-static {v2}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->g(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x25cf

    if-eq v0, v2, :cond_4

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/j;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-static {p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->g(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/j;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-static {p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->g(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    const-string v1, "\u25cf"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/j;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-static {v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->b(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/j;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-static {v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->b(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/j;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-static {p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)Lorg/npci/upi/security/pinactivitycomponent/widget/m;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/j;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-static {p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->b(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/j;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-static {p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->b(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    iget-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/j;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-static {p2}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->c(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)I

    move-result p2

    if-lt p1, p2, :cond_1

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/j;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-static {p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)Lorg/npci/upi/security/pinactivitycomponent/widget/m;

    move-result-object p1

    iget-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/j;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-static {p2}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->d(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)I

    move-result p2

    iget-object p3, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/j;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-static {p3}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->b(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/npci/upi/security/pinactivitycomponent/widget/m;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
