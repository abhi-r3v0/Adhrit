.class Lorg/npci/upi/security/pinactivitycomponent/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/npci/upi/security/pinactivitycomponent/widget/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/graphics/drawable/Drawable;

.field final synthetic e:Landroid/graphics/drawable/Drawable;

.field final synthetic f:Lorg/npci/upi/security/pinactivitycomponent/a;


# direct methods
.method constructor <init>(Lorg/npci/upi/security/pinactivitycomponent/a;Lorg/npci/upi/security/pinactivitycomponent/widget/a;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/b;->f:Lorg/npci/upi/security/pinactivitycomponent/a;

    iput-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/b;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/a;

    iput-object p3, p0, Lorg/npci/upi/security/pinactivitycomponent/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lorg/npci/upi/security/pinactivitycomponent/b;->c:Ljava/lang/String;

    iput-object p5, p0, Lorg/npci/upi/security/pinactivitycomponent/b;->d:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lorg/npci/upi/security/pinactivitycomponent/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/b;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/a;

    invoke-interface {p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/a;->b()Z

    move-result p1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/b;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/a;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/b;->c:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/b;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/b;->e:Landroid/graphics/drawable/Drawable;

    :goto_1
    move-object v2, p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, p0

    invoke-interface/range {v0 .. v6}, Lorg/npci/upi/security/pinactivitycomponent/widget/a;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;IZZ)V

    return-void
.end method
