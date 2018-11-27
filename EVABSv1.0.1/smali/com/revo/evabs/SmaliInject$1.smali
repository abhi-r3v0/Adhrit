.class Lcom/revo/evabs/SmaliInject$1;
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

.field final synthetic val$tvsmalihint:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/revo/evabs/SmaliInject;Landroid/widget/TextView;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/revo/evabs/SmaliInject$1;->this$0:Lcom/revo/evabs/SmaliInject;

    iput-object p2, p0, Lcom/revo/evabs/SmaliInject$1;->val$tvsmalihint:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 26
    iget-object p1, p0, Lcom/revo/evabs/SmaliInject$1;->val$tvsmalihint:Landroid/widget/TextView;

    const-string v0, "apktool? Editing smali? Repackaging?"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
