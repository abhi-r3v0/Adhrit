.class Lcom/revo/evabs/SmaliInject$2;
.super Ljava/lang/Object;
.source "SmaliInject.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/SmaliInject;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/SmaliInject;

.field final synthetic val$labstat:Landroid/widget/TextView;

.field final synthetic val$tvlaboff:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/revo/evabs/SmaliInject;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/revo/evabs/SmaliInject$2;->this$0:Lcom/revo/evabs/SmaliInject;

    iput-object p2, p0, Lcom/revo/evabs/SmaliInject$2;->val$tvlaboff:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/revo/evabs/SmaliInject$2;->val$labstat:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 35
    iget-object p1, p0, Lcom/revo/evabs/SmaliInject$2;->this$0:Lcom/revo/evabs/SmaliInject;

    invoke-virtual {p1}, Lcom/revo/evabs/SmaliInject;->stringFromJNI()Ljava/lang/String;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/revo/evabs/SmaliInject$2;->this$0:Lcom/revo/evabs/SmaliInject;

    iget-object v0, v0, Lcom/revo/evabs/SmaliInject;->SIGNAL:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/revo/evabs/SmaliInject$2;->val$tvlaboff:Landroid/widget/TextView;

    const-string v0, "SYS_CTRL_CODE: LAB_ON"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object p1, p0, Lcom/revo/evabs/SmaliInject$2;->val$labstat:Landroid/widget/TextView;

    const-string v0, "SYS_CTRL: ACCESS_GRANTED. LAB UNLOCKED"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/revo/evabs/SmaliInject$2;->val$tvlaboff:Landroid/widget/TextView;

    const-string v0, "SYS_CTRL_CODE: LAB_OFF"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p1, p0, Lcom/revo/evabs/SmaliInject$2;->val$labstat:Landroid/widget/TextView;

    const-string v0, "SYS_CTRL: ACCESS_DENIED"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
