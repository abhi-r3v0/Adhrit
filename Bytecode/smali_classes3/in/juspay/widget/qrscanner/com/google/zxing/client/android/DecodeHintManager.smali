.class public final Lin/juspay/widget/qrscanner/com/google/zxing/client/android/DecodeHintManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/DecodeHintManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/DecodeHintManager;->a:Ljava/lang/String;

    const-string v0, ","

    .line 39
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/DecodeHintManager;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Intent;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Map<",
            "Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 204
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 207
    :cond_0
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 209
    invoke-static {}, Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;->values()[Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 211
    sget-object v5, Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;->e:Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;

    if-eq v4, v5, :cond_2

    sget-object v5, Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;->j:Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;

    if-eq v4, v5, :cond_2

    sget-object v5, Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;->c:Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;

    if-eq v4, v5, :cond_2

    .line 217
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 218
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 219
    invoke-virtual {v4}, Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;->a()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Void;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 221
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 223
    :cond_1
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 224
    invoke-virtual {v4}, Lin/juspay/widget/qrscanner/com/google/zxing/DecodeHintType;->a()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 225
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method
