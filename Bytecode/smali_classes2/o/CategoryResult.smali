.class public final Lo/CategoryResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private final arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

.field private final arg$2:Lo/removeBackgroundStateChangeListener;

.field private final arg$3:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/removeBackgroundStateChangeListener;Ljava/lang/Object;)V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CategoryResult;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    iput-object p2, p0, Lo/CategoryResult;->arg$2:Lo/removeBackgroundStateChangeListener;

    iput-object p3, p0, Lo/CategoryResult;->arg$3:Ljava/lang/Object;

    return-void
.end method

.method public static ICustomTabsCallback([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 8
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 11
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    .line 12
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1002
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null reference"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/removeBackgroundStateChangeListener;Ljava/lang/Object;)Lcom/google/android/gms/tasks/OnCompleteListener;
    .locals 1

    .line 4000
    new-instance v0, Lo/CategoryResult;

    invoke-direct {v0, p0, p1, p2}, Lo/CategoryResult;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/removeBackgroundStateChangeListener;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 3000
    iget-object v0, p0, Lo/CategoryResult;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    iget-object v1, p0, Lo/CategoryResult;->arg$2:Lo/removeBackgroundStateChangeListener;

    iget-object v2, p0, Lo/CategoryResult;->arg$3:Ljava/lang/Object;

    invoke-static {v0, v1, v2, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->lambda$runRpc$2(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/removeBackgroundStateChangeListener;Ljava/lang/Object;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
