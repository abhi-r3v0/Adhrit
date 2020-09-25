.class Lin/juspay/mystique/DynamicUI$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/mystique/DynamicUI;->loadURL(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lin/juspay/mystique/DynamicUI;


# direct methods
.method constructor <init>(Lin/juspay/mystique/DynamicUI;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lin/juspay/mystique/DynamicUI$d;->b:Lin/juspay/mystique/DynamicUI;

    iput-object p2, p0, Lin/juspay/mystique/DynamicUI$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/DynamicUI$d;->b:Lin/juspay/mystique/DynamicUI;

    invoke-static {v0}, Lin/juspay/mystique/DynamicUI;->a(Lin/juspay/mystique/DynamicUI;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/mystique/DynamicUI$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
