.class Lcom/revo/evabs/Frida1$1;
.super Ljava/lang/Object;
.source "Frida1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/Frida1;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/Frida1;

.field final synthetic val$tvhint:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/revo/evabs/Frida1;Landroid/widget/TextView;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/revo/evabs/Frida1$1;->this$0:Lcom/revo/evabs/Frida1;

    iput-object p2, p0, Lcom/revo/evabs/Frida1$1;->val$tvhint:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 27
    iget-object p1, p0, Lcom/revo/evabs/Frida1$1;->val$tvhint:Landroid/widget/TextView;

    const-string v0, "``Dynamic instrumentation`` what?"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
