.class public final Lo/addAllInternal;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u001c\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0008\u001a\u0018\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u001a\u001e\u0010\t\u001a\u00020\u0001*\u00020\u000b2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "executeOnBackgroundThread",
        "",
        "command",
        "Ljava/lang/Runnable;",
        "measureAndLog",
        "log",
        "",
        "block",
        "Lkotlin/Function0;",
        "provideHapticFeedback",
        "context",
        "Landroid/content/Context;",
        "time",
        "",
        "duration",
        "amplitude",
        "",
        "utils_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final arg$1:Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;

.field private final arg$2:Ljava/lang/Object;

.field private final arg$3:Lcom/google/firebase/firestore/FirebaseFirestoreException;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 0

    .line 3000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/addAllInternal;->arg$1:Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;

    iput-object p2, p0, Lo/addAllInternal;->arg$2:Ljava/lang/Object;

    iput-object p3, p0, Lo/addAllInternal;->arg$3:Lcom/google/firebase/firestore/FirebaseFirestoreException;

    return-void
.end method

.method public static lambdaFactory$(Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)Ljava/lang/Runnable;
    .locals 1

    .line 5000
    new-instance v0, Lo/addAllInternal;

    invoke-direct {v0, p0, p1, p2}, Lo/addAllInternal;-><init>(Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-object v0
.end method

.method public static final onNavigationEvent(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "vibrator"

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/os/Vibrator;

    .line 16
    invoke-virtual {p0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void

    .line 15
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.os.Vibrator"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final onNavigationEvent(Landroid/content/Context;JI)V
    .locals 2

    const-string v0, "$this$provideHapticFeedback"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "vibrator"

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Landroid/os/Vibrator;

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    .line 23
    :goto_0
    invoke-static {p1, p2, p3}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void

    .line 29
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void

    .line 20
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.os.Vibrator"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onPostMessage(Lcom/google/android/gms/common/api/Status;Lo/removeBackgroundStateChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "Lo/removeBackgroundStateChangeListener<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1021
    iget v0, p0, Lcom/google/android/gms/common/api/Status;->asBinder:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2008
    iget-object p0, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-void

    .line 1006
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 2011
    iget-object p0, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p0, v0}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 4000
    iget-object v0, p0, Lo/addAllInternal;->arg$1:Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;

    iget-object v1, p0, Lo/addAllInternal;->arg$2:Ljava/lang/Object;

    iget-object v2, p0, Lo/addAllInternal;->arg$3:Lcom/google/firebase/firestore/FirebaseFirestoreException;

    invoke-static {v0, v1, v2}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;->lambda$onEvent$0(Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method
