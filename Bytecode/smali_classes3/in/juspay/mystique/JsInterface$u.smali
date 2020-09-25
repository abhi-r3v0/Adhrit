.class final Lin/juspay/mystique/JsInterface$u;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/mystique/JsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "u"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:Ljava/lang/String;

.field e:Z

.field f:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lin/juspay/mystique/JsInterface$u;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lin/juspay/mystique/JsInterface$u;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lin/juspay/mystique/JsInterface$u;->c:I

    .line 5
    iput-object p4, p0, Lin/juspay/mystique/JsInterface$u;->d:Ljava/lang/String;

    .line 6
    iput-boolean p5, p0, Lin/juspay/mystique/JsInterface$u;->e:Z

    .line 7
    iput-object p6, p0, Lin/juspay/mystique/JsInterface$u;->f:Ljava/lang/String;

    return-void
.end method
