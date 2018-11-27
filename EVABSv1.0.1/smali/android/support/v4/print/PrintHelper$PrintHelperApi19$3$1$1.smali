.class Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1$1;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;)V
    .locals 0

    .line 616
    iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 619
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->this$1:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;

    invoke-static {v0}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;->access$300(Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3;)V

    .line 620
    iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1$1;->this$2:Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/print/PrintHelper$PrintHelperApi19$3$1;->cancel(Z)Z

    return-void
.end method
