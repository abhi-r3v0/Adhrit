.class public final Lo/CrashlyticsController$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/FirebaseAuth$onPostMessage;

.field private final synthetic zzb:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseAuth$onPostMessage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/CrashlyticsController$5;->zzb:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p2, p0, Lo/CrashlyticsController$5;->zza:Lcom/google/firebase/auth/FirebaseAuth$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/CrashlyticsController$5;->zza:Lcom/google/firebase/auth/FirebaseAuth$onPostMessage;

    iget-object v1, p0, Lo/CrashlyticsController$5;->zzb:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-interface {v0, v1}, Lcom/google/firebase/auth/FirebaseAuth$onPostMessage;->onAuthStateChanged(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-void
.end method
