.class Lin/juspay/mystique/JsInterface$e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/mystique/JsInterface$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/juspay/mystique/JsInterface$e;


# direct methods
.method constructor <init>(Lin/juspay/mystique/JsInterface$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lin/juspay/mystique/JsInterface$e$a;->a:Lin/juspay/mystique/JsInterface$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/JsInterface$e$a;->a:Lin/juspay/mystique/JsInterface$e;

    iget-object v1, v0, Lin/juspay/mystique/JsInterface$e;->e:Lin/juspay/mystique/JsInterface;

    iget-object v2, v0, Lin/juspay/mystique/JsInterface$e;->c:[Ljava/lang/String;

    iget-object v0, v0, Lin/juspay/mystique/JsInterface$e;->d:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v0}, Lin/juspay/mystique/JsInterface;->showPopup(Landroid/view/View;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
