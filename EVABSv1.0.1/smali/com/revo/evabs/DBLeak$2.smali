.class Lcom/revo/evabs/DBLeak$2;
.super Ljava/lang/Object;
.source "DBLeak.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/DBLeak;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/DBLeak;

.field final synthetic val$tvdbhint:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/revo/evabs/DBLeak;Landroid/widget/TextView;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/revo/evabs/DBLeak$2;->this$0:Lcom/revo/evabs/DBLeak;

    iput-object p2, p0, Lcom/revo/evabs/DBLeak$2;->val$tvdbhint:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 50
    iget-object p1, p0, Lcom/revo/evabs/DBLeak$2;->val$tvdbhint:Landroid/widget/TextView;

    const-string v0, "Where are the SQLite DB files stored in an Android device?"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
