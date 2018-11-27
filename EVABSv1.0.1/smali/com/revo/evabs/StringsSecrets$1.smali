.class Lcom/revo/evabs/StringsSecrets$1;
.super Ljava/lang/Object;
.source "StringsSecrets.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/StringsSecrets;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/StringsSecrets;

.field final synthetic val$tvstrhint:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/revo/evabs/StringsSecrets;Landroid/widget/TextView;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/revo/evabs/StringsSecrets$1;->this$0:Lcom/revo/evabs/StringsSecrets;

    iput-object p2, p0, Lcom/revo/evabs/StringsSecrets$1;->val$tvstrhint:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 21
    iget-object p1, p0, Lcom/revo/evabs/StringsSecrets$1;->val$tvstrhint:Landroid/widget/TextView;

    const-string v0, "There is some place in the Android application where the strings are stored in an xml file. How to find it?"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
