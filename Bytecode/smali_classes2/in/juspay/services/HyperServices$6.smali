.class Lin/juspay/services/HyperServices$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/services/HyperServices;->addFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/juspay/services/HyperServices;


# direct methods
.method constructor <init>(Lin/juspay/services/HyperServices;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/services/HyperServices$6;->a:Lin/juspay/services/HyperServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    iget-object p1, p0, Lin/juspay/services/HyperServices$6;->a:Lin/juspay/services/HyperServices;

    iget-object p1, p1, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1, p2}, Lin/juspay/hypersdk/HyperFragment;->insetUpdated(Landroid/view/WindowInsets;)V

    return-object p2
.end method
