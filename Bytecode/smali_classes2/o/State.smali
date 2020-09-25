.class public final Lo/State;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICustomTabsCallback:Lcom/google/android/gms/common/api/Status;

.field private static final onNavigationEvent:[Lcom/google/android/gms/common/api/internal/BasePendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    const-string v2, "The connection to Google Play services was lost"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/State;->ICustomTabsCallback:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 46
    sput-object v0, Lo/State;->onNavigationEvent:[Lcom/google/android/gms/common/api/internal/BasePendingResult;

    return-void
.end method
