.class public abstract Lo/isAppDebuggable;
.super Lo/getTags;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getFirebaseAuth()Lcom/google/firebase/auth/FirebaseAuth;
.end method

.method public abstract getHints()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/createCipher;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSession()Lo/closeOrLog;
.end method

.method public abstract resolveSignIn(Lo/getDeviceState;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getDeviceState;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lo/isLoggingEnabled;",
            ">;"
        }
    .end annotation
.end method
