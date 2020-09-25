.class Lin/juspay/mystique/Renderer$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/mystique/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lin/juspay/mystique/Renderer$a;->a:Landroid/view/ViewGroup;

    .line 3
    iput-object p2, p0, Lin/juspay/mystique/Renderer$a;->b:Landroid/view/View;

    return-void
.end method
