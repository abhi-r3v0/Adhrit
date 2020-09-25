.class public final Lo/CrashlyticsController$6;
.super Lo/copyStream$extraCallback;
.source ""


# instance fields
.field private final synthetic zza:Lo/copyStream$extraCallback;

.field private final synthetic zzb:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lo/copyStream$extraCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/CrashlyticsController$6;->zzb:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p2, p0, Lo/CrashlyticsController$6;->zza:Lo/copyStream$extraCallback;

    invoke-direct {p0}, Lo/copyStream$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCodeAutoRetrievalTimeOut(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onCodeSent(Ljava/lang/String;Lo/copyStream$onMessageChannelReady;)V
    .locals 1

    .line 4
    iget-object p2, p0, Lo/CrashlyticsController$6;->zza:Lo/copyStream$extraCallback;

    iget-object v0, p0, Lo/CrashlyticsController$6;->zzb:Lcom/google/firebase/auth/FirebaseAuth;

    .line 5
    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zzd(Lcom/google/firebase/auth/FirebaseAuth;)Lo/access$2500;

    move-result-object v0

    invoke-virtual {v0}, Lo/access$2500;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/copyStream;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lo/flushOrLog;

    move-result-object p1

    .line 6
    invoke-virtual {p2, p1}, Lo/copyStream$extraCallback;->onVerificationCompleted(Lo/flushOrLog;)V

    return-void
.end method

.method public final onVerificationCompleted(Lo/flushOrLog;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lo/CrashlyticsController$6;->zza:Lo/copyStream$extraCallback;

    invoke-virtual {v0, p1}, Lo/copyStream$extraCallback;->onVerificationCompleted(Lo/flushOrLog;)V

    return-void
.end method

.method public final onVerificationFailed(Lcom/google/firebase/FirebaseException;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lo/CrashlyticsController$6;->zza:Lo/copyStream$extraCallback;

    invoke-virtual {v0, p1}, Lo/copyStream$extraCallback;->onVerificationFailed(Lcom/google/firebase/FirebaseException;)V

    return-void
.end method
