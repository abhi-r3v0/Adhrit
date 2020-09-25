.class Lorg/npci/upi/security/pinactivitycomponent/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/npci/upi/security/pinactivitycomponent/ae;


# direct methods
.method constructor <init>(Lorg/npci/upi/security/pinactivitycomponent/ae;)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/aj;->a:Lorg/npci/upi/security/pinactivitycomponent/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/aj;->a:Lorg/npci/upi/security/pinactivitycomponent/ae;

    iget v0, v0, Lorg/npci/upi/security/pinactivitycomponent/ae;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/aj;->a:Lorg/npci/upi/security/pinactivitycomponent/ae;

    iget-object v0, v0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/aj;->a:Lorg/npci/upi/security/pinactivitycomponent/ae;

    iget v1, v1, Lorg/npci/upi/security/pinactivitycomponent/ae;->g:I

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/aj;->a:Lorg/npci/upi/security/pinactivitycomponent/ae;

    iget-object v0, v0, Lorg/npci/upi/security/pinactivitycomponent/ae;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/aj;->a:Lorg/npci/upi/security/pinactivitycomponent/ae;

    iget v1, v1, Lorg/npci/upi/security/pinactivitycomponent/ae;->g:I

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Z)V

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/aj;->a:Lorg/npci/upi/security/pinactivitycomponent/ae;

    sget v2, Lorg/npci/upi/security/pinactivitycomponent/R$string;->action_resend:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/aj;->a:Lorg/npci/upi/security/pinactivitycomponent/ae;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    sget v3, Lorg/npci/upi/security/pinactivitycomponent/R$drawable;->ic_action_reload:I

    invoke-static {v0, v3}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Lorg/npci/upi/security/pinactivitycomponent/ak;

    invoke-direct {v4, p0, v1}, Lorg/npci/upi/security/pinactivitycomponent/ak;-><init>(Lorg/npci/upi/security/pinactivitycomponent/aj;Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;IZZ)V

    :cond_0
    return-void
.end method
