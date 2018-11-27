.class Lcom/revo/evabs/Decode$1;
.super Ljava/lang/Object;
.source "Decode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/Decode;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/Decode;

.field final synthetic val$tvdecodehint:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/revo/evabs/Decode;Landroid/widget/TextView;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/revo/evabs/Decode$1;->this$0:Lcom/revo/evabs/Decode;

    iput-object p2, p0, Lcom/revo/evabs/Decode$1;->val$tvdecodehint:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 27
    iget-object p1, p0, Lcom/revo/evabs/Decode$1;->val$tvdecodehint:Landroid/widget/TextView;

    const-string v0, "Reversing APK to Java? hmmm.."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
