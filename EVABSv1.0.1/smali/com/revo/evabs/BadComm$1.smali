.class Lcom/revo/evabs/BadComm$1;
.super Ljava/lang/Object;
.source "BadComm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/BadComm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/BadComm;

.field final synthetic val$hintcom:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/revo/evabs/BadComm;Landroid/widget/TextView;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/revo/evabs/BadComm$1;->this$0:Lcom/revo/evabs/BadComm;

    iput-object p2, p0, Lcom/revo/evabs/BadComm$1;->val$hintcom:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lcom/revo/evabs/BadComm$1;->val$hintcom:Landroid/widget/TextView;

    const-string v0, "Can we intercept the traffic coming from/going to a server on Android, and maybe, modify it?"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
