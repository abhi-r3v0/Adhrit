.class Lcom/revo/evabs/Welcome0$1;
.super Ljava/lang/Object;
.source "Welcome0.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/Welcome0;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/Welcome0;


# direct methods
.method constructor <init>(Lcom/revo/evabs/Welcome0;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/revo/evabs/Welcome0$1;->this$0:Lcom/revo/evabs/Welcome0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 25
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/revo/evabs/Welcome0$1;->this$0:Lcom/revo/evabs/Welcome0;

    const-class v1, Lcom/revo/evabs/Welcome;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    iget-object v0, p0, Lcom/revo/evabs/Welcome0$1;->this$0:Lcom/revo/evabs/Welcome0;

    invoke-virtual {v0, p1}, Lcom/revo/evabs/Welcome0;->startActivity(Landroid/content/Intent;)V

    .line 27
    iget-object p1, p0, Lcom/revo/evabs/Welcome0$1;->this$0:Lcom/revo/evabs/Welcome0;

    invoke-virtual {p1}, Lcom/revo/evabs/Welcome0;->finish()V

    return-void
.end method
