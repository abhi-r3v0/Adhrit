.class Lcom/revo/evabs/FileRead$1;
.super Ljava/lang/Object;
.source "FileRead.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/FileRead;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/FileRead;

.field final synthetic val$tvhint:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/revo/evabs/FileRead;Landroid/widget/TextView;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/revo/evabs/FileRead$1;->this$0:Lcom/revo/evabs/FileRead;

    iput-object p2, p0, Lcom/revo/evabs/FileRead$1;->val$tvhint:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 29
    iget-object p1, p0, Lcom/revo/evabs/FileRead$1;->val$tvhint:Landroid/widget/TextView;

    const-string v0, "Where do you store the \'assets\' of/in an APK? Maybe you could see inside the apk :)"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
