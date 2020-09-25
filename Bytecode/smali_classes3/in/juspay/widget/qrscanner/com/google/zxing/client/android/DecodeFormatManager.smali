.class public final Lin/juspay/widget/qrscanner/com/google/zxing/client/android/DecodeFormatManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, ","

    .line 34
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/DecodeFormatManager;->b:Ljava/util/regex/Pattern;

    .line 36
    sget-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;->QR_CODE:Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/DecodeFormatManager;->a:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/DecodeFormatManager;->c:Ljava/util/Map;

    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/DecodeFormatManager;->a:Ljava/util/Set;

    const-string v2, "QR_CODE_MODE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Intent;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Set<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    const-string v0, "SCAN_FORMATS"

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/DecodeFormatManager;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SCAN_MODE"

    .line 55
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/DecodeFormatManager;->a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 60
    const-class v0, Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 62
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    invoke-static {v1}, Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lin/juspay/widget/qrscanner/com/google/zxing/BarcodeFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    nop

    :cond_1
    if-eqz p1, :cond_2

    .line 71
    sget-object p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/DecodeFormatManager;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
