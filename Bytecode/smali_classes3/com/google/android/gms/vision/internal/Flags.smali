.class public Lcom/google/android/gms/vision/internal/Flags;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final zzdr:Lo/setNumberEnteredListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setNumberEnteredListener<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1010
    new-instance v1, Lo/setNumberEnteredListener$ICustomTabsCallback;

    const-string v2, "vision:product_barcode_value_logging_enabled"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v0}, Lo/setNumberEnteredListener$ICustomTabsCallback;-><init>(ILjava/lang/String;Ljava/lang/Boolean;)V

    .line 3
    sput-object v1, Lcom/google/android/gms/vision/internal/Flags;->zzdr:Lo/setNumberEnteredListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
