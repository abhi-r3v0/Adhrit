.class Lcom/revo/evabs/CustomAccess$1;
.super Ljava/lang/Object;
.source "CustomAccess.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revo/evabs/CustomAccess;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revo/evabs/CustomAccess;


# direct methods
.method constructor <init>(Lcom/revo/evabs/CustomAccess;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/revo/evabs/CustomAccess$1;->this$0:Lcom/revo/evabs/CustomAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 24
    iget-object p1, p0, Lcom/revo/evabs/CustomAccess$1;->this$0:Lcom/revo/evabs/CustomAccess;

    invoke-static {p1}, Lcom/revo/evabs/CustomAccess;->access$000(Lcom/revo/evabs/CustomAccess;)V

    return-void
.end method
